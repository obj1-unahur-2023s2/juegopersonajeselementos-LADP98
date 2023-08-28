import armas.*
import elementos.*

object floki {
	var arma
	
	method armaEquipada() = arma
	method armaEquipada(unArma){
		arma = unArma
	}
	method encontrar(elemento){
		if(arma.estaCargada()){
			elemento.recibirAtaque(arma.potencia())
			arma.usar()
		}
	}
}

object mario {
	var valorRecolectado = 0
	var ultimoElemento
	
	method valorRecolectado() = valorRecolectado
	
	method encontrar(elemento){
		elemento.recibirTrabajo()
		valorRecolectado += elemento.valorTrabajo()
		ultimoElemento = elemento
	}
	method esFeliz(){
		return valorRecolectado >= 50 || ultimoElemento.altura() >= 10
	}
}
