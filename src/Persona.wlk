import Enfermedad.*

class Persona {
	var enfermedades = #{ }
	var cantidadDeCelulas
	var temperatura = 36

	constructor(unasCelulas, unaTemperatura) {
		cantidadDeCelulas = unasCelulas temperatura = unaTemperatura
	}

	method pasarUnDia() {
		enfermedades.forEach({ enfermedad => enfermedad.efecto(self) })
	}
	method contraerEnfermedad(enfermedad) {
		enfermedades.add(enfermedad)
	}
	method aumentarTemperatura(unaCantidad) {
		return 45.min(temperatura += unaCantidad)
	}
	method destruirCelulas(unaCantidad) {
		return cantidadDeCelulas -= unaCantidad
	}
	method diezPorCientoDeLasCelulas() {
		return cantidadDeCelulas * 0.1
	}
}