import wollok.game.*

object colores {

	const property verde = "00FF00FF"
	const property rojo = "FF0000FF"

}

//solo imagen
object dodain {
	const property name = "dodain"
	const property image = "dodine.png"
	var property position = game.at(3, 3)

}

//texto, imagen y color
object nahuel {
	const property name = "rasta"
	const property image = "rasta.png"
	var property position = game.at(7, 3)
	var visitante = null

	method visitadoPor(alguien) {
		visitante = alguien
	}

	method visitado() {
		return visitante != null
	}

	method text() {
		return if (self.visitado()) "¡Qué piola! ¡Vino " + visitante.name() + "!" else "¡Qué bajón!"
	}

	method textColor() {
		return if (self.visitado()) colores.verde() else colores.rojo()
	}

}

object soloTexto {

	const property position = game.at(5, 9)
	const property text = "¿A dónde vas Dodain?"

}

object invisible {

	const property position = game.at(5, 3)

}