object rolando {
 var capacidadMochila = 2
 var property elementosMochila = #{}
 var property historialElementos = []
 method recolectar(objeto) {
    self.historialElementos().add(objeto)
   self.puedeRecolectar()
   elementosMochila.add(objeto)
 }
 method puedeRecolectar(){
    if (elementosMochila.size()>=capacidadMochila){

        self.error("no se pueden agarrar más objetos")
    }
 }
 method llegarA(lugar) {
   lugar.almacenarObjetos(elementosMochila)
   elementosMochila.clear()
 }
 method elementosTotales() {
   return elementosMochila + castilloPiedra.elementosCastillo()
 }
 method tieneElemento(elemento){
    return self.elementosTotales().filter({artefacto => artefacto == elemento}).size()>0
 }
}

object espadaDelDestino{
    method recolectar(){

    }
}
object libroDeHechizos{
    method recolectar(){

    }
}
object collarDivino{
    method recolectar(){

    }
}
object armaduraAceroValyrio{
    method recolectar(){

    }
}
object castilloPiedra{
    var property elementosCastillo = #{}
    method almacenarObjetos(lista) {
      elementosCastillo = elementosCastillo + lista
    }

}