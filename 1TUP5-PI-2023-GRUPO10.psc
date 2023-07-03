Proceso  SysacadTPractico
	
	Definir notas, num_opc, i,j, pos_menor, aux Como Entero
	Dimension notas[200]
	Dimension nombre_apellido[200]
	
	// Leer datos
	Repetir
		
		Escribir "MENU"
		Escribir "1. Cargar estudiantes "
		Escribir "2. Nota más alta "
		Escribir "3. Ordenar mayor y menor "
		Escribir "4. Mostrar "
		Escribir "5. SALIR "
		leer num_opc
		si num_opc <> 5
			
			Segun num_opc hacer
				1:
					Escribir "Ingrese la cantidad de datos: "
					Leer cantidad_elementos
					Para i<-1 Hasta cantidad_elementos Hacer
						Escribir "Nombre y apellido ",i,":"
						Leer nombre_apellido[i]
						Repetir
							Escribir "Ingrese el dato ",i,":"
							Leer notas[i]
						Hasta Que notas[i] > 0
					FinPara
					
				2:
					
					mayor <- notas[1]
					
					Para i<-1 Hasta cantidad_elementos Hacer
						numero <- notas[i]
						Si numero > mayor Entonces
							mayor = numero
						FinSi
					FinPara
					
					Para i<-1 hasta cantidad_elementos Hacer
						Escribir "Nombre y apellido: ", nombre_apellido[i]
						Escribir "NOTA: ", notas[I]
					FinPara
					
					Escribir "Nota mayor: ", mayor
				3: 
					Escribir "NOTAS MAYOR A MENOR"
					Definir aux2 Como Caracter
					para i <- 1 hasta cantidad_elementos-1 con paso 1 Hacer       
						min <- i;  	
						Para j<-i+1 Hasta cantidad_elementos Con Paso 1 Hacer           
							Si notas[j] > notas[min] Entonces 			
								min <- j;				
							Fin Si	
						FinPara       
						
						aux <- notas[i];
						notas[i] <- notas[min];
						notas[min] <- aux;      
						
						aux2 <- nombre_apellido[i];
						nombre_apellido[i] <- nombre_apellido[min];
						nombre_apellido[min] <- aux2;  
						
					FinPara
					Para i <- 1 hasta cantidad_elementos hacer
						Escribir nombre_apellido[i] ," : ", notas[i]
					FinPara
				4:
					Para i<-1 hasta cantidad_elementos Hacer
						Escribir "Nombre y apellido: ", nombre_apellido[i]
						Escribir "NOTA: ", notas[I]
						Escribir " "
					FinPara
					
					
					Escribir "Nota mayor: ", mayor
			FinSegun
			
		FinSi
	Hasta Que num_opc = 5
FinProceso

//Si usamos subproceso para la carga de datos el programa empieza a dar MAL todos los valores.


//SubProceso CARGA_DATOS (nombre_apellido, notas)

//Escribir "Ingrese la cantidad de datos: "
//Leer cantidad_elementos
//Para i<-1 Hasta cantidad_elementos Hacer
//Escribir "Nombre y apellido"
//Leer nombre_apellido[i]
//Escribir "Ingrese el dato ",i,":"
//Leer notas[i]
//FinPara

//FinSubProceso