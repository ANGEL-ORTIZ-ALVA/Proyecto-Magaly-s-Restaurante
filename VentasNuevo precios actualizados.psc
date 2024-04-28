Algoritmo VentasDia
	//DECLARACION
	Definir venta,ventaH,ventaS,ventaB,ventaA,ventaBe como CADENA
    Definir cantH,cantHCl,cantHCh,cantHR,cantHLa,cantHTV Como Entero//CANTIDAD DE HAMBURGUESAS
    Definir cantS,cantSaClSi,cantSaClRe,cantSaCh,cantSTV Como Entero//CANTIDAD DE SALCHIPAPAS
    Definir cantB,cantBrAl,cantBrEn,cantBrPe,cantBTV Como Entero//CANTIDAD DE BROSTERS
	Definir cantA,cantAnSi,cantRa,cantMo,cantMi,cantATV Como Entero//CANTIDAD DE ANTICUCHOS
	Definir cantBe,cantMa,cantBeCh,cantBeTV Como Entero//CANTIDAD DE BEBIDAS
    Definir precio Como Real
    Definir ventaHaCl,ventaHaCh,ventaHaRo,ventaHaLa,ventaHT Como Real//VENTA DE HAMBURGUESAS
    Definir ventaSaClSi,ventaSaClRe,ventaSaCH,ventaST como real//VENTA DE SALCHIPAPAS
    Definir ventaBrAl,ventaBrEn,ventaBrPe,ventaBT Como Real//VENTA DE BROSTERS
    Definir ventaAnSi,ventaAnRa,ventaAnMo,ventaAnMi,ventaAT como real//VENTA DE ANTICUCHOS
	Definir ventaBeMa,ventaBeCh,ventaBeT Como Real//VENTA DE BEBIDAS
    Definir seguir,continuar como cadena
	Repetir
		Escribir "MENÚ"
		Escribir " HAMBURGUESA | SALCHIPAPA | BROSTER | ANTICUCHO | BEBIDA"
		Escribir "Ingrese venta:"
		Leer venta
		Escribir "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
		Si (venta<>"HAMBURGUESA" Y venta<>"SALCHIPAPA" Y venta<>"BROSTER" Y venta<>"ANTICUCHO" Y venta<>"BEBIDA") Entonces
			Imprimir "###################### ERROR!! PRODUCTO INCORRECTO ######################"
		SiNo
			Si (venta=="HAMBURGUESA") Entonces
				Repetir
					Repetir
						Escribir " CLÁSICA | CHEESE BURGER | ROYAL | LA TOP"
						Escribir "Ingrese tipo de hamburguesa"
						Leer ventaH
						Escribir "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
						SI (ventaH<>"CLÁSICA" y ventaH<>"CHEESE BURGER" y ventaH<>"ROYAL" y ventaH<>"LA TOP") Entonces
							Imprimir "############### ERROR!! TIPO DE HAMBURGUESA INCORRECTO ##################"
						FinSi
						Hasta Que(ventaH=="CLÁSICA" O ventaH=="CHEESE BURGER" O ventaH=="ROYAL" O ventaH=="LA TOP") 
						Si (ventaH=="CLÁSICA" O ventaH=="CHEESE BURGER" O ventaH=="ROYAL" O ventaH=="LA TOP") Entonces
							Repetir 
								Escribir "Ingrese cantidad de hamburguesas"
								Leer cantH
								Escribir "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
								Si (cantH<=0) Entonces
									Imprimir "################## ERROR!! CANTIDAD NEGATIVA O NULA #####################"
								FinSi
							Hasta Que (cantH>0)
						FinSi
						Si (cantH>0) Entonces
							Segun ventaH hacer
								Caso "CLÁSICA"://POLLO O CARNE
									precio<-5.00
								Caso "CHEESE BURGER":
									precio<-5.50
								Caso "ROYAL":
									precio<-7.00
								Caso "LA TOP":
									precio<-10.00
							FinSegun
							SI (ventaH=="CLÁSICA") Entonces
								cantHCl<-cantH
								ventaHaCl<-precio*cantH
							SiNo
								si(ventaH=="CHEESE BURGER") Entonces
									cantHCh<-cantH
									ventaHaCh<-precio*cantH
								SiNo
									si (ventaH=="ROYAL") Entonces
										cantHR<-cantH
										ventaHaRo<-precio*cantH
									SiNo
										si(ventaH=="LA TOP") Entonces
											cantHLa<-cantH
											ventaHaLa<-precio*cantH
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
						SI (venta=="HAMBURGUESA") Entonces
							Repetir
								Escribir "¿CONTINUAR VENTA DE HAMBURGUESAS?"
								Leer continuar
								Escribir "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
								Si (continuar<>"SI" y continuar<>"NO") Entonces
									Imprimir "###################### ERROR!! RESPUESTA INVALIDA #######################"
								FinSi
								Si (continuar=="SI") Entonces
									Escribir "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
								FinSi
							Hasta Que (continuar=="SI") O (continuar=="NO") 
							
						SiNo 
							
						FinSi 
					Hasta Que (continuar=="NO") O (venta<>"HAMBURGUESA")
				FinSi
			FinSi
			si (venta=="SALCHIPAPA") Entonces
				Repetir
					Repetir
						Escribir "CLÁSICA SIMPLE | CLÁSICA REGULAR | CHORIPAPA"
						Escribir "Ingrese tipo de salchipapa"
						Leer ventaS
						Escribir "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
						SI (ventaS<>"CLÁSICA SIMPLE" y ventaS<>"CLÁSICA REGULAR" y ventaS<>"CHORIPAPA")
							Imprimir "################ ERROR!! TIPO DE SALCHIPAPA INCORRECTO ##################"
						FinSi
					Hasta Que (ventaS=="CLÁSICA SIMPLE" O ventaS=="CLÁSICA REGULAR" O ventaS=="CHORIPAPA")
					Si (ventaS=="CLÁSICA SIMPLE" O ventaS=="CLÁSICA REGULAR" O ventaS=="CHORIPAPA") Entonces
						Repetir
							Escribir "Ingrese cantidad de salchipapas"
							Leer cantS
							Escribir "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
							Si (cantS<=0) Entonces
								Imprimir "################## ERROR!! CANTIDAD NEGATIVA O NULA #####################"
							FinSi
							
						Hasta Que (cantS>0)
						Si (cantS>0) Entonces
							Segun ventaS Hacer
								Caso "CLÁSICA SIMPLE":
									precio<-3.00
								Caso "CLÁSICA REGULAR":
									precio<-5.00
								Caso "CHORIPAPA":
									precio<-6.00
							FinSegun
							SI (ventaS=="CLÁSICA SIMPLE") Entonces
								cantSaClSi<-cantS
								ventaSaClSi<-precio*cantS
							SiNo
								si(ventaS=="CLÁSICA REGULAR") Entonces
									cantSaClRe<-cantS
									ventaSaClRe<-precio*cantS
								SiNo
									si (ventaS=="CHORIPAPA") Entonces
										cantSaCh<-cantS
										ventaSaCH<-precio*cantS
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
					SI (venta=="SALCHIPAPA") Entonces
						Repetir
							Escribir "¿CONTINUAR VENTA DE SALCHIPAPAS?"
							Leer continuar
							Escribir "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
							Si (continuar<>"SI" y continuar<>"NO") Entonces
								Imprimir "###################### ERROR!! RESPUESTA INVALIDA #######################"
							FinSi
							Si (continuar=="SI") Entonces
								Escribir "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
							FinSi
						Hasta Que (continuar=="SI") O (continuar=="NO")
						
					SiNo
						
					FinSi
				Hasta Que (continuar=="NO") O (venta<>"SALCHIPAPA") 
			FinSi	
			si (venta=="BROSTER") Entonces
				Repetir
					Repetir
						Escribir "ALITA | ENCUENTRO | PECHO"
						Escribir "Ingrese parte del broster"
						Leer ventaB
						Escribir "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
						SI (ventaB<>"ALITA" y ventaB<>"ENCUENTRO" y ventaB<>"PECHO") Entonces
							Imprimir "################# ERROR!! PARTE DE BROSTER INCORRECTO ###################"
						FinSi
					Hasta Que (ventaB=="ALITA" o ventaB=="ENCUENTRO" o ventaB=="PECHO")
					Si (ventaB=="ALITA" o ventaB=="ENCUENTRO" o ventaB=="PECHO") Entonces
						Repetir
							Escribir "Ingrese cantidad de brosters"
							Leer cantB
							Escribir "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
							Si (cantB<=0) Entonces
								Imprimir "################## ERROR!! CANTIDAD NEGATIVA O NULA #####################"
							FinSi
						Hasta Que (cantB>0)	
						Si (cantB>0) Entonces
							Segun ventaB Hacer
								Caso "ALITA":
									precio<-7.00
								Caso "ENCUENTRO":
									precio<-8.00
								Caso "PECHO":
									precio<-10.00
							FinSegun
							SI (ventaB=="ALITA") Entonces
								cantBrAl<-cantB
								ventaBrAl<-precio*cantB
							SiNo
								si(ventaB=="ENCUENTRO") Entonces
									cantBrEn<-cantB
									ventaBrEn<-precio*cantB
								SiNo
									si (ventaB=="PECHO") Entonces
										cantBrPe<-cantB
										ventaBrPe<-precio*cantB
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
					si (venta=="BROSTER") Entonces
						Repetir
							Escribir "¿CONTINUAR VENTA DE BROSTERS?"
							Leer continuar
							Escribir "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
							Si (continuar<>"SI" y continuar<>"NO") Entonces
								Imprimir "###################### ERROR!! RESPUESTA INVALIDA #######################"
							FinSi
							Si (continuar=="SI") Entonces
								Escribir "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
							FinSi
						Hasta Que (continuar=="SI") O (continuar=="NO")
						
					SiNo
						
					FinSi
				Hasta Que (continuar=="NO") O (venta<>"BROSTER") 
			FinSi
			si (venta=="ANTICUCHO") Entonces
				Repetir
					Repetir
						Escribir "SIMPLE | RACHI | MOLLEJITAS | MIXTO"
						Escribir "Ingrese TIPO de anticucho"
						Leer ventaA
						Escribir "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
						SI (ventaA<>"SIMPLE" y ventaA<>"RACHI" y ventaA<>"MOLLEJITAS" y ventaA<>"MIXTO") Entonces
							Imprimir "################ ERROR!! TIPO DE ANTICUCHO INCORRECTO ###################"
						FinSi
					Hasta Que (ventaA=="SIMPLE" O ventaA=="RACHI" O ventaA=="MOLLEJITAS" O ventaA=="MIXTO")
					Si (ventaA=="SIMPLE" O ventaA=="RACHI" O ventaA=="MOLLEJITAS" O ventaA=="MIXTO") Entonces
						Repetir
							Escribir "Ingrese cantidad de ANTICUCHOS"
							Leer cantA
							Escribir "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
							Si (cantA<=0) Entonces
								Imprimir "#################### ERROR!! CANTIDAD NEGATIVA O NULA ######################"
							FinSi
							
						Hasta Que (cantA>0)
						
						Si (cantA>0) Entonces
							Segun ventaA hacer
								caso "SIMPLE":
									precio<-10.00
								Caso "RACHI":
									precio<-7.00
								Caso "MOLLEJITAS":
									precio<-7.0
								Caso "MIXTO":
									precio<-12.00	
							FinSegun
							SI (ventaA=="SIMPLE") Entonces
								cantAnSi<-cantA
								ventaAnSi<-precio*cantA
							SiNo
								si(ventaA=="RACHI") Entonces
									cantRa<-cantA
									ventaAnRa<-precio*cantA
								SiNo
									si (ventaA=="MOLLEJITAS") Entonces
										cantMo<-cantA
										ventaAnMo<-precio*cantA
									SiNo
										si(ventaA=="MIXTO") Entonces
											cantMi<-cantA
											ventaAnMi<-precio*cantA
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
					si (venta=="ANTICUCHO") Entonces
						Repetir
							Escribir "¿CONTINUAR VENTA DE ANTICUCHOS?"
							Leer continuar
							Escribir "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
							Si (continuar<>"SI" y continuar<>"NO") Entonces
								Imprimir "###################### ERROR!! RESPUESTA INVALIDA #######################"
							FinSi
							Si (continuar=="SI") Entonces
								Escribir "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
							FinSi
						Hasta Que (continuar=="SI") O (continuar=="NO")
						
					SiNo
						
					FinSi
				Hasta Que (continuar=="NO") O (venta<>"ANTICUCHO") 
					
			FinSi
			SI (venta=="BEBIDA") Entonces
				Repetir
					Repetir
						Escribir "MARACUYÁ | CHICHA"
						Escribir "Ingrese tipo de bebida"
						Leer ventaBe
						Escribir "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
						SI (ventaBe<>"MARACUYÁ" y ventaBe<>"CHICHA") Entonces
							Imprimir "################ ERROR!! TIPO DE BEBIDA INCORRECTO ###################"
						FinSi
					Hasta Que (ventaBe=="MARACUYÁ" O ventaBe=="CHICHA")
					SI (ventaBe=="MARACUYÁ" O ventaBe=="CHICHA") Entonces
						Repetir
							Escribir "Ingrese cantidad de bebidas"
							Leer cantBe
							Escribir "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
							Si (cantBe<=0) Entonces
								Imprimir "################## ERROR!! CANTIDAD NEGATIVA O NULA #####################"
							FinSi
							
						Hasta Que (cantBe>0)
						
						Si (cantBe>0) Entonces
							Segun ventaBe Hacer
								Caso "MARACUYÁ":
									precio<-1.00
								Caso "CHICHA":
									precio<-1.00
							FinSegun
							si (ventaBe=="MARACUYÁ") Entonces
								cantMa<-cantBe
								ventaBeMa<-precio*cantMa
							SiNo
								si (ventaBe=="CHICHA") Entonces
									cantBeCh<-cantBe
									ventaBeCh<-precio*cantBeCh
								FinSi
							FinSi
						FinSi
					FinSi
					SI (venta=="BEBIDA") Entonces
						Repetir
							Escribir "¿CONTINUAR VENTA DE BEBIDAS?"
							Leer continuar
							Escribir "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
							Si (continuar<>"SI" y continuar<>"NO") Entonces
								Imprimir "###################### ERROR!! RESPUESTA INVALIDA #######################"
							FinSi
							Si (continuar=="SI") Entonces
								Escribir "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
							FinSi
						Hasta Que (continuar=="SI") O (continuar=="NO")
					SiNo
						
					FinSi
				Hasta Que (continuar=="NO") O (venta<>"BEBIDA") 
			FinSi
			SI ((venta=="HAMBURGUESA" Y (ventaH=="CLÁSICA" O ventaH=="CHEESE BURGER" O ventaH=="ROYAL" O ventaH=="LA TOP") Y cantH>0) O (venta=="SALCHIPAPA" Y (ventaS=="CLÁSICA SIMPLE" O ventaS=="CLÁSICA REGULAR" O ventaS=="CHORIPAPA") Y cantS>0) O (venta=="BROSTER" Y ( ventaB=="ALITA" O ventaB=="ENCUENTRO" O ventaB=="PECHO") Y cantB>0) O (venta=="ANTICUCHO" Y (ventaA=="SIMPLE" O ventaA=="RACHI" O ventaA=="MOLLEJITAS" O ventaA=="MIXTO") Y cantA>0) O (venta=="BEBIDA" Y (ventaBe=="MARACUYÁ" O ventaBe=="CHICHA") Y cantBe>0))Entonces
				Repetir
					Escribir "¿AGREGAR NUEVA VENTA?"
					Leer seguir
					Escribir "_  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _"
					Si (seguir<>"SI" y seguir<>"NO") Entonces
						Imprimir "###################### ERROR!! RESPUESTA INVALIDA #######################"
					FinSi
					Si (seguir=="SI") Entonces
						Escribir "_________________________________________________________________________"
					FinSi
				Hasta Que (seguir=="SI") O (seguir=="NO")
			SiNo
				
			FinSi
			
		SI (seguir=="NO") Entonces
			ventaHT<-ventaHaCl+ventaHaCh+ventaHaRo+ventaHaLa
			cantHTV<-cantHCl+cantHCh+cantHR+cantHLa
			ventaST<-ventaSaClSi+ventaSaClRe+ventaSaCH
			cantSTV<-cantSaClSi+cantSaClRe+cantSaCh
			ventaBT<-ventaBrAl+ventaBrEn+ventaBrPe
			cantBTV<-cantBrAl+cantBrEn+cantBrPe
			ventaAT<-ventaAnSi+ventaAnRa+ventaAnMo+ventaAnMi
			cantATV<-cantAnSi+cantRa+cantMo+cantMi
			ventBeT<-ventaBeMa+ventaBeCh
			cantBeTV<-cantMa+cantBeCh
			ventTS<-ventaHT+ventaST+ventaBT+ventaAT+ventBeT
			Imprimir ""
			Imprimir "************************************************************************"
			Imprimir "*                           REPORTE VENTAS                             *"
			Imprimir "************************************************************************"
			Imprimir ""
			Imprimir "//////////////////////////// HAMBURGUESAS \\\\\\\\\\\\\\\\\\\\\\\\\\\\\"
			Imprimir " La cantidad de hamburguesas clasicas vendidas es:",cantHCl
			Imprimir " La cantidad de hamburguesas cheese burger vendidas es:",cantHCh
			Imprimir " La cantidad de hamburguesas royal vendidas es:",cantHR
			Imprimir " La cantidad de hamburguesas la top vendidas es:",cantHLa
			Imprimir " La cantidad de hamburguesas totales vendidas es:",cantHTV
			Imprimir " La venta de hamburguesas total es de:S/",ventaHT
			Imprimir "-----------------------------------------------------------------------"
			Imprimir "//////////////////////////// SALCHIPAPAS \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"
			Imprimir " La cantidad de salchipapas clasicas simples vendidas es:",cantSaClSi
			Imprimir " La cantidad de salchipapas clasicas regulares vendidas es:",cantSaClRe
			Imprimir " La cantidad de choripapas vendidas es:",cantSaCh
			Imprimir " La cantidad de salchipapas totales vendidas es:",cantSTV
			Imprimir " La venta de salchipapas total es de:S/",ventaST
			Imprimir "-----------------------------------------------------------------------"
			Imprimir "////////////////////////////// BROSTERS \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"
			Imprimir " La cantidad de brosters parte alita vendida es:",cantBrAl
			Imprimir " La cantidad de brosters parte encuentro vendido es:",cantBrEn
			Imprimir " La cantidad de brosters parte pecho vendido es:",cantBrPe
			Imprimir " La cantidad de brosters totales vendidos es:",cantBTV
			Imprimir " La venta de brosters total es de:S/",ventaBT
			Imprimir "-----------------------------------------------------------------------"
			Imprimir "///////////////////////////// ANTICUCHOS \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"
			Imprimir " La cantidad de anticuchos simples vendidos es:",cantAnSi
			Imprimir " La cantidad de rachi vendido es:",cantRa
			Imprimir " La cantidad de mollejitas vendidas es:",cantMo
			Imprimir " La cantidad de mixtos vendidos es:",cantMi
			Imprimir " La cantidad de ANTICUCHOS totales vendidos es:",cantATV
			Imprimir " La venta de anticuchos total es de:S/",ventaAT
			Imprimir "-----------------------------------------------------------------------"
			Imprimir "////////////////////////////// BEBIDAS \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"
			Imprimir " La cantidad de bebidas de maracuyá vendida es:",cantMa
			Imprimir " La cantidad de bebidas de chicha vendida es:",cantBeCh
			Imprimir " La cantidad de bebidas totales vendidas es:",cantBeTV
			Imprimir " La venta de bebidas total es de:S/",ventBeT
			Imprimir "-----------------------------------------------------------------------"
			Imprimir "LA VENTA TOTAL DE LA SEMANA ES DE:S/",ventTS " (^.^) "
		FinSi
Hasta Que (seguir=="NO")
FinAlgoritmo
