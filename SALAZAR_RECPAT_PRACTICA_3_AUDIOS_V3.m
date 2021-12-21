%% 1. PROCESAMIENTO DE LOS ARCHIVOS DE AUDIO PARA EL AUDIO DICIENDO "UNO"
% ESTO SE DEBE HACER PARA CADA UNO DE LOS 15 ARCHIVOS DEL AUDIO "UNO"

%SE DECLARAN LOS ARREGLOS NECESARIOS PARA ALMACENAR LOS VALORES
%EN ESTE CASO SOLO NOS INTERESA OBTENER LOS COEFICIENTES ai ASI QUE
%SE PUEDEN REUTILIZAR ALGUNOS DE LOS ARREGLOS ASEGURANDO MANTENER
%LOS ARREGLOS DE COEFICIENTES PARA CADA UNA DE LAS MUESTRAS

%% Declaracion de variables globales

global cuantizador_audio_1;
global cuantizador_audio_2;
global cuantizador_audio_3;
global cuantizador_audio_4;
global cuantizador_audio_5;
global cuantizador_audio_6;
global cuantizador_audio_7;
global cuantizador_audio_8;
global cuantizador_audio_9;
global cuantizador_audio_10;

%% MUESTRAS DE AUDIO 1
%VARIABLES QUE ALMACENAN LAS MUESTRAS DE AUDIO
[y_1,Fs_1] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_1\AUDIO_1_1.wav');
[y_2,Fs_2] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_1\AUDIO_1_2.wav');
[y_3,Fs_3] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_1\AUDIO_1_3.wav');
[y_4,Fs_4] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_1\AUDIO_1_4.wav');
[y_5,Fs_5] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_1\AUDIO_1_5.wav');
[y_6,Fs_6] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_1\AUDIO_1_6.wav');
[y_7,Fs_7] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_1\AUDIO_1_7.wav');
[y_8,Fs_8] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_1\AUDIO_1_8.wav');
[y_9,Fs_9] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_1\AUDIO_1_9.wav');
[y_10,Fs_10] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_1\AUDIO_1_10.wav');
%Para cada señal de voz se obtienen el vector de correlacion y el vector de
%coeficientes
[corr_bloques_1_1,coef_bloques_1_1] = procesamiento_audio(y_1);
[corr_bloques_1_2,coef_bloques_1_2] = procesamiento_audio(y_2);
[corr_bloques_1_3,coef_bloques_1_3] = procesamiento_audio(y_3);
[corr_bloques_1_4,coef_bloques_1_4] = procesamiento_audio(y_4);
[corr_bloques_1_5,coef_bloques_1_5] = procesamiento_audio(y_5);
[corr_bloques_1_6,coef_bloques_1_6] = procesamiento_audio(y_6);
[corr_bloques_1_7,coef_bloques_1_7] = procesamiento_audio(y_7);
[corr_bloques_1_8,coef_bloques_1_8] = procesamiento_audio(y_8);
[corr_bloques_1_9,coef_bloques_1_9] = procesamiento_audio(y_9);
[corr_bloques_1_10,coef_bloques_1_10] = procesamiento_audio(y_10);
%Se genera un arreglo que contiene todo los vectores de correlacion de 
%un conjunto de audios
vect_corr_1 = unir_vect_corr(corr_bloques_1_1,corr_bloques_1_2);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_3);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_4);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_5);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_6);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_7);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_8);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_9);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_10);
%Se agrega el elemento tag que permitira identificar a que
%centroide estan asociados
v_corr_1_tagged = vect_corr_1;
for k =  1:length(v_corr_1_tagged)
    v_corr_1_tagged{k}(14)=1;
end

%% APLICACION DEL ALGORITMO LBG PARA LAS MUESTRAS DEL AUDIO_1

cuantizador_audio_1 = get_cuantizador(v_corr_1_tagged);

%% MUESTRAS DE AUDIO 2
%VARIABLES QUE ALMACENAN LAS MUESTRAS DE AUDIO
[y_1,Fs_1] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_2\AUDIO_2_1.wav');
[y_2,Fs_2] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_2\AUDIO_2_2.wav');
[y_3,Fs_3] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_2\AUDIO_2_3.wav');
[y_4,Fs_4] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_2\AUDIO_2_4.wav');
[y_5,Fs_5] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_2\AUDIO_2_5.wav');
[y_6,Fs_6] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_2\AUDIO_2_6.wav');
[y_7,Fs_7] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_2\AUDIO_2_7.wav');
[y_8,Fs_8] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_2\AUDIO_2_8.wav');
[y_9,Fs_9] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_2\AUDIO_2_9.wav');
[y_10,Fs_10] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_2\AUDIO_2_10.wav');
%Para cada señal de voz se obtienen el vector de correlacion y el vector de
%coeficientes
[corr_bloques_1_1,coef_bloques_1_1] = procesamiento_audio(y_1);
[corr_bloques_1_2,coef_bloques_1_2] = procesamiento_audio(y_2);
[corr_bloques_1_3,coef_bloques_1_3] = procesamiento_audio(y_3);
[corr_bloques_1_4,coef_bloques_1_4] = procesamiento_audio(y_4);
[corr_bloques_1_5,coef_bloques_1_5] = procesamiento_audio(y_5);
[corr_bloques_1_6,coef_bloques_1_6] = procesamiento_audio(y_6);
[corr_bloques_1_7,coef_bloques_1_7] = procesamiento_audio(y_7);
[corr_bloques_1_8,coef_bloques_1_8] = procesamiento_audio(y_8);
[corr_bloques_1_9,coef_bloques_1_9] = procesamiento_audio(y_9);
[corr_bloques_1_10,coef_bloques_1_10] = procesamiento_audio(y_10);
%Se genera un arreglo que contiene todo los vectores de correlacion de 
%un conjunto de audios
vect_corr_1 = unir_vect_corr(corr_bloques_1_1,corr_bloques_1_2);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_3);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_4);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_5);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_6);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_7);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_8);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_9);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_10);
%Se agrega el elemento tag que permitira identificar a que
%centroide estan asociados
v_corr_1_tagged = vect_corr_1;
for k =  1:length(v_corr_1_tagged)
    v_corr_1_tagged{k}(14)=1;
end

%% APLICACION DEL ALGORITMO LBG PARA LAS MUESTRAS DEL AUDIO_2

cuantizador_audio_2 = get_cuantizador(v_corr_1_tagged);

%% MUESTRAS DE AUDIO 3
%VARIABLES QUE ALMACENAN LAS MUESTRAS DE AUDIO
[y_1,Fs_1] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_3\AUDIO_3_1.wav');
[y_2,Fs_2] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_3\AUDIO_3_2.wav');
[y_3,Fs_3] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_3\AUDIO_3_3.wav');
[y_4,Fs_4] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_3\AUDIO_3_4.wav');
[y_5,Fs_5] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_3\AUDIO_3_5.wav');
[y_6,Fs_6] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_3\AUDIO_3_6.wav');
[y_7,Fs_7] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_3\AUDIO_3_7.wav');
[y_8,Fs_8] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_3\AUDIO_3_8.wav');
[y_9,Fs_9] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_3\AUDIO_3_9.wav');
[y_10,Fs_10] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_3\AUDIO_3_10.wav');
%Para cada señal de voz se obtienen el vector de correlacion y el vector de
%coeficientes
[corr_bloques_1_1,coef_bloques_1_1] = procesamiento_audio(y_1);
[corr_bloques_1_2,coef_bloques_1_2] = procesamiento_audio(y_2);
[corr_bloques_1_3,coef_bloques_1_3] = procesamiento_audio(y_3);
[corr_bloques_1_4,coef_bloques_1_4] = procesamiento_audio(y_4);
[corr_bloques_1_5,coef_bloques_1_5] = procesamiento_audio(y_5);
[corr_bloques_1_6,coef_bloques_1_6] = procesamiento_audio(y_6);
[corr_bloques_1_7,coef_bloques_1_7] = procesamiento_audio(y_7);
[corr_bloques_1_8,coef_bloques_1_8] = procesamiento_audio(y_8);
[corr_bloques_1_9,coef_bloques_1_9] = procesamiento_audio(y_9);
[corr_bloques_1_10,coef_bloques_1_10] = procesamiento_audio(y_10);
%Se genera un arreglo que contiene todo los vectores de correlacion de 
%un conjunto de audios
vect_corr_1 = unir_vect_corr(corr_bloques_1_1,corr_bloques_1_2);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_3);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_4);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_5);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_6);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_7);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_8);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_9);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_10);
%Se agrega el elemento tag que permitira identificar a que
%centroide estan asociados
v_corr_1_tagged = vect_corr_1;
for k =  1:length(v_corr_1_tagged)
    v_corr_1_tagged{k}(14)=1;
end

%% APLICACION DEL ALGORITMO LBG PARA LAS MUESTRAS DEL AUDIO_3

cuantizador_audio_3 = get_cuantizador(v_corr_1_tagged);

%% MUESTRAS DE AUDIO 4
%VARIABLES QUE ALMACENAN LAS MUESTRAS DE AUDIO
[y_1,Fs_1] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_4\AUDIO_4_1.wav');
[y_2,Fs_2] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_4\AUDIO_4_2.wav');
[y_3,Fs_3] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_4\AUDIO_4_3.wav');
[y_4,Fs_4] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_4\AUDIO_4_4.wav');
[y_5,Fs_5] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_4\AUDIO_4_5.wav');
[y_6,Fs_6] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_4\AUDIO_4_6.wav');
[y_7,Fs_7] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_4\AUDIO_4_7.wav');
[y_8,Fs_8] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_4\AUDIO_4_8.wav');
[y_9,Fs_9] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_4\AUDIO_4_9.wav');
[y_10,Fs_10] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_4\AUDIO_4_10.wav');
%Para cada señal de voz se obtienen el vector de correlacion y el vector de
%coeficientes
[corr_bloques_1_1,coef_bloques_1_1] = procesamiento_audio(y_1);
[corr_bloques_1_2,coef_bloques_1_2] = procesamiento_audio(y_2);
[corr_bloques_1_3,coef_bloques_1_3] = procesamiento_audio(y_3);
[corr_bloques_1_4,coef_bloques_1_4] = procesamiento_audio(y_4);
[corr_bloques_1_5,coef_bloques_1_5] = procesamiento_audio(y_5);
[corr_bloques_1_6,coef_bloques_1_6] = procesamiento_audio(y_6);
[corr_bloques_1_7,coef_bloques_1_7] = procesamiento_audio(y_7);
[corr_bloques_1_8,coef_bloques_1_8] = procesamiento_audio(y_8);
[corr_bloques_1_9,coef_bloques_1_9] = procesamiento_audio(y_9);
[corr_bloques_1_10,coef_bloques_1_10] = procesamiento_audio(y_10);
%Se genera un arreglo que contiene todo los vectores de correlacion de 
%un conjunto de audios
vect_corr_1 = unir_vect_corr(corr_bloques_1_1,corr_bloques_1_2);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_3);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_4);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_5);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_6);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_7);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_8);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_9);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_10);
%Se agrega el elemento tag que permitira identificar a que
%centroide estan asociados
v_corr_1_tagged = vect_corr_1;
for k =  1:length(v_corr_1_tagged)
    v_corr_1_tagged{k}(14)=1;
end

%% APLICACION DEL ALGORITMO LBG PARA LAS MUESTRAS DEL AUDIO_4

cuantizador_audio_4 = get_cuantizador(v_corr_1_tagged);

%% MUESTRAS DE AUDIO 5
%VARIABLES QUE ALMACENAN LAS MUESTRAS DE AUDIO
[y_1,Fs_1] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_5\AUDIO_5_1.wav');
[y_2,Fs_2] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_5\AUDIO_5_2.wav');
[y_3,Fs_3] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_5\AUDIO_5_3.wav');
[y_4,Fs_4] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_5\AUDIO_5_4.wav');
[y_5,Fs_5] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_5\AUDIO_5_5.wav');
[y_6,Fs_6] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_5\AUDIO_5_6.wav');
[y_7,Fs_7] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_5\AUDIO_5_7.wav');
[y_8,Fs_8] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_5\AUDIO_5_8.wav');
[y_9,Fs_9] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_5\AUDIO_5_9.wav');
[y_10,Fs_10] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_5\AUDIO_5_10.wav');
%Para cada señal de voz se obtienen el vector de correlacion y el vector de
%coeficientes
[corr_bloques_1_1,coef_bloques_1_1] = procesamiento_audio(y_1);
[corr_bloques_1_2,coef_bloques_1_2] = procesamiento_audio(y_2);
[corr_bloques_1_3,coef_bloques_1_3] = procesamiento_audio(y_3);
[corr_bloques_1_4,coef_bloques_1_4] = procesamiento_audio(y_4);
[corr_bloques_1_5,coef_bloques_1_5] = procesamiento_audio(y_5);
[corr_bloques_1_6,coef_bloques_1_6] = procesamiento_audio(y_6);
[corr_bloques_1_7,coef_bloques_1_7] = procesamiento_audio(y_7);
[corr_bloques_1_8,coef_bloques_1_8] = procesamiento_audio(y_8);
[corr_bloques_1_9,coef_bloques_1_9] = procesamiento_audio(y_9);
[corr_bloques_1_10,coef_bloques_1_10] = procesamiento_audio(y_10);
%Se genera un arreglo que contiene todo los vectores de correlacion de 
%un conjunto de audios
vect_corr_1 = unir_vect_corr(corr_bloques_1_1,corr_bloques_1_2);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_3);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_4);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_5);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_6);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_7);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_8);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_9);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_10);
%Se agrega el elemento tag que permitira identificar a que
%centroide estan asociados
v_corr_1_tagged = vect_corr_1;
for k =  1:length(v_corr_1_tagged)
    v_corr_1_tagged{k}(14)=1;
end

%% APLICACION DEL ALGORITMO LBG PARA LAS MUESTRAS DEL AUDIO_5

cuantizador_audio_5 = get_cuantizador(v_corr_1_tagged);

%% MUESTRAS DE AUDIO 6
%VARIABLES QUE ALMACENAN LAS MUESTRAS DE AUDIO
[y_1,Fs_1] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_6\AUDIO_6_1.wav');
[y_2,Fs_2] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_6\AUDIO_6_2.wav');
[y_3,Fs_3] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_6\AUDIO_6_3.wav');
[y_4,Fs_4] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_6\AUDIO_6_4.wav');
[y_5,Fs_5] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_6\AUDIO_6_5.wav');
[y_6,Fs_6] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_6\AUDIO_6_6.wav');
[y_7,Fs_7] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_6\AUDIO_6_7.wav');
[y_8,Fs_8] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_6\AUDIO_6_8.wav');
[y_9,Fs_9] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_6\AUDIO_6_9.wav');
[y_10,Fs_10] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_6\AUDIO_6_10.wav');
%Para cada señal de voz se obtienen el vector de correlacion y el vector de
%coeficientes
[corr_bloques_1_1,coef_bloques_1_1] = procesamiento_audio(y_1);
[corr_bloques_1_2,coef_bloques_1_2] = procesamiento_audio(y_2);
[corr_bloques_1_3,coef_bloques_1_3] = procesamiento_audio(y_3);
[corr_bloques_1_4,coef_bloques_1_4] = procesamiento_audio(y_4);
[corr_bloques_1_5,coef_bloques_1_5] = procesamiento_audio(y_5);
[corr_bloques_1_6,coef_bloques_1_6] = procesamiento_audio(y_6);
[corr_bloques_1_7,coef_bloques_1_7] = procesamiento_audio(y_7);
[corr_bloques_1_8,coef_bloques_1_8] = procesamiento_audio(y_8);
[corr_bloques_1_9,coef_bloques_1_9] = procesamiento_audio(y_9);
[corr_bloques_1_10,coef_bloques_1_10] = procesamiento_audio(y_10);
%Se genera un arreglo que contiene todo los vectores de correlacion de 
%un conjunto de audios
vect_corr_1 = unir_vect_corr(corr_bloques_1_1,corr_bloques_1_2);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_3);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_4);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_5);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_6);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_7);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_8);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_9);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_10);
%Se agrega el elemento tag que permitira identificar a que
%centroide estan asociados
v_corr_1_tagged = vect_corr_1;
for k =  1:length(v_corr_1_tagged)
    v_corr_1_tagged{k}(14)=1;
end

%% APLICACION DEL ALGORITMO LBG PARA LAS MUESTRAS DEL AUDIO_6

cuantizador_audio_6 = get_cuantizador(v_corr_1_tagged);

%% MUESTRAS DE AUDIO 7
%VARIABLES QUE ALMACENAN LAS MUESTRAS DE AUDIO
[y_1,Fs_1] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_7\AUDIO_7_1.wav');
[y_2,Fs_2] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_7\AUDIO_7_2.wav');
[y_3,Fs_3] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_7\AUDIO_7_3.wav');
[y_4,Fs_4] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_7\AUDIO_7_4.wav');
[y_5,Fs_5] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_7\AUDIO_7_5.wav');
[y_6,Fs_6] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_7\AUDIO_7_6.wav');
[y_7,Fs_7] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_7\AUDIO_7_7.wav');
[y_8,Fs_8] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_7\AUDIO_7_8.wav');
[y_9,Fs_9] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_7\AUDIO_7_9.wav');
[y_10,Fs_10] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_7\AUDIO_7_10.wav');
%Para cada señal de voz se obtienen el vector de correlacion y el vector de
%coeficientes
[corr_bloques_1_1,coef_bloques_1_1] = procesamiento_audio(y_1);
[corr_bloques_1_2,coef_bloques_1_2] = procesamiento_audio(y_2);
[corr_bloques_1_3,coef_bloques_1_3] = procesamiento_audio(y_3);
[corr_bloques_1_4,coef_bloques_1_4] = procesamiento_audio(y_4);
[corr_bloques_1_5,coef_bloques_1_5] = procesamiento_audio(y_5);
[corr_bloques_1_6,coef_bloques_1_6] = procesamiento_audio(y_6);
[corr_bloques_1_7,coef_bloques_1_7] = procesamiento_audio(y_7);
[corr_bloques_1_8,coef_bloques_1_8] = procesamiento_audio(y_8);
[corr_bloques_1_9,coef_bloques_1_9] = procesamiento_audio(y_9);
[corr_bloques_1_10,coef_bloques_1_10] = procesamiento_audio(y_10);
%Se genera un arreglo que contiene todo los vectores de correlacion de 
%un conjunto de audios
vect_corr_1 = unir_vect_corr(corr_bloques_1_1,corr_bloques_1_2);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_3);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_4);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_5);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_6);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_7);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_8);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_9);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_10);
%Se agrega el elemento tag que permitira identificar a que
%centroide estan asociados
v_corr_1_tagged = vect_corr_1;
for k =  1:length(v_corr_1_tagged)
    v_corr_1_tagged{k}(14)=1;
end

%% APLICACION DEL ALGORITMO LBG PARA LAS MUESTRAS DEL AUDIO_7

cuantizador_audio_7 = get_cuantizador(v_corr_1_tagged);

%% MUESTRAS DE AUDIO 8
%VARIABLES QUE ALMACENAN LAS MUESTRAS DE AUDIO
[y_1,Fs_1] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_8\AUDIO_8_1.wav');
[y_2,Fs_2] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_8\AUDIO_8_2.wav');
[y_3,Fs_3] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_8\AUDIO_8_3.wav');
[y_4,Fs_4] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_8\AUDIO_8_4.wav');
[y_5,Fs_5] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_8\AUDIO_8_5.wav');
[y_6,Fs_6] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_8\AUDIO_8_6.wav');
[y_7,Fs_7] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_8\AUDIO_8_7.wav');
[y_8,Fs_8] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_8\AUDIO_8_8.wav');
[y_9,Fs_9] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_8\AUDIO_8_9.wav');
[y_10,Fs_10] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_8\AUDIO_8_10.wav');
%Para cada señal de voz se obtienen el vector de correlacion y el vector de
%coeficientes
[corr_bloques_1_1,coef_bloques_1_1] = procesamiento_audio(y_1);
[corr_bloques_1_2,coef_bloques_1_2] = procesamiento_audio(y_2);
[corr_bloques_1_3,coef_bloques_1_3] = procesamiento_audio(y_3);
[corr_bloques_1_4,coef_bloques_1_4] = procesamiento_audio(y_4);
[corr_bloques_1_5,coef_bloques_1_5] = procesamiento_audio(y_5);
[corr_bloques_1_6,coef_bloques_1_6] = procesamiento_audio(y_6);
[corr_bloques_1_7,coef_bloques_1_7] = procesamiento_audio(y_7);
[corr_bloques_1_8,coef_bloques_1_8] = procesamiento_audio(y_8);
[corr_bloques_1_9,coef_bloques_1_9] = procesamiento_audio(y_9);
[corr_bloques_1_10,coef_bloques_1_10] = procesamiento_audio(y_10);
%Se genera un arreglo que contiene todo los vectores de correlacion de 
%un conjunto de audios
vect_corr_1 = unir_vect_corr(corr_bloques_1_1,corr_bloques_1_2);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_3);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_4);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_5);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_6);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_7);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_8);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_9);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_10);
%Se agrega el elemento tag que permitira identificar a que
%centroide estan asociados
v_corr_1_tagged = vect_corr_1;
for k =  1:length(v_corr_1_tagged)
    v_corr_1_tagged{k}(14)=1;
end

%% APLICACION DEL ALGORITMO LBG PARA LAS MUESTRAS DEL AUDIO_8

cuantizador_audio_8 = get_cuantizador(v_corr_1_tagged);

%% MUESTRAS DE AUDIO 9
%VARIABLES QUE ALMACENAN LAS MUESTRAS DE AUDIO
[y_1,Fs_1] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_9\AUDIO_9_1.wav');
[y_2,Fs_2] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_9\AUDIO_9_2.wav');
[y_3,Fs_3] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_9\AUDIO_9_3.wav');
[y_4,Fs_4] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_9\AUDIO_9_4.wav');
[y_5,Fs_5] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_9\AUDIO_9_5.wav');
[y_6,Fs_6] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_9\AUDIO_9_6.wav');
[y_7,Fs_7] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_9\AUDIO_9_7.wav');
[y_8,Fs_8] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_9\AUDIO_9_8.wav');
[y_9,Fs_9] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_9\AUDIO_9_9.wav');
[y_10,Fs_10] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_9\AUDIO_9_10.wav');
%Para cada señal de voz se obtienen el vector de correlacion y el vector de
%coeficientes
[corr_bloques_1_1,coef_bloques_1_1] = procesamiento_audio(y_1);
[corr_bloques_1_2,coef_bloques_1_2] = procesamiento_audio(y_2);
[corr_bloques_1_3,coef_bloques_1_3] = procesamiento_audio(y_3);
[corr_bloques_1_4,coef_bloques_1_4] = procesamiento_audio(y_4);
[corr_bloques_1_5,coef_bloques_1_5] = procesamiento_audio(y_5);
[corr_bloques_1_6,coef_bloques_1_6] = procesamiento_audio(y_6);
[corr_bloques_1_7,coef_bloques_1_7] = procesamiento_audio(y_7);
[corr_bloques_1_8,coef_bloques_1_8] = procesamiento_audio(y_8);
[corr_bloques_1_9,coef_bloques_1_9] = procesamiento_audio(y_9);
[corr_bloques_1_10,coef_bloques_1_10] = procesamiento_audio(y_10);
%Se genera un arreglo que contiene todo los vectores de correlacion de 
%un conjunto de audios
vect_corr_1 = unir_vect_corr(corr_bloques_1_1,corr_bloques_1_2);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_3);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_4);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_5);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_6);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_7);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_8);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_9);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_10);
%Se agrega el elemento tag que permitira identificar a que
%centroide estan asociados
v_corr_1_tagged = vect_corr_1;
for k =  1:length(v_corr_1_tagged)
    v_corr_1_tagged{k}(14)=1;
end

%% APLICACION DEL ALGORITMO LBG PARA LAS MUESTRAS DEL AUDIO_9

cuantizador_audio_9 = get_cuantizador(v_corr_1_tagged);

%% MUESTRAS DE AUDIO 10
%VARIABLES QUE ALMACENAN LAS MUESTRAS DE AUDIO
[y_1,Fs_1] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_10\AUDIO_10_1.wav');
[y_2,Fs_2] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_10\AUDIO_10_2.wav');
[y_3,Fs_3] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_10\AUDIO_10_3.wav');
[y_4,Fs_4] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_10\AUDIO_10_4.wav');
[y_5,Fs_5] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_10\AUDIO_10_5.wav');
[y_6,Fs_6] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_10\AUDIO_10_6.wav');
[y_7,Fs_7] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_10\AUDIO_10_7.wav');
[y_8,Fs_8] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_10\AUDIO_10_8.wav');
[y_9,Fs_9] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_10\AUDIO_10_9.wav');
[y_10,Fs_10] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_10\AUDIO_10_10.wav');
%Para cada señal de voz se obtienen el vector de correlacion y el vector de
%coeficientes
[corr_bloques_1_1,coef_bloques_1_1] = procesamiento_audio(y_1);
[corr_bloques_1_2,coef_bloques_1_2] = procesamiento_audio(y_2);
[corr_bloques_1_3,coef_bloques_1_3] = procesamiento_audio(y_3);
[corr_bloques_1_4,coef_bloques_1_4] = procesamiento_audio(y_4);
[corr_bloques_1_5,coef_bloques_1_5] = procesamiento_audio(y_5);
[corr_bloques_1_6,coef_bloques_1_6] = procesamiento_audio(y_6);
[corr_bloques_1_7,coef_bloques_1_7] = procesamiento_audio(y_7);
[corr_bloques_1_8,coef_bloques_1_8] = procesamiento_audio(y_8);
[corr_bloques_1_9,coef_bloques_1_9] = procesamiento_audio(y_9);
[corr_bloques_1_10,coef_bloques_1_10] = procesamiento_audio(y_10);
%Se genera un arreglo que contiene todo los vectores de correlacion de 
%un conjunto de audios
vect_corr_1 = unir_vect_corr(corr_bloques_1_1,corr_bloques_1_2);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_3);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_4);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_5);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_6);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_7);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_8);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_9);
vect_corr_1 = unir_vect_corr(vect_corr_1,corr_bloques_1_10);
%Se agrega el elemento tag que permitira identificar a que
%centroide estan asociados
v_corr_1_tagged = vect_corr_1;
for k =  1:length(v_corr_1_tagged)
    v_corr_1_tagged{k}(14)=1;
end

%% APLICACION DEL ALGORITMO LBG PARA LAS MUESTRAS DEL AUDIO_10

cuantizador_audio_10 = get_cuantizador(v_corr_1_tagged);


%% SE DECLARA LA MATRIZ DE CONFUSION 10x10 LLENA DE 0'S

matriz_conf = zeros(10);

%% SECCION DE COMPARACION DE LOS 5 AUDIOS DE PRUEBA RESTANTES PARA EL AUDIO 1

renglon = 10;

%Para el audio que sera probado se obtienen los vectores de correlacion 
%mediante el procesamiento de audio
[y_x,Fs_x] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_10\AUDIO_10_15.wav');
sound(y_x,Fs_x);
[corr_bloques_x,coef_bloques_x] = procesamiento_audio(y_x);

%Se obtiene el arreglo que contiene las distancias minimas para este audio
distancias_m_1 = comparacion_voz(corr_bloques_x);

%Se obtiene el acumulado de las distancias minimas de todos los bloques.
dist_acumulada_m_1 = dist_acumulada(distancias_m_1,10);
dist_acumulada_m_1

%Se obtiene el indice asociado al minimo valor acumulado, por ejemplo
%si el valor minimo del arreglo esta en el indice 1 significa que
%el audio procesado corresponde con el audio 1
correspondencia = get_indice(dist_acumulada_m_1,10);
fprintf("EL AUDIO PROCESADO CORRESPONDE CON EL CUANTIZADOR DEL NUMERO %d\n",correspondencia);

%Se incrementa en la matriz de confusion el renglon y columna adecuado
matriz_conf(renglon,correspondencia)= matriz_conf(renglon,correspondencia)+1;

%%
[y_x,Fs_x] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_1\AUDIO_1_12.wav');
sound(y_x,Fs_x);
[corr_bloques_x,coef_bloques_x] = procesamiento_audio(y_x);
distancias_m_1 = comparacion_voz(corr_bloques_x);
dist_acumulada_m_1 = dist_acumulada(distancias_m_1,10);
dist_acumulada_m_1
correspondencia = get_indice(dist_acumulada_m_1,10);
fprintf("EL AUDIO PROCESADO CORRESPONDE CON EL CUANTIZADOR DEL NUMERO %d\n",correspondencia);
matriz_conf(renglon,correspondencia)= matriz_conf(renglon,correspondencia)+1;

[y_x,Fs_x] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_1\AUDIO_1_13.wav');
sound(y_x,Fs_x);
[corr_bloques_x,coef_bloques_x] = procesamiento_audio(y_x);
distancias_m_1 = comparacion_voz(corr_bloques_x);
dist_acumulada_m_1 = dist_acumulada(distancias_m_1,10);
dist_acumulada_m_1
correspondencia = get_indice(dist_acumulada_m_1,10);
fprintf("EL AUDIO PROCESADO CORRESPONDE CON EL CUANTIZADOR DEL NUMERO %d\n",correspondencia);
matriz_conf(renglon,correspondencia)= matriz_conf(renglon,correspondencia)+1;

[y_x,Fs_x] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_1\AUDIO_1_14.wav');
sound(y_x,Fs_x);
[corr_bloques_x,coef_bloques_x] = procesamiento_audio(y_x);
distancias_m_1 = comparacion_voz(corr_bloques_x);
dist_acumulada_m_1 = dist_acumulada(distancias_m_1,10);
dist_acumulada_m_1
correspondencia = get_indice(dist_acumulada_m_1,10);
fprintf("EL AUDIO PROCESADO CORRESPONDE CON EL CUANTIZADOR DEL NUMERO %d\n",correspondencia);
matriz_conf(renglon,correspondencia)= matriz_conf(renglon,correspondencia)+1;

[y_x,Fs_x] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_1\AUDIO_1_15.wav');
sound(y_x,Fs_x);
[corr_bloques_x,coef_bloques_x] = procesamiento_audio(y_x);
distancias_m_1 = comparacion_voz(corr_bloques_x);
dist_acumulada_m_1 = dist_acumulada(distancias_m_1,10);
dist_acumulada_m_1
correspondencia = get_indice(dist_acumulada_m_1,10);
fprintf("EL AUDIO PROCESADO CORRESPONDE CON EL CUANTIZADOR DEL NUMERO %d\n",correspondencia);
matriz_conf(renglon,correspondencia)= matriz_conf(renglon,correspondencia)+1;

%% SECCION DE COMPARACION DE LOS 5 AUDIOS DE PRUEBA RESTANTES PARA EL AUDIO 2

renglon = 2;

[y_x,Fs_x] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_2\AUDIO_2_11.wav');
sound(y_x,Fs_x);
[corr_bloques_x,coef_bloques_x] = procesamiento_audio(y_x);
distancias_m_1 = comparacion_voz(corr_bloques_x);
dist_acumulada_m_1 = dist_acumulada(distancias_m_1,10);
dist_acumulada_m_1
correspondencia = get_indice(dist_acumulada_m_1,10);
fprintf("EL AUDIO PROCESADO CORRESPONDE CON EL CUANTIZADOR DEL NUMERO %d\n",correspondencia);
matriz_conf(renglon,correspondencia)= matriz_conf(renglon,correspondencia)+1;

[y_x,Fs_x] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_2\AUDIO_2_12.wav');
sound(y_x,Fs_x);
[corr_bloques_x,coef_bloques_x] = procesamiento_audio(y_x);
distancias_m_1 = comparacion_voz(corr_bloques_x);
dist_acumulada_m_1 = dist_acumulada(distancias_m_1,10);
dist_acumulada_m_1
correspondencia = get_indice(dist_acumulada_m_1,10);
fprintf("EL AUDIO PROCESADO CORRESPONDE CON EL CUANTIZADOR DEL NUMERO %d\n",correspondencia);
matriz_conf(renglon,correspondencia)= matriz_conf(renglon,correspondencia)+1;

[y_x,Fs_x] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_2\AUDIO_2_13.wav');
sound(y_x,Fs_x);
[corr_bloques_x,coef_bloques_x] = procesamiento_audio(y_x);
distancias_m_1 = comparacion_voz(corr_bloques_x);
dist_acumulada_m_1 = dist_acumulada(distancias_m_1,10);
dist_acumulada_m_1
correspondencia = get_indice(dist_acumulada_m_1,10);
fprintf("EL AUDIO PROCESADO CORRESPONDE CON EL CUANTIZADOR DEL NUMERO %d\n",correspondencia);
matriz_conf(renglon,correspondencia)= matriz_conf(renglon,correspondencia)+1;

[y_x,Fs_x] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_2\AUDIO_2_14.wav');
sound(y_x,Fs_x);
[corr_bloques_x,coef_bloques_x] = procesamiento_audio(y_x);
distancias_m_1 = comparacion_voz(corr_bloques_x);
dist_acumulada_m_1 = dist_acumulada(distancias_m_1,10);
dist_acumulada_m_1
correspondencia = get_indice(dist_acumulada_m_1,10);
fprintf("EL AUDIO PROCESADO CORRESPONDE CON EL CUANTIZADOR DEL NUMERO %d\n",correspondencia);
matriz_conf(renglon,correspondencia)= matriz_conf(renglon,correspondencia)+1;

[y_x,Fs_x] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_2\AUDIO_2_15.wav');
sound(y_x,Fs_x);
[corr_bloques_x,coef_bloques_x] = procesamiento_audio(y_x);
distancias_m_1 = comparacion_voz(corr_bloques_x);
dist_acumulada_m_1 = dist_acumulada(distancias_m_1,10);
dist_acumulada_m_1
correspondencia = get_indice(dist_acumulada_m_1,10);
fprintf("EL AUDIO PROCESADO CORRESPONDE CON EL CUANTIZADOR DEL NUMERO %d\n",correspondencia);
matriz_conf(renglon,correspondencia)= matriz_conf(renglon,correspondencia)+1;


%% SECCION DE COMPARACION DE LOS 5 AUDIOS DE PRUEBA RESTANTES PARA EL AUDIO 3

renglon = 3;

[y_x,Fs_x] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_3\AUDIO_3_11.wav');
sound(y_x,Fs_x);
[corr_bloques_x,coef_bloques_x] = procesamiento_audio(y_x);
distancias_m_1 = comparacion_voz(corr_bloques_x);
dist_acumulada_m_1 = dist_acumulada(distancias_m_1,10);
dist_acumulada_m_1
correspondencia = get_indice(dist_acumulada_m_1,10);
fprintf("EL AUDIO PROCESADO CORRESPONDE CON EL CUANTIZADOR DEL NUMERO %d\n",correspondencia);
matriz_conf(renglon,correspondencia)= matriz_conf(renglon,correspondencia)+1;

[y_x,Fs_x] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_3\AUDIO_3_12.wav');
sound(y_x,Fs_x);
[corr_bloques_x,coef_bloques_x] = procesamiento_audio(y_x);
distancias_m_1 = comparacion_voz(corr_bloques_x);
dist_acumulada_m_1 = dist_acumulada(distancias_m_1,10);
dist_acumulada_m_1
correspondencia = get_indice(dist_acumulada_m_1,10);
fprintf("EL AUDIO PROCESADO CORRESPONDE CON EL CUANTIZADOR DEL NUMERO %d\n",correspondencia);
matriz_conf(renglon,correspondencia)= matriz_conf(renglon,correspondencia)+1;

[y_x,Fs_x] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_3\AUDIO_3_13.wav');
sound(y_x,Fs_x);
[corr_bloques_x,coef_bloques_x] = procesamiento_audio(y_x);
distancias_m_1 = comparacion_voz(corr_bloques_x);
dist_acumulada_m_1 = dist_acumulada(distancias_m_1,10);
dist_acumulada_m_1
correspondencia = get_indice(dist_acumulada_m_1,10);
fprintf("EL AUDIO PROCESADO CORRESPONDE CON EL CUANTIZADOR DEL NUMERO %d\n",correspondencia);
matriz_conf(renglon,correspondencia)= matriz_conf(renglon,correspondencia)+1;

[y_x,Fs_x] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_3\AUDIO_3_14.wav');
sound(y_x,Fs_x);
[corr_bloques_x,coef_bloques_x] = procesamiento_audio(y_x);
distancias_m_1 = comparacion_voz(corr_bloques_x);
dist_acumulada_m_1 = dist_acumulada(distancias_m_1,10);
dist_acumulada_m_1
correspondencia = get_indice(dist_acumulada_m_1,10);
fprintf("EL AUDIO PROCESADO CORRESPONDE CON EL CUANTIZADOR DEL NUMERO %d\n",correspondencia);
matriz_conf(renglon,correspondencia)= matriz_conf(renglon,correspondencia)+1;

[y_x,Fs_x] = audioread('C:\Users\Eduardo Salazar\Desktop\REC_PATRONES\PRACTICA_3\AUDIOS_P3\AUDIOS_3\AUDIO_3_15.wav');
sound(y_x,Fs_x);
[corr_bloques_x,coef_bloques_x] = procesamiento_audio(y_x);
distancias_m_1 = comparacion_voz(corr_bloques_x);
dist_acumulada_m_1 = dist_acumulada(distancias_m_1,10);
dist_acumulada_m_1
correspondencia = get_indice(dist_acumulada_m_1,10);
fprintf("EL AUDIO PROCESADO CORRESPONDE CON EL CUANTIZADOR DEL NUMERO %d\n",correspondencia);
matriz_conf(renglon,correspondencia)= matriz_conf(renglon,correspondencia)+1;









%% FUNCIONES EMPLEADAS PARA EL FUNCIONAMIENTO DE LA PRACTICA

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

%Funcion get_cuantizador:
%Recibe los vectores de correlacion para un conjunto de audios
%devuelve los coeficientes ai de los n centroides que definen los modelos
%de cuantizacion
function coef_finales_centroides = get_cuantizador(v_corr_1_tagged)
    %Se aplica el algoritmo LBG sobre los vectores de correlacion de 
    %dimension 12 LPC para la combinacion de los vectores de 10 
    %archivos de audio

    %Para cada centroide se almacenan los vectores de correlacion r(x) 
    %y los coeficientes ai, hay una relacion 1:1 entre ambos conjuntos 
    %tambien se tienen los arreglos que almacenan las correlaciones
    %cortas de cada centroide

    %Este arreglo es el principal de los centroides
    %Tiene 14 elementos, desde r(0) hasta r(12) + un tag
    correla_centroid_1 = {};
    %Tiene 13 elementos, desde a0 hastas a12
    coefici_centroid_1 = {};
    %Tiene 13 elementos, desde ra(0) hasta ra(12)
    c_corta_centroid_1 = {};

    %Calculo del primer centroide este se inicializa con 14 elementos
    %desde r(0) hasta r(12) y un tag que permitira identificar a cada
    %centroide
    temp_cent = [0,0,0,0,0,0,0,0,0,0,0,0,0,1];
    %Se emplean las componentes j de cada vector i para el calculo de 
    %la componente j del primer centroide
    for i=1:length(v_corr_1_tagged)
        %El numero de componentes tomados de los vectores r(0) a r(12)
        for j=1:13
            temp_cent(j) = temp_cent(j) + v_corr_1_tagged{i}(j);
        end
    end
    %Se divide cada componente entre el numero de vectores
    temp_cent(1:13)= temp_cent(1:13)/length(v_corr_1_tagged);
    %Se almacenan los valores de correlacion del primer centroide
    correla_centroid_1{1} = temp_cent;
    fprintf("\nPRIMER CENTROIDE:\n");
    correla_centroid_1{1}

    %Se declaran los epsilon que seran empleados
    epsilon_1 =[];
    epsilon_1(1:13) = 0.00000001;
    epsilon_1(14) = 0;
    epsilon_2 =[];
    epsilon_2(1:13) = -0.00000001;
    epsilon_2(14) = 0;

    %Variable empleada para determinar el numero de ciclos que generaran los
    %centroides, por ejemplo, para 8 centroides se necesitan 3 ciclos
    potencia_n = 4; 

    %Ciclo empleado para generar los n centroides
    for n = 1:potencia_n

        %Se declaran los valores de distancia global actual y anterior
        dist_global_act = 0;
        dist_global_ant = 100;
        iteraciones = 0;
        %A partir del conjunto de centroides se genera un nuevo conjunto
        %considerando los valores de epsilon
        correla_centroid_1  = new_centroides(correla_centroid_1,epsilon_1,epsilon_2);
        fprintf("\nSE HAN GENERADO LOS NUEVOS CENTROIDES\n");

        %Los centroides anteriores constan de valores de correlacion de r(0) a r(12)
        %para un proceso posterior es necesario obtener los coeficientes de
        %correlacion asociados (a0 .. a12)
        %Para cada centroide se obtienen sus coeficientes ai y se almacenan en 
        %el arreglo coefici_centroid
        for x=1:length(correla_centroid_1)
            %Se envian las correlaciones del centroide para obtener sus ai's
            %Se almacenan los coeficientes asociados a cada centroide
            %La relacion 1:1 permite solo tener la etiqueta en los centroides
            coefici_centroid_1{x} = get_coef_bloque(correla_centroid_1{x},12);
        end
        fprintf("\nSE HAN GENERADO LOS COEFICIENTES DE LOS CENTROIDES\n");

        %Con los vectores de coeficientes ai's de cada centroide es posible
        %calcular los vectores de correlacion corta, estos tendran 13
        %elementos ra(0) hasta ra(12)
        for x=1:length(coefici_centroid_1)
            %Se envian los coeficientes asociados alcentroide para obtener    
            %los valores de correlacion corta ra(0) .. ra(12)
            %La relacion 1:1 permite solo tener la etiqueta en los centroides
            c_corta_centroid_1{x} = get_corr_corta(coefici_centroid_1{x},12);
        end
        fprintf("\nSE HA CALCULADO LA CORRELACION CORTA DE LOS CENTROIDES\n");

        %Ciclo mediante el cual se estabilizaran los centroides
        %Se declara el valor de epsilon que se desea para estabilizar los
        %centroides
        %epsilon = 0.000000001;
        epsilon = 0.0001;

        while(abs(dist_global_act-dist_global_ant)>= epsilon)


            %Se lleva a cabo el proceso de etiquetado de los vectores de correlaciones
            %Para llevar a cabo la comparacion entre vectores y centroides se emplea
            %la distancia de itakura saito y los vectores de correlacion corta de
            %los centroides comparados contra los valores de correlacion de cada
            %vector
            v_corr_1_tagged = vect_tag(c_corta_centroid_1,v_corr_1_tagged);
            %fprintf("\nSE HAN ETIQUETADO LOS VECTORES\n");

            %Se lleva a cabo el proceso de recalculo de los centroides empleando
            %los vectores etiquetados, se almacena un nuevo conjunto de valores
            %de correlacion para 
            correla_centroid_1 = rec_centroides(correla_centroid_1,v_corr_1_tagged);
            %fprintf("\nSE HAN RECALCULADO LOS CENTROIDES\n");

            %Los centroides anteriores constan de valores de correlacion de r(0) a r(12)
            %para un proceso posterior es necesario obtener los coeficientes de
            %correlacion asociados (a0 .. a12)
            %Para cada centroide se obtienen sus coeficientes ai y se almacenan en 
            %el arreglo coefici_centroid
            for x=1:length(correla_centroid_1)
                %Se envian las correlaciones del centroide para obtener sus ai's
                %Se almacenan los coeficientes asociados a cada centroide
                %La relacion 1:1 permite solo tener la etiqueta en los centroides
                coefici_centroid_1{x} = get_coef_bloque(correla_centroid_1{x},12);
            end
            %fprintf("\nSE HAN GENERADO LOS COEFICIENTES DE LOS CENTROIDES\n");

            %Con los vectores de coeficientes ai's de cada centroide es posible
            %calcular los vectores de correlacion corta, estos tendran 13
            %elementos ra(0) hasta ra(12)
            for x=1:length(coefici_centroid_1)
                %Se envian los coeficientes asociados alcentroide para obtener    
                %los valores de correlacion corta ra(0) .. ra(12)
                %La relacion 1:1 permite solo tener la etiqueta en los centroides
                c_corta_centroid_1{x} = get_corr_corta(coefici_centroid_1{x},12);
            end
            %fprintf("\nSE HA CALCULADO LA CORRELACION CORTA DE LOS CENTROIDES\n");

            %fprintf("\nDISTANCIA GLOBAL ANTERIOR:%d\n",dist_global_ant);
            dist_global_ant = dist_global_act;
            %fprintf("\nDISTANCIA GLOBAL ANTERIOR NUEVA:%d\n",dist_global_ant);
            %Se calcula la distancia global con ayuda de los centroides y los
            %vectores
            %fprintf("\nDISTANCIA GLOBAL ACTUAL:%d\n",dist_global_act);
            dist_global_act = dist_global_act+dist_min(c_corta_centroid_1,v_corr_1_tagged);
            %fprintf("\nDISTANCIA GLOBAL ACTUAL NUEVA:%d\n",dist_global_act);
            iteraciones = iteraciones + 1;

        end

        fprintf("\nSE HAN REALIZADO %d ITERACIONES\n",iteraciones);

    end

    %Finalmente, los patrones que se almacenan para comparacion son los
    %coeficientes de correlacion corta obtenidas para cada centroide

    %coef_finales_centroides = {};
    %for i = 1:length(correla_centroid_1)
        %Del bloque actual se obtienen los coeficientes
    %    coef_finales_centroides{i} = get_coef_bloque(correla_centroid_1{i},12);
    %end
    coef_finales_centroides = c_corta_centroid_1;
    fprintf("\n\nPARA LOS %d CENTROIDES DEL AUDIO:\n",length(correla_centroid_1));
    fprintf("SE OBTUVIERON %d VECTORES DE COEFICIENTES\n",length(coef_finales_centroides));
    fprintf("CADA UNO CON %d VALORES\n\n",length(coef_finales_centroides{1}));
end

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

%FUNCIONES PARA EL PROCESAMIENTO DE AUDIO Y OBTENCION DE 
%VECTORES DE CORRELACION Y COEFICIENTES

%Funcion procesamiento_audio
%Realiza las operaciones de preprocesamiento necesarias sobre las
%muestras de audio recibidas. Las operaciones son:
%1. Aplicacion de Filtro de Preenfasis
%2. Obtencion de bloques mediante una ventana de Hamming
%3. Obtencion de los vectores de correlacion r(0)...r(12) de cada bloque
%4. Obtencion de los coeficientes de cada bloque 
%Devuelve el arreglo que contiene los coeficientes y el arreglo que 
%contiene los vectores de correlacion para los bloques de la señal
function [corr_bloques_i,coef_bloques_i] = procesamiento_audio(y_i)
    % FILTRO DE PREENFASIS
    %Se aplica el filtro de preenfasis a la señal de audio
    filtro_i = filtro_preenfasis(y_i);
    fprintf("SE HA APLICADO EL FILTRO DE PREENFASIS\n\n");
    
    % VENTANA DE HAMMING
    %Obtencion de las ventanas de Hamming
    ventanas_i = vent_ham(filtro_i); 
    fprintf("SE HA APLICADO LA VENTANA DE HAMMING")
    fprintf("\nSE TIENEN:\n");
    fprintf("%d BLOQUES",length(ventanas_i));
    fprintf(" CON %d MUESTRAS\n\n",length(ventanas_i{1}));

    % VECTORES DE CORRELACION PARA CADA BLOQUE
    %Obtencion de los vectores de correlacion para cada bloque de la señal 
    %Se obtienen desde r(0) hasta r(12)
    corr_bloques_i = {};
    for i = 1:length(ventanas_i)
        %Del bloque actual se obtiene el vector de correlaciones
        corr_bloques_i{i} = get_vect_corr(ventanas_i{i},12);
    end
    fprintf("PARA EL AUDIO SE TIENEN:\n");
    fprintf("SE OBTUVIERON %d VECTORES DE CORRELACION\n",length(corr_bloques_i));
    fprintf("CADA UNO CON %d VALORES\n\n",length(corr_bloques_i{1}));

    % OBTENCION DE LAS MATRICES Y VECTORES DE CORRELACION PARA
    % CADA BLOQUE

    %Se obtienen los coeficientes ai de cada bloque a partir de los
    %valores de correlacion, 
    coef_bloques_i = {};
    for i = 1:length(corr_bloques_i)
        %Del bloque actual se obtienen los coeficientes
        coef_bloques_i{i} = get_coef_bloque(corr_bloques_i{i},12);
    end
    fprintf("PARA EL AUDIO SE TIENEN:\n");
    fprintf("SE OBTUVIERON %d VECTORES DE COEFICIENTES\n",length(coef_bloques_i));
    fprintf("CADA UNO CON %d VALORES\n\n",length(coef_bloques_i{1}));
end

%Funcion filtro preenfasis:
%Recibe las muestras de audio y realiza la aplicacion de un filtro
%de preenfasis
function muestras_filtradas = filtro_preenfasis(y_x)
% Filtro de preenfasis
% s(n)~ = s(n)-ãs(n-1)
muestras_filtradas = [length(y_x)-1];
    for k_cont = 2:length(y_x)
        muestras_filtradas(k_cont-1) = y_x(k_cont)-(0.95*y_x(k_cont-1));
    end
end

%Funcion vent_ham: 
%Recibe un vector de datos filtrado, divide el total
%de los datos en bloques de 512 muestras cada 170 muestras, estas son 
%almacenadas y devueltas al usuario.
function bloques_ventana = vent_ham(filtro_x)
    bloques_ventana = {};
    %M:Marca cada cuanto se realizara la toma de un nuevo bloque
    M = 64;
    %N:Numero de muestras por cada bloque
    N = 160;
    %k: Numero de ciclos en base al numero de muestras que se tienen
    k = floor(length(filtro_x)/M);
    %Se disminuye el numero de bloques creados si es que al considerar
    %el numero de muestras se supera la cantidad de valores en el vector
    %de entrada
    while((k*M)+N)>(length(filtro_x))
        k=k-1;
    end 
    fprintf("NUMERO DE MUESTRAS: %d, NUMERO DE BLOQUES: %d\n",length(filtro_x),k);
    fprintf("NUMERO DE MUESTRAS USADAS:%d\n",(k*M)+N);
    %Creacion de cada bloque de N muestras cada M muestras
    %multiplicada por el valor de la ventana de Hamming correspondiente
    for i = 0:k
        muest_n_vent = [];
        for n = 1:N
            %Se calcula el valor de la ventana de hamming
            w_n = 0.54-(0.46*cos((2*pi*(n-1))/(N-1)));
            %Se toma la muestra n desde el bloque i y se multiplica por w_n
            muest_n_vent(n) = filtro_x((i*M)+(n))*w_n;
        end
        %Se almacena el bloque i-esimo
        bloques_ventana{i+1}= muest_n_vent;
    end
end

%Funcion get_vect_corr:
%Recibe los vectores pertenecientes de una ventana de hamming
%calcula el vector de correlacion de 13 elementos de r(0)...r(12)
%Recibe el valor xi que indica el numero de vectores de correlacion
%que seran calculados
function vect_corr = get_vect_corr(bloque_datos,xi)
    %Vector que almacena los 13 valores para el vector de correlaciones
    vect_corr = [];
    var_xi = xi;
    r_xi = 0;
    %Ciclo para obtener cada uno de los valores del vector de correlacion
    for j = 0:var_xi
        r_xi = 0;
        %Ciclo para calcular el valor de correlacion para la j actual
        for i = j+1:length(bloque_datos)
            r_xi = r_xi + (bloque_datos(i)*bloque_datos(i-j));
        end
        r_xi = r_xi/length(bloque_datos);
        vect_corr(j+1)= r_xi;
        %fprintf("\nVALOR DE r(%d): %0.5f\n",j,r_xi);
    end
end

%Funcion get_coef_bloques:
%Recibe un vector de correlacion de 13 elementos r(0)..r(12)
%y un n que representa el numero de elementos que tiene el vector
%Permite obtener los coeficientes del filtro de Wiener para
%cada bloque en base a los coeficientes de correlacion
function vect_coef_bloque = get_coef_bloque(vect_corr_bloque,n)
    %Vector que almacenara los valores de los coeficientes de Wiener
    vect_coef_bloque= [];
    %Creacion del vector de correlacion
    vect_corr = [];
    for i = 2:n+1
        vect_corr(i-1,1)=vect_corr_bloque(i);
    end
    %Creacion de la matriz de correlacion
    mat_corr = [];
    %Renglon 1
    mat_corr(1,1)= vect_corr_bloque(1);
    mat_corr(1,2)= vect_corr_bloque(2);
    mat_corr(1,3)= vect_corr_bloque(3);
    mat_corr(1,4)= vect_corr_bloque(4);
    mat_corr(1,5)= vect_corr_bloque(5);
    mat_corr(1,6)= vect_corr_bloque(6);
    mat_corr(1,7)= vect_corr_bloque(7);
    mat_corr(1,8)= vect_corr_bloque(8);
    mat_corr(1,9)= vect_corr_bloque(9);
    mat_corr(1,10)= vect_corr_bloque(10);
    mat_corr(1,11)= vect_corr_bloque(11);
    mat_corr(1,12)= vect_corr_bloque(12);
    %Renglon 2
    mat_corr(2,1)= vect_corr_bloque(2);
    mat_corr(2,2)= vect_corr_bloque(1);
    mat_corr(2,3)= vect_corr_bloque(2);
    mat_corr(2,4)= vect_corr_bloque(3);
    mat_corr(2,5)= vect_corr_bloque(4);
    mat_corr(2,6)= vect_corr_bloque(5);
    mat_corr(2,7)= vect_corr_bloque(6);
    mat_corr(2,8)= vect_corr_bloque(7);
    mat_corr(2,9)= vect_corr_bloque(8);
    mat_corr(2,10)= vect_corr_bloque(9);
    mat_corr(2,11)= vect_corr_bloque(10);
    mat_corr(2,12)= vect_corr_bloque(11);
    %Renglon 3
    mat_corr(3,1)= vect_corr_bloque(3);
    mat_corr(3,2)= vect_corr_bloque(2);
    mat_corr(3,3)= vect_corr_bloque(1);
    mat_corr(3,4)= vect_corr_bloque(2);
    mat_corr(3,5)= vect_corr_bloque(3);
    mat_corr(3,6)= vect_corr_bloque(4);
    mat_corr(3,7)= vect_corr_bloque(5);
    mat_corr(3,8)= vect_corr_bloque(6);
    mat_corr(3,9)= vect_corr_bloque(7);
    mat_corr(3,10)= vect_corr_bloque(8);
    mat_corr(3,11)= vect_corr_bloque(9);
    mat_corr(3,12)= vect_corr_bloque(10);
    %Renglon 4
    mat_corr(4,1)= vect_corr_bloque(4);
    mat_corr(4,2)= vect_corr_bloque(3);
    mat_corr(4,3)= vect_corr_bloque(2);
    mat_corr(4,4)= vect_corr_bloque(1);
    mat_corr(4,5)= vect_corr_bloque(2);
    mat_corr(4,6)= vect_corr_bloque(3);
    mat_corr(4,7)= vect_corr_bloque(4);
    mat_corr(4,8)= vect_corr_bloque(5);
    mat_corr(4,9)= vect_corr_bloque(6);
    mat_corr(4,10)= vect_corr_bloque(7);
    mat_corr(4,11)= vect_corr_bloque(8);
    mat_corr(4,12)= vect_corr_bloque(9);
    %Renglon 5
    mat_corr(5,1)= vect_corr_bloque(5);
    mat_corr(5,2)= vect_corr_bloque(4);
    mat_corr(5,3)= vect_corr_bloque(3);
    mat_corr(5,4)= vect_corr_bloque(2);
    mat_corr(5,5)= vect_corr_bloque(1);
    mat_corr(5,6)= vect_corr_bloque(2);
    mat_corr(5,7)= vect_corr_bloque(3);
    mat_corr(5,8)= vect_corr_bloque(4);
    mat_corr(5,9)= vect_corr_bloque(5);
    mat_corr(5,10)= vect_corr_bloque(6);
    mat_corr(5,11)= vect_corr_bloque(7);
    mat_corr(5,12)= vect_corr_bloque(8);
    %Renglon 6
    mat_corr(6,1)= vect_corr_bloque(6);
    mat_corr(6,2)= vect_corr_bloque(5);
    mat_corr(6,3)= vect_corr_bloque(4);
    mat_corr(6,4)= vect_corr_bloque(3);
    mat_corr(6,5)= vect_corr_bloque(2);
    mat_corr(6,6)= vect_corr_bloque(1);
    mat_corr(6,7)= vect_corr_bloque(2);
    mat_corr(6,8)= vect_corr_bloque(3);
    mat_corr(6,9)= vect_corr_bloque(4);
    mat_corr(6,10)= vect_corr_bloque(5);
    mat_corr(6,11)= vect_corr_bloque(6);
    mat_corr(6,12)= vect_corr_bloque(7);
    %Renglon 7
    mat_corr(7,1)= vect_corr_bloque(7);
    mat_corr(7,2)= vect_corr_bloque(6);
    mat_corr(7,3)= vect_corr_bloque(5);
    mat_corr(7,4)= vect_corr_bloque(4);
    mat_corr(7,5)= vect_corr_bloque(3);
    mat_corr(7,6)= vect_corr_bloque(2);
    mat_corr(7,7)= vect_corr_bloque(1);
    mat_corr(7,8)= vect_corr_bloque(2);
    mat_corr(7,9)= vect_corr_bloque(3);
    mat_corr(7,10)= vect_corr_bloque(4);
    mat_corr(7,11)= vect_corr_bloque(5);
    mat_corr(7,12)= vect_corr_bloque(6);
    %Renglon 8
    mat_corr(8,1)= vect_corr_bloque(8);
    mat_corr(8,2)= vect_corr_bloque(7);
    mat_corr(8,3)= vect_corr_bloque(6);
    mat_corr(8,4)= vect_corr_bloque(5);
    mat_corr(8,5)= vect_corr_bloque(4);
    mat_corr(8,6)= vect_corr_bloque(3);
    mat_corr(8,7)= vect_corr_bloque(2);
    mat_corr(8,8)= vect_corr_bloque(1);
    mat_corr(8,9)= vect_corr_bloque(2);
    mat_corr(8,10)= vect_corr_bloque(3);
    mat_corr(8,11)= vect_corr_bloque(4);
    mat_corr(8,12)= vect_corr_bloque(5);
    %Renglon 9
    mat_corr(9,1)= vect_corr_bloque(9);
    mat_corr(9,2)= vect_corr_bloque(8);
    mat_corr(9,3)= vect_corr_bloque(7);
    mat_corr(9,4)= vect_corr_bloque(6);
    mat_corr(9,5)= vect_corr_bloque(5);
    mat_corr(9,6)= vect_corr_bloque(4);
    mat_corr(9,7)= vect_corr_bloque(3);
    mat_corr(9,8)= vect_corr_bloque(2);
    mat_corr(9,9)= vect_corr_bloque(1);
    mat_corr(9,10)= vect_corr_bloque(2);
    mat_corr(9,11)= vect_corr_bloque(3);
    mat_corr(9,12)= vect_corr_bloque(4);
    %Renglon 10
    mat_corr(10,1)= vect_corr_bloque(10);
    mat_corr(10,2)= vect_corr_bloque(9);
    mat_corr(10,3)= vect_corr_bloque(8);
    mat_corr(10,4)= vect_corr_bloque(7);
    mat_corr(10,5)= vect_corr_bloque(6);
    mat_corr(10,6)= vect_corr_bloque(5);
    mat_corr(10,7)= vect_corr_bloque(4);
    mat_corr(10,8)= vect_corr_bloque(3);
    mat_corr(10,9)= vect_corr_bloque(2);
    mat_corr(10,10)= vect_corr_bloque(1);
    mat_corr(10,11)= vect_corr_bloque(2);
    mat_corr(10,12)= vect_corr_bloque(3);
    %Renglon 11
    mat_corr(11,1)= vect_corr_bloque(11);
    mat_corr(11,2)= vect_corr_bloque(10);
    mat_corr(11,3)= vect_corr_bloque(9);
    mat_corr(11,4)= vect_corr_bloque(8);
    mat_corr(11,5)= vect_corr_bloque(7);
    mat_corr(11,6)= vect_corr_bloque(6);
    mat_corr(11,7)= vect_corr_bloque(5);
    mat_corr(11,8)= vect_corr_bloque(4);
    mat_corr(11,9)= vect_corr_bloque(3);
    mat_corr(11,10)= vect_corr_bloque(2);
    mat_corr(11,11)= vect_corr_bloque(1);
    mat_corr(11,12)= vect_corr_bloque(2);
    %Renglon 12
    mat_corr(12,1)= vect_corr_bloque(12);
    mat_corr(12,2)= vect_corr_bloque(11);
    mat_corr(12,3)= vect_corr_bloque(10);
    mat_corr(12,4)= vect_corr_bloque(9);
    mat_corr(12,5)= vect_corr_bloque(8);
    mat_corr(12,6)= vect_corr_bloque(7);
    mat_corr(12,7)= vect_corr_bloque(6);
    mat_corr(12,8)= vect_corr_bloque(5);
    mat_corr(12,9)= vect_corr_bloque(4);
    mat_corr(12,10)= vect_corr_bloque(3);
    mat_corr(12,11)= vect_corr_bloque(2);
    mat_corr(12,12)= vect_corr_bloque(1);
    
    %Se obtiene la solucion de Wiener 
    %Se obtiene la matriz inversa de R
    mat_R_inv = inv(mat_corr);
    %Se multiplica por el vector de correlaciones r
    vect_w = mat_R_inv * vect_corr;
    %Se declara un vector de 1's ya que los coeficientes ai se
    %obtienen como la resta de un vector de 1's menos el vector de pesos
    %Se devuelve al usuario el conjunto de coeficientes para el bloque
    vect_coef_bloque(1) = 1;
    vect_coef_bloque(2:13) = -1*vect_w(1:12);
end

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

function merged_lista = unir_vect_corr(vects_1,vects_2)
    merged_lista = {};
    size_1 = length(vects_1);
    size_2 = length(vects_2);
    for kk = 1:size_1
        vector = vects_1{kk};
        merged_lista{kk} = vector;
    end
    for kk = 1:size_2
        vector = vects_2{kk};
        merged_lista{kk+size_1} = vector;
    end
end

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

%FUNCIONES EMPLEADAS PARA LA APLICACION DEL ALGORITMO LBG ADAPTADAS
%PARA VECTORES DE TAMAÑOS DIFERENTES A 2

%Funcion new_centroides:
%Recibe un arreglo que contiene los vectores de los centroides
%junto con dos vectores que representan las epsilon
%Permite obtener un arreglo de centroides con el doble de centroides
%que el arreglo recibido
function array_new_cent = new_centroides(cent_actuales,epsilon_1,epsilon_2)
    %Se obtiene el numero de centroides
    n = length(cent_actuales);
    %Se inicializan las etiquetas a 0
    for x = 1:n
        cent_actuales{x}(14) = 0;
    end
    %Arreglo vacio que almacenara los nuevos centroides generados
    %Se inicializa con 0's para poder almacenarlos de forma sencilla
    %tambien se les agrega una etiqueta que representa el numero
    %de centroide
    for x = 1:2*n
        array_new_cent{x} = [0,0,0,0,0,0,0,0,0,0,0,0,0,x];
    end
    %Se calcula el siguiente par de centroides usando las epsilon
    fprintf("\nSE HAN RECIBIDO %d CENTROIDES\n",n);
    fprintf("SE CALCULARAN %d NUEVOS CENTROIDES",2*n);
    %Por cada centroide se crean dos centroides nuevos sumando epsilon_1
    %y epsilon_2 a cada centroide;
    for x = 1:n
        %fprintf("\nCENTROIDE\n");
        %Se obtiene el centroide actual con elementos desde r(0) hasta r(12)
        var_cent = cent_actuales{x};
        %fprintf("\nCENTROIDE + EPSILON 1\n");
        %Se le suma la primer epsilon
        var_cent_1 = var_cent + epsilon_1;
        %fprintf("\nCENTROIDE + EPSILON 2\n")
        %Se le suma la segunda epsilon
        var_cent_2 = var_cent + epsilon_2;
        array_new_cent{x} = array_new_cent{x}+var_cent_1;
        array_new_cent{x+n} = array_new_cent{x+n}+var_cent_2;
    end
end

%Funcion get_corr_corta:
%Recibe un vector de coeficientes, calcula con estos valores los n
%valores de correlacion corta
function vect_corr_corta = get_corr_corta(vec_coef,n)
    %Se define un vector que almacenara los valores de correlacion corta
    vect_corr_corta = [];
    %Se calcula desde r(0) hasta r(12) haciendo uso de los 
    %coeficientes a0 hasta a12
    for i = 0:n
        %Se inicializa en 0 la componente r(i)
        vect_corr_corta(i+1)=0;
        for j=0:n-i
            vect_corr_corta(i+1) = vect_corr_corta(i+1)+(vec_coef(j+1)*vec_coef(j+i+1));
        end
    end
end

function vectores_eti = vect_tag(cent_actuales,vect_tagged)
    vectores_eti = vect_tagged;
    %Para cada vector se calculara la distancia con respecto a cada
    %centroide esto con el fin de etiquetarlos
    for j = 1:length(vect_tagged)
        %Se toma el vector de correlaciones j para llevar a cabo la
        %comparacion con los vectores de correlacion corta de los 
        %centroides 
        vector_probado = vect_tagged{j};
        %Se inicializa la distancia minima con respecto al primer centroide
        centroide = cent_actuales{1};
        %Se emplea la distancia de Itakura-Saito para comparar los vectores
        
        
        %CUIDADO CON EL ABS
  
        dist_minima_vector = get_dist_ita_sai(vector_probado,centroide,13);
        
        
        
        %Igualmente se inicializa la etiqueta que se le asignara al vector
        %tras las comparaciones
        tag_actual = 1; 
        %Ciclo para calcular la distancia de este vector al centroide k
        %Desde el segundo hasta el ultimo centroide
        for k = 2:length(cent_actuales)
            %Se toman las coordenadas del nuevo centroide
            centroide = cent_actuales{k};
            %Se toma la distancia de Itakura-Saito
            
            %CUIDADO CON EL ABS
            
            dist_cent_actual =  get_dist_ita_sai(vector_probado,centroide,13);
            
            
            %Si la distancia calculada con respecto al vector actual
            %es menor que la anterior se actualiza tanto la distancia
            %minima como la etiqueta para el vector
            if dist_cent_actual < dist_minima_vector
                dist_minima_vector = dist_cent_actual;
                %Se toma la etiqueta asociada al centroide
                tag_actual = k;
            end
        end
        %Se le asigna el tag_actual al vector dentro de v_n_s tagged
        vectores_eti{j}(14)= tag_actual; 
    end
end

function distancia = get_dist_ita_sai(vect_1,vect_2,n)
    %Se obtiene el primer termino r(0)*ra(0)
    distancia = vect_1(1)*vect_2(1);
    %Se realiza la suma consecutiva del producto de los demas terminos
    for i = 2:n
        distancia = distancia + (2*vect_1(i)*vect_2(i));
    end
end

function centroid_recalc = rec_centroides(cent_actuales,vectores_tag)
    %Se inicializa un arreglo donde se llevara a cabo la suma de los
    %valores para cada centroide, se mantienen la etiqueta
    centroid_recalc = {};
    sum_cent = {};
    for x = 1:length(cent_actuales)
        %Se inicializan los nuevos centroides solo conservando la etiqueta
        centroid_recalc{x} = [0 0 0 0 0 0 0 0 0 0 0 0 0 x];
        %Se inicializan los valores para las sumas en 0, la ultima variable
        %lleva la cuenta de los vectores asociados a cada tag
        sum_cent{x} = [0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    end
    %Mediante los vectores ya etiquetados se recalculan los centroides
    for y = 1:length(vectores_tag)
        %Se obtiene la etiqueta del vector actual
        tag_cent = vectores_tag{y}(14);
        %A la celda tag_cent se le suman los valores de las componentes
        %de cada vector
        for j=1:13
            sum_cent{tag_cent}(j) = sum_cent{tag_cent}(j) + vectores_tag{y}(j);
        end
        %Se incrementa el numero de vectores asociados al centroide
        sum_cent{tag_cent}(14) = sum_cent{tag_cent}(14) + 1;
    end
    %Se divide el total de la suma entre el numero de vectores asociados
    for k = 1:length(centroid_recalc)
        %Se obtiene el numero de vectores asociados al centroide
        num_vect = sum_cent{k}(14);
        %Se dividen los valores acumulados entre el numero de centroides
        val_new_cent = sum_cent{k}(1:13)/num_vect;
        %Se asigna al centroide los valores de sus componentes sin
        %modificar su etiqueta
        centroid_recalc{k}(1:13) = val_new_cent;
    end
end

function distancia_minima = dist_min(cent_actuales,vectores_tag) 
    %Para cada centroide se calcula la distancia minima de entre todos los
    %vectores que estan representados por el
    %Se declara un arreglo que almacenara la distancia minima respecto a
    %cada centroide,se declara una distancia minima de 100000 para realizar
    %la comparacion inicial
    distancias_minimas = [];
    for x = 1:length(cent_actuales)
        distancias_minimas(x) = 1000000;
    end
    %Para cada vector se calcula la distancia con respecto a su
    %centroide y se verifica si esta es menor que la anterior
    for y = 1:length(vectores_tag)
        %Se calcula la distancia de este vector con respecto a su
        %centroide empleando la etiqueta
        tag_vector = vectores_tag{y}(14);
        %Se obtienen las coordenadas del centroide con ayuda del tag
        cent_coor = cent_actuales{tag_vector}(1:13);
        %Se obtienen las coordenadas del vector
        vect_coor = vectores_tag{y}(1:13);
        dist_cent_actual = get_dist_ita_sai(vect_coor,cent_coor,13);
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

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

%Funcion comparacion_voz:
%Recibe un conjunto de vectores de correlacion de un audio
%cada vector representa a un bloque de la señal de voz
%se compara para cada bloque la distorsion minima con respecto a cada
%cuantizador. Se almacena para cada bloque de audio un vector de 
%10 componentes que representa la distancia minima con
%respecto a cada uno de los cuantizadores

function dist_minimas = comparacion_voz(vectores_corr)
    
    %Se emplean los datos de los diez cuantizadores
    global cuantizador_audio_1;
    global cuantizador_audio_2;
    global cuantizador_audio_3;
    global cuantizador_audio_4;
    global cuantizador_audio_5;
    global cuantizador_audio_6;
    global cuantizador_audio_7;
    global cuantizador_audio_8;
    global cuantizador_audio_9;
    global cuantizador_audio_10;
    
    %Se declara un array que almacenara los vectores de distancias
    %minimas asociados a cada bloque del audio
    dist_minimas = {};
    
    %Para cada vector de correlacion de audio se obtiene la distorcion 
    %minima con respecto a los vectores de los centroides
    for x=1:length(vectores_corr)
        %Se toman los valores de correlacion del bloque x
        bloque_actual = vectores_corr{x};
        
        %Se declara un arreglo de 10 componentes que almacenara
        %los valores de distorsion minima de cada bloque de audio
        %con respecto a los 10 cuantizadores
        bloque_minimo = [];
        
        %Se inicializan con una distancia de 10000 para realizar
        %comparaciones
        bloque_minimo(1:10)= 10000;
        
        %Obtencion de distorsion minima con respecto al CUANTIZADOR_1
        for y = 1:length(cuantizador_audio_1)
            %Se obtiene la distorsion minima del bloque comparado
            %contra todos los vectores del cuantizador
            dist_actual = get_dist_ita_sai(bloque_actual,cuantizador_audio_1{y},13);
            %Se compara la distorsion actual con la minima almacenada
            %para el cuantizador 1
            if dist_actual < bloque_minimo(1)
                %Si la distorsion actual es menor se actualiza el arreglo
                bloque_minimo(1)=dist_actual;
            end
        end
        
        %Obtencion de distorsion minima con respecto al CUANTIZADOR_2
        for y = 1:length(cuantizador_audio_2)
            %Se obtiene la distorsion minima del bloque comparado
            %contra todos los vectores del cuantizador
            dist_actual = get_dist_ita_sai(bloque_actual,cuantizador_audio_2{y},13);
            %Se compara la distorsion actual con la minima almacenada
            %para el cuantizador 1
            if dist_actual < bloque_minimo(2)
                %Si la distorsion actual es menor se actualiza el arreglo
                bloque_minimo(2)=dist_actual;
            end
        end
        
        %Obtencion de distorsion minima con respecto al CUANTIZADOR_3
        for y = 1:length(cuantizador_audio_3)
            %Se obtiene la distorsion minima del bloque comparado
            %contra todos los vectores del cuantizador
            dist_actual = get_dist_ita_sai(bloque_actual,cuantizador_audio_3{y},13);
            %Se compara la distorsion actual con la minima almacenada
            %para el cuantizador 1
            if dist_actual < bloque_minimo(3)
                %Si la distorsion actual es menor se actualiza el arreglo
                bloque_minimo(3)=dist_actual;
            end
        end
        
        %Obtencion de distorsion minima con respecto al CUANTIZADOR_4
        for y = 1:length(cuantizador_audio_4)
            %Se obtiene la distorsion minima del bloque comparado
            %contra todos los vectores del cuantizador
            dist_actual = get_dist_ita_sai(bloque_actual,cuantizador_audio_4{y},13);
            %Se compara la distorsion actual con la minima almacenada
            %para el cuantizador 1
            if dist_actual < bloque_minimo(4)
                %Si la distorsion actual es menor se actualiza el arreglo
                bloque_minimo(4)=dist_actual;
            end
        end
        
        %Obtencion de distorsion minima con respecto al CUANTIZADOR_5
        for y = 1:length(cuantizador_audio_5)
            %Se obtiene la distorsion minima del bloque comparado
            %contra todos los vectores del cuantizador
            dist_actual = get_dist_ita_sai(bloque_actual,cuantizador_audio_5{y},13);
            %Se compara la distorsion actual con la minima almacenada
            %para el cuantizador 1
            if dist_actual < bloque_minimo(5)
                %Si la distorsion actual es menor se actualiza el arreglo
                bloque_minimo(5)=dist_actual;
            end
        end
        
        %Obtencion de distorsion minima con respecto al CUANTIZADOR_6
        for y = 1:length(cuantizador_audio_6)
            %Se obtiene la distorsion minima del bloque comparado
            %contra todos los vectores del cuantizador
            dist_actual = get_dist_ita_sai(bloque_actual,cuantizador_audio_6{y},13);
            %Se compara la distorsion actual con la minima almacenada
            %para el cuantizador 1
            if dist_actual < bloque_minimo(6)
                %Si la distorsion actual es menor se actualiza el arreglo
                bloque_minimo(6)=dist_actual;
            end
        end
        
        %Obtencion de distorsion minima con respecto al CUANTIZADOR_7
        for y = 1:length(cuantizador_audio_7)
            %Se obtiene la distorsion minima del bloque comparado
            %contra todos los vectores del cuantizador
            dist_actual = get_dist_ita_sai(bloque_actual,cuantizador_audio_7{y},13);
            %Se compara la distorsion actual con la minima almacenada
            %para el cuantizador 1
            if dist_actual < bloque_minimo(7)
                %Si la distorsion actual es menor se actualiza el arreglo
                bloque_minimo(7)=dist_actual;
            end
        end
        
        %Obtencion de distorsion minima con respecto al CUANTIZADOR_8
        for y = 1:length(cuantizador_audio_8)
            %Se obtiene la distorsion minima del bloque comparado
            %contra todos los vectores del cuantizador
            dist_actual = get_dist_ita_sai(bloque_actual,cuantizador_audio_8{y},13);
            %Se compara la distorsion actual con la minima almacenada
            %para el cuantizador 1
            if dist_actual < bloque_minimo(8)
                %Si la distorsion actual es menor se actualiza el arreglo
                bloque_minimo(8)=dist_actual;
            end
        end
        
        %Obtencion de distorsion minima con respecto al CUANTIZADOR_9
        for y = 1:length(cuantizador_audio_9)
            %Se obtiene la distorsion minima del bloque comparado
            %contra todos los vectores del cuantizador
            dist_actual = get_dist_ita_sai(bloque_actual,cuantizador_audio_9{y},13);
            %Se compara la distorsion actual con la minima almacenada
            %para el cuantizador 1
            if dist_actual < bloque_minimo(9)
                %Si la distorsion actual es menor se actualiza el arreglo
                bloque_minimo(9)=dist_actual;
            end
        end
        
        %Obtencion de distorsion minima con respecto al CUANTIZADOR_10
        for y = 1:length(cuantizador_audio_10)
            %Se obtiene la distorsion minima del bloque comparado
            %contra todos los vectores del cuantizador
            dist_actual = get_dist_ita_sai(bloque_actual,cuantizador_audio_10{y},13);
            %Se compara la distorsion actual con la minima almacenada
            %para el cuantizador 1
            if dist_actual < bloque_minimo(10)
                %Si la distorsion actual es menor se actualiza el arreglo
                bloque_minimo(10)=dist_actual;
            end
        end
        
        %Se almacena en el arreglo de distancias minimas el vector
        %de 10 componentes
        dist_minimas{x} = bloque_minimo;
    end
end

%Funcion dist_acumulada:
%Recibe los vectores de distorciones minimas de 10 elementos y calcula un 
%solo vector de distorciones acumuladas

function distancia_acumulada = dist_acumulada(vectores_dist,n)
    distancia_acumulada = [];
    distancia_acumulada(1:n) = 0;
    for x = 1:length(vectores_dist)
        %Se toma el vector de distorsiones actual
        vector_actual = vectores_dist{x};
        %Se suma cada componente n del vector al vector que acumula
        %las distancias
        for y = 1:n
           distancia_acumulada(y) = distancia_acumulada(y)+vector_actual(y);
        end
    end
end


function indice = get_indice(vector,n)
    minimo = vector(1);
    indice = 1;
    for x = 2:n
        if vector(x)< minimo
            minimo = vector(x);
            indice = x;
        end    
    end
end
