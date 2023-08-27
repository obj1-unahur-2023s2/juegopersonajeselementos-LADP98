object castillo {
	const altura = 20
	var defensa = 150
	
	method altura() = altura
	method defensa() = defensa
	
	method recibirAtaque(unValor){
		defensa = 0.max(defensa - unValor)
	}
	method valorTrabajo() = defensa / 5
	method recibirTrabajo() = 200.min(defensa + 20)
}

object aurora {
	const altura = 1
	var viva = true
	
	method altura() = altura
	method viva() = viva
	
	method recibirAtaque(unValor){
		viva = unValor <= 10 && viva
	}
	method valorTrabajo() = 15
	method recibirTrabajo() {}
}

object tipa {
	var altura = 8

	method altura() = altura
	
	method recibirAtaque(unValor){}
	method valorTrabajo() = altura * 2
	method recibirTrabajo(){
		altura = altura + 1
	}
}