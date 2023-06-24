Proceso  Sysacad
	
	Definir nota, num_opc, i,j, pos_menor, aux Como Entero
	Dimension notas[200];
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
					Carga_Estudiantes(notas, nombre_apellido)
				2:
					Nota_Mas_Altas(notas, nombre_apellido)
				3: 
					Ordenar_Mayor_Menor(notas, nombre_apellido)
				4:
					
			FinSegun
			
		FinSi
	Hasta Que num_opc = 5
FinProceso

SubProceso Carga_Estudiantes (notas, nombre_apellido Por Referencia)
	Escribir "Ingrese la cantidad de datos: ";
	Leer cantidad_elementos;
	Para i<-1 Hasta cantidad_elementos Hacer
		Escribir "Nombre y apellido"
		Leer nombre_apellido[i]
		Escribir "Ingrese el dato ",i,":"
		Leer notas[i]
	FinPara
	// Inicializar mayor
	mayor <- notas[1]
	menor <- notas[1]
	// Obtener mayor
	Para i<-1 Hasta cantidad_elementos Hacer
		numero <- notas[i]
		Si numero > mayor Entonces
			mayor = numero
		FinSi
		Si numero < menor Entonces
			menor = numero
		FinSi
	FinPara
FinSubProceso

SubProceso Nota_Mas_Altas (notas, nombre_apellido Por Referencia)
	Para i<-1 hasta cantidad_elementos Hacer
		Escribir "Nombre y apellido: ", nombre_apellido[i]
		Escribir "NOTA: ", notas[I]
	FinPara
	
	Escribir "Nota mayor: ", mayor;
FinSubProceso

SubProceso Ordenar_Mayor_Menor(notas, nombre_apellido Por Referencia)
	Escribir "NOTAS MAYOR A MENOR"
	Definir aux2 Como Caracter
	para i <- 1 hasta cantidad_elementos-2 con paso 1 Hacer       
		min <- i;  	
		Para j<-i+1 Hasta cantidad_elementos-1 Con Paso 1 Hacer           
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
FinSubProceso

SubProceso Muestra(notas, nombre_apellido, Nota_Mas_Alta Por Referencia)
	Para i <- 1 hasta cantidad_elementos Hacer
		Escribir "############################################"
		Escribir "######## Solicitud creada con éxito ########"
		Escribir "############################################"
		Escribir "--------------------------------------------"
		Escribir "| Nombre y apellido: ", nombre_apellido
		Escribir "| Nota Mas Alta: ", Nota_Mas_Alta
		Escribir "| Materia a recursar: ", nombre_materia
		Escribir "| Comisión anterior: ", comision
		Escribir "| Turno de preferencia: ", turno
		Escribir "--------------------------------------------"
		Escribir "############################################"
	FinPara
FinSubProceso