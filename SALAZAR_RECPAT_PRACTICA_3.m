%% DEFINICION DE LOS VECTORES CON DISTRIBUCION UNIFORME

%Se declaran los rangos para la obtencion de los pares de numeros
%Limite inferior para la generacion de los pares
a1 = 0;
%Limite superior para la generacion de los pares
b1 = 100;
%Se declara v_n_s que almacena una matriz de 1,000,000 de pares de numeros
%Se puede acceder a cada elemenento con la notacion v_n_s(x,y)
%x es el numero de par, y es la componente 1 o 2 del vector
v_n_s = unifrnd(a1,b1,10000,2);
global v_n_s_tagged;
v_n_s_tagged = v_n_s;
%Se añade a los vectores (x,y) una tercer componente que no influye
%en sus dimensiones, solo es una etiqueta que determina el cluster al
%que pertenece
for k =  1:length(v_n_s)
    v_n_s_tagged(k,3)=1;
end

fprintf("\nSE HAN GENERADO %d VECTORES\n",length(v_n_s));
fprintf("CADA UNO CON 2 ELEMENTOS\n");

%% ALGORITMO LBG CON EPSILON FIJA

%Se crea una matriz de nx3 donde cada para de elementos seran las 
%componentes de un centroide y la etiqueta de centroide de cada uno

actual_centroid = {};

%Calculo del primer centroide
c_1_x = 0;
c_1_y = 0;
%Se emplean las componentes X de cada vector para el calculo de 
%la componente X del centroide
%Se emplean las componentes Y de cada vector para el calculo de 
%la componente Y del centroide
for i=1:length(v_n_s)
    c_1_x = c_1_x + v_n_s(i,1);
    c_1_y = c_1_y + v_n_s(i,2);
end
c_1_x = c_1_x/length(v_n_s);
c_1_y = c_1_y/length(v_n_s);

%Se actualiza el primer centroide
temp_cent = [c_1_x,c_1_y,1];
%Variable que almacena los centroides actuales
actual_centroid{1} = temp_cent;

fprintf("\nPRIMER CENTROIDE:\n");
fprintf("(%f,%f)\n",actual_centroid{1}(1),actual_centroid{1}(2));

%Se debe obtener mediante un ciclo los n centroides deseados
%Dentro de este mismo se debe emplear un ciclo para la estabilizacion 
%de los centroides usando la distancia global 

%Se declaran los epsilon que seran empleados
epsilon_1 = [0  0.001 0];
epsilon_2 = [0 -0.001 0];

%Descomentando estas lineas se obtienen epsilons aleatorios
%a_1 = 0.0;
%b_1 = 0.1;
%epsilon_1 = (b_1-a_1).*rand(1,2) + a_1;
%epsilon_2 = (b_1-a_1).*rand(1,2) + a_1;
%epsilon_1(3) = 0;
%epsilon_2(3) = 0;

%Variable empleada para determinar el numero de ciclos que generaran los
%centroides, por ejemplo, para 8 centroides se necesitan 3 ciclos
potencia_n = 8;

%Ciclo empleado para generar los n centroides
for n = 1:potencia_n
    %Se realiza el paso de los centroides actuales para obtener los nuevos 
    %centroides
    actual_centroid = new_centroides(actual_centroid,epsilon_1,epsilon_2);
    %Ciclo mediante el cual se estabilizaran los centroides
    %Se declara el valor de epsilon que se desea para estabilizar los
    %centroides
    epsilon = 0.01;
    %Se declaran los valores de distancia global actual y anterior
    dist_global_act = 0;
    dist_global_ant = 100;
    iteraciones = 0;
    %Mientras no se cumpla que la distancia global actual menos
    %la anterior sea menor que epsilon se reetiquetaran vectores
    %y se recalcularan centroides
    while(abs(dist_global_act-dist_global_ant)>= epsilon)
       %Se etiquetan vectores con respecto a los centroides
       vect_tag(actual_centroid);
       %Se recalculan centroides
       actual_centroid = rec_centroides(actual_centroid);
       dist_global_ant = dist_global_act;
       %Se calcula la distancia global
       dist_global_act = dist_min(actual_centroid);
       iteraciones = iteraciones + 1;
    end
    fprintf("\nSE HAN REALIZADO %d ITERACIONES\n",iteraciones);
end
%%

%Grafica
for x = 1:length(v_n_s_tagged)
    values_x(x) = v_n_s_tagged(x,1);
    values_y(x) = v_n_s_tagged(x,2);
    values_tag(x) = v_n_s_tagged(x,3);
end

gscatter(values_x,values_y,values_tag);

%% FUNCIONES EMPLEADAS PARA EL FUNCIONAMIENTO DE LA PRACTICA

function array_new_cent = new_centroides(cent_actuales,epsilon_1,epsilon_2)
    %Se obtiene el numero de centroides
    n = length(cent_actuales);
    %Se inicializan las etiquetas a 0
    for x = 1:n
        cent_actuales{x}(3) = 0;
    end
    %Arreglo vacio que almacenara los nuevos centroides generados
    %Se inicializa con 0's para poder almacenarlos de forma sencilla
    %tambien se les agrega una etiqueta que representa el numero
    %de centroide
    for x = 1:2*n
        array_new_cent{x} = [0.0 0.0 x];
    end
    %Se calcula el siguiente par de centroides usando las epsilon
    fprintf("\nSE HAN RECIBIDO %d CENTROIDES\n",n);
    fprintf("SE CALCULARAN %d NUEVOS CENTROIDES",2*n);
    %Por cada centroide se crean dos centroides nuevos sumando epsilon_1
    %y epsilon_2 a cada centroide;
    for x = 1:n
        %Se toman los valores del centroide
        var_cent = cent_actuales{x};
        %Se genera un centroide sumando epsilon_1
        var_cent_1 = var_cent + epsilon_1;
        %Se genera un centroide sumando epsilon_2
        var_cent_2 = var_cent + epsilon_2;
        array_new_cent{x} = array_new_cent{x}+var_cent_1;
        array_new_cent{x+n} = array_new_cent{x+n}+var_cent_2;
    end
end

function vect_tag(cent_actuales)
    %Se accede a la variable global v_n_s_tagged
    global v_n_s_tagged;
    %Para cada vector se calculara la distancia con respecto a cada
    %centroide esto con el fin de etiquetarlos
    for j = 1:length(v_n_s_tagged)
        %Se toman los valores x,y de cada vector
        vect_coor = [v_n_s_tagged(j,1),v_n_s_tagged(j,2)];
        %Se inicializa la distancia minima con respecto al primer centroide
        cent_coor = [cent_actuales{1}(1),cent_actuales{1}(2)];
        dist_minima_vector = pdist2(vect_coor,cent_coor);
        %Igualmente se inicializa la etiqueta que se le asignara al vector
        %tras las comparaciones
        tag_actual = 1; 
        %Ciclo para calcular la distancia de este vector al centroide k
        for k = 2:length(cent_actuales)
            %Se toman las coordenadas del nuevo centroide
            cent_coor = [cent_actuales{k}(1),cent_actuales{k}(2)];
            dist_cent_actual =  pdist2(vect_coor,cent_coor);
            %Si la distancia calculada con respecto al vector actual
            %es menor que la anterior se actualiza tanto la distancia
            %minima como la etiqueta para el vector
            if dist_cent_actual < dist_minima_vector
                dist_minima_vector = dist_cent_actual;
                tag_actual = cent_actuales{k}(3);
            end
        end
        %Se le asigna el tag_actual al vector dentro de v_n_s tagged
        v_n_s_tagged(j,3)= tag_actual; 
    end
end

function centroid_recalc = rec_centroides(cent_actuales)
    %Se inicializa un arreglo donde se llevara a cabo la suma de los
    %valores para cada centroide, se mantienen la etiqueta
    global v_n_s_tagged;
    centroid_recalc = {};
    sum_cent = {};
    for x = 1:length(cent_actuales)
        centroid_recalc{x} = [0 0 cent_actuales{x}(3)];
        %Se inicializan los valores para las sumas en 0, la ultima variable
        %lleva la cuenta de los vectores asociados a cada tag
        sum_cent{x} = [0 0 0];
    end
    %Mediante los vectores ya etiquetados se recalculan los centroides
    for y = 1:length(v_n_s_tagged)
        %Se obtiene la etiqueta del vector actual
        tag_cent = v_n_s_tagged(y,3);
        %A la celda tag_cent se le suman los valores x y y de cada vector
        sum_cent{tag_cent}(1) = sum_cent{tag_cent}(1) + v_n_s_tagged(y,1);
        sum_cent{tag_cent}(2) = sum_cent{tag_cent}(2) + v_n_s_tagged(y,2);
        %Se incrementa el numero de vectores asociados al centroide
        sum_cent{tag_cent}(3) = sum_cent{tag_cent}(3) + 1;
    end
    %Se divide el total de la suma entre el numero de vectores asociados
    for k = 1:length(centroid_recalc)
        num_vect = sum_cent{k}(3);
        val_new_cent = [sum_cent{k}(1)/num_vect,sum_cent{k}(2)/num_vect,0];
        centroid_recalc{k} = centroid_recalc{k} + val_new_cent;
    end
end

function distancia_minima = dist_min(cent_actuales) 
    %Para cada centroide se calcula la distancia minima de entre todos los
    %vectores que estan representados por el
    %Se declara un arreglo que almacenara la distancia minima respecto a
    %cada centroide,se declara una distancia minima de 100000 para realizar
    %la comparacion inicial
    distancia_minima = 0;
    distancias_minimas = [];
    for x = 1:length(cent_actuales)
        distancias_minimas(x) = 10000000;
    end
    %Para cada vector se calcula la distancia con respecto a su
    %centroide y se verifica si esta es menor que la anterior
    global v_n_s_tagged;
    for y = 1:length(v_n_s_tagged)
        %Se calcula la distancia de este vector con respecto a su
        %centroide empleando la etiqueta
        tag_vector = v_n_s_tagged(y,3);
        %Se obtienen las coordenadas del centroide con ayuda del tag
        cent_coor = [cent_actuales{tag_vector}(1),cent_actuales{tag_vector}(2)];
        %Se obtienen las coordenadas del vector
        vect_coor = [v_n_s_tagged(y,1),v_n_s_tagged(y,2)];
        dist_cent_actual =  pdist2(vect_coor,cent_coor);
        %Se verifica si la distancia calculada es menor a la almacenada
        %para este centroide
        if dist_cent_actual < distancias_minimas(tag_vector)
            distancias_minimas(tag_vector)= dist_cent_actual;
        end
    end
    %Una vez que se han verificado todos los vectores se tiene un vector
    %que contiene las distancias minimas con respecto a cada centroide
    %Se realiza la comparacion de estos valores y se devuelve la minima
    %distancia
    distancia_minima = distancias_minimas(1);
    for x = 2:length(distancias_minimas)
        if distancias_minimas(x)<distancia_minima
            distancia_minima = distancias_minimas(x);
        end
    end
end
