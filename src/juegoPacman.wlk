import wollok.game.*

object pacman {

	var property image = "pacman.png"
	var property position = game.origin()
	var vidas = 10
	
	method vidas() = vidas
	
	method perderVida(){
		vidas = vidas - 1
		position = game.origin()
	}
	
	method chocarConRival_(rival){
		self.perderVida()
		rival.position(game.at(5,5))
	}
	
	
}

object fantasma{
	var property image = "rival1.png"
	var property position = game.at(5,2)
	
	method acercarseA_(personaje){
		var posPacman = personaje.position()
		var newX = position.x() + if(posPacman.x() > position.x()) {1} else {-1}
		var newY = position.y() + if(posPacman.y() > position.y()) {1} else {-1}
		
		position = game.at(newX, newY)
	}
}
object fantasma2{
	var property image = "rival2.png"
	var property position = game.at(7,4)
	
	method acercarseA_(personaje){
		var posPacman = personaje.position()
		var newX = position.x() + if(posPacman.x() > position.x()) {1} else {-1}
		var newY = position.y() + if(posPacman.y() > position.y()) {1} else {-1}
		
		position = game.at(newX, newY)
	}
}



