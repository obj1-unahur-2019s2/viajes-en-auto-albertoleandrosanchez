
//CLIENTES
object ludmila {
	method precioPorKms() { return 18}
}

object ana_Maria{
	var estaEstable= true
	
	method precioPorKms() {
		if (estaEstable){
			return 30
		}
		else return 25
	}
}

object teresa {
	var precio = 22
	method precioPorKms(){
		return precio
	}
}

//REMISERAS
object roxana {
	method precioViaje (cliente,kms){
		return cliente.precioPorKms()*kms
	}
}

object gabriela {
	method precioViaje(cliente,kms){
	return (cliente.precioPorKms()*1.2)*kms
	}
}

object mariela {
	method precioViaje(cliente,kms){
		var resultado
		resultado = cliente.precioPorKms()*kms
		return resultado.max(50)
	}
}

object juana{
	method precioViaje(cliente,kms){
		if (kms>8){
			return 200
		}
		else return 100
	}
}

//LUCIA Y LA CADETE

object lucia {
	
		var remiseraReemplazada
		method estasReemplazandoA(remisera){
			remiseraReemplazada = remisera
		}
		method precioViaje(cliente,kms){
		return remiseraReemplazada.precioViaje(cliente,kms)
	}
}

object melina {
	var clienteActual
	
	method clienteATrabajar(cliente){
		clienteActual = cliente
	}
	method precioPorKms(){
		return clienteActual.precioViaje()-3
	}	
}

//oficina cooperativa

object oficina{
	
	var remiseraPrincipal
	var remiseraSecundaria
	
	method asignarRemiseras(remisera1,remisera2){
		remiseraPrincipal = remisera1
		remiseraSecundaria =remisera2
	}
	method cambiarPrimeraRemiseraPor(remisera){
		remiseraPrincipal = remisera
	}
	method cambiarSegundaRemiseraPor(remisera){
		remiseraSecundaria = remisera
	}
	method intercambiarRemiseras (){
		var remisera1 = remiseraPrincipal
		var remisera2 = remiseraSecundaria
		remiseraPrincipal = remisera2
		remiseraSecundaria = remisera1 
	}
	method remiseraElegidaParaViaje (cliente,kms){
		//agregado de 30 pesos a la secundaria para marcar la diferencia
		if(remiseraPrincipal.precioViaje(cliente,kms) < remiseraSecundaria.precioViaje(cliente,kms)+30){
			return remiseraPrincipal
		}
		else return remiseraSecundaria
	}
}