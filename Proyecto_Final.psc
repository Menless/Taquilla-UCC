Funcion tabla_atraciones()
	// esta funcion es la que coloca la tabla en pantalla
	Escribir "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||";
	Escribir "| Atraccion         | CODIGO A DIGITAR      |                                     Precio |";
	Escribir "| Atraccion1        |  A1                   |                                      50000 |";
	Escribir "| Atraccion2        |  A2                   |                                      50000 |";
	Escribir "| Atraccion3        |  A3                   |                                      50000 |";
	Escribir "| Atraccion4        |  A4                   |                                      50000 |";
	Escribir "| Atraccion5        |  A5                   |                                      50000 |";
	Escribir "| Atraccion6        |  A6                   |                                      50000 |";
	Escribir "| Atraccion7        |  A7                   |                                      50000 |";
	Escribir "| Atraccion8        |  A8                   |                                      50000 |";
	Escribir "| Atraccion9        |  A9                   |                                      50000 |";
	Escribir "| Atraccion10       |  A10                  |                                      50000 |";
	Escribir "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||";	
FinFuncion


Algoritmo simulador_taquilla_parque
	Definir a,t  Como entero
	a<- 50000
	Dimension atr[10]
	// arreglo para poder colocar el nombre de la atraccion para cobrar al cliente
	atr[1]<- A1
	atr[2]<- A2
	atr[3]<- A3 
	atr[4]<- A4
	atr[5]<- A5 
	atr[6]<- A6
	atr[7]<- A7 
	atr[8]<- A8 
	atr[9]<- A9 
	atr[10]<- A10 
	Escribir "";
	Escribir "***************************************";
	Escribir "  Bienvenido a la Taquilla del parque"
	Escribir "************************************+**";
	Escribir "";

	Mientras ciclo == Falso Hacer
		Escribir  "Desea comprar tiquetes para las atracciones del parque o desea armar combos";
		Escribir "     ATRACCIONES          COMBOS";
		Escribir "         [1]                [2]";
		Leer answer;
		an<- ConvertirANumero(answer)
			Segun  an hacer
				1:
					tabla_atraciones
					Escribir "";
					Escribir "Digite el codigo de la atraccion y la cantidad de tiquetes que desea comprar";
					Leer code, amount;
					can<-ConvertirANumero(amount);
					t<- can * a;
					Escribir "total a pagar es: $", t;
					ciclo1 = Verdadero
				2:
					tabla_atraciones
					Escribir "";
					Escribir "Digite el codigo de las atracciones que desea hacer combo [RECORDAR QUE EL COMBO TIENE 10% DE DESCUENTO] "
					Leer c1,c2,c3;
					a<- a*3;
					t<- a*0.10;
					Escribir "El valor del combo es: $", t;
					ciclo1 = Verdadero
				De Otro Modo:
					Escribir "Por favor digitar [1] o [2]"
					// falta arreglar este error para que no se bugee en caso de que se de un numero diferente a 1 y 2
			FinSegun
		Escribir "";
		Escribir "¿Desea seguir comprando?";
		Escribir "   [Y]                [N]";
		leer answer
		si answer == "Y" o answer == "y"  Entonces
			ciclo = Falso
		SiNo
		si answer == "N" o answer == "n" Entonces
			ciclo = Verdadero
		SiNo
			Escribir "Por favor digitar [Y] o [N]"
		FinSi
		FinSi
	FinMientras

FinAlgoritmo