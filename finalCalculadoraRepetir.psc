Algoritmo calculadoraHastaSalir
	//¡Esto es una calculadora!
	
	//Definir es una palabra reservada
	//Tipos dato: Real
	Definir a, b Como Real
	Definir resultado Como Real
	//opciones es una variable, aquí se define su tipo
	//Tipos dato: Cadena
	Definir opciones como cadena
	
	Escribir "Por favor introduce números positivos, que no sean 0"
	Escribir " "
	Escribir "Operaciones disponibles: "
	Escribir "+, -, *, /, raiz"
	Escribir  "valorabs, logaritmo, funcionexp, seno, coseno"
	Escribir  "tangente, arcosen, arcotang, redondeo"
	Escribir "acumulador, Fibonacci, Mayor"
	Escribir "SALIR -> pulse s"
	Escribir " "
	//Programación indicativa -> iteración -> Repetir 
	// Repetir
	Repetir
		Escribir "¿Qué deseas calcular?"
		//leer
		leer opciones 
		si opciones = "s"
			// "fin" es un literal
			//escribir 
			escribir "fin"
		sino 
			// Op.Logico O
			si opciones="+" o opciones="-" o opciones="*" o opciones="/" o opciones="Mayor" entonces
				Escribir "introduce un número"
				leer a
				Escribir "introduce otro número"
				leer b	
			sino 
				Escribir "introduce un número"
				leer a
			FinSi
		FinSi
		segun opciones hacer
			caso "+":
				//Op.Relacionales -> "="
				resultado = suma(a,b)
			caso "-":
				resultado = resta(a,b)
			caso "*":
				resultado = multiplica(a,b)
			caso "/":
				resultado = division(a,b)
			caso "raiz":
				resultado = RAIZ(a)
			caso "valorabs":
				resultado = ABS (a)
			caso "logaritmo":
				resultado = LN(a)
			caso "funcionexp":
				resultado = EXP (a)
			caso "seno":
				resultado = SEN(a)
			caso "coseno":
				resultado = COS(a)
			caso "tangente":
				resultado = TAN(a)
			caso "arcosen":
				resultado = ASEN(a)
			caso "arcocosen":
				resultado = ACOS(a)
			caso "arcotang":
				resultado = ATAN(a)
			caso "partent":
				resultado = TRUNC(a)
			caso "redondeo":
				resultado = REDON(a)
			caso "acumulador":
				resultado = acumulador(a)
			caso "Fibonacci":
				hastaFibonacci(a)
			caso "Mayor":
				resultado2=esMayor(a,b)
			De Otro Modo:
				resultado = 0
		FinSegun
		
		si resultado <> 0
			Escribir "resultado :", resultado
		FinSi
		
	Hasta Que opciones = "s"
	
FinAlgoritmo


//prog modula -> funciones y procedimientos
Funcion resultado=suma(a,b)
	//Expresión
	resultado = a + b
FinFuncion

Funcion resultado=resta(a,b)
	//Op. Aritmética -> resta
	resultado = a - b
FinFuncion

Función resultado=multiplica(a,b)
	resultado= a * b
FinFuncion

Funcion resultado=division(a,b)
	si a<>0 Y b<>0 Entonces
		resultado = a/b
	FinSi
FinFuncion

Funcion resultado=acumulador(a)
	//Contador -> para utiliza el contador i hasta i =10
	//Acumulador -> "sumador" ejerce de acumulador
	//Para 
	Para i = 0 hasta 10 Con Paso 0.87 Hacer
		//Euler <- Constante
		sumador = sumador + (Euler*a)
	FinPara
	resultado = sumador
FinFuncion

Funcion hastaFibonacci(a)
	elPrimero = 0
	elSegundo = 1
	Escribir "Los número de las serie Fibonacci hasta ", a, " son: "
	
	Mientras elPrimero < a Hacer
		Escribir elPrimero
		siguiente = elPrimero + elSegundo
		elPrimero = elSegundo
		elSegundo = siguiente
		//cambio de estado arriba
		
	Fin Mientras 
FinFuncion

Funcion resultado=esMayor(a,b)
	si a > b Entonces
		resultado = Verdadero
		Escribir resultado
	SiNo
		si a < b O a=b Entonces
			resultado = Falso
			//Tipos dato: Lógico
			Escribir resultado
		FinSi
	FinSi
FinFuncion

