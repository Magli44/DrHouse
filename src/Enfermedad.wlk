import Persona.*

class EnfermedadInfecciosa {
	var celulasAmenazadas

	constructor(unaCantidadDeCelulasAmenazadas) {
		celulasAmenazadas = unaCantidadDeCelulasAmenazadas
	}
	method efecto(persona) {
		persona.aumentarTemperatura(celulasAmenazadas * 0.001)
	}
	method reproducirse() {
		celulasAmenazadas * 2
	}
	method esAgresiva(persona) {
		return celulasAmenazadas > persona.diezPorCientoDeLasCelulas()
	}
}

class EnfermedadAutoinmune {
	var celulasAmenazadas
	var cantidadDeDiasActiva = 0

	constructor(unaCantidadDeCelulasAmenazadas) {
		celulasAmenazadas = unaCantidadDeCelulasAmenazadas cantidadDeDiasActiva = 0
	}
	method efecto(persona) {
		persona.destruirCelulas(celulasAmenazadas)
		cantidadDeDiasActiva += 1
	}
	method esAgresiva(persona) {
		cantidadDeDiasActiva > 30
	}
}