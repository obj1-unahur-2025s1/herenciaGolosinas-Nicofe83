import golosinas.*

class Persona {
	const golosinas = []
	
	method comprar(golosina) {
		golosinas.add(golosina)
	}
	
	method desechar(golosina) {
		golosinas.remove(golosina)
	}
	
	method golosinas() = golosinas
	
	method primerGolosina() = golosinas.first()
	
	method ultimaGolosina() = golosinas.last()
	
	method pesoGolosinas() = golosinas.sum({ golo => golo.peso() })
	
	method probarGolosinas() {
		golosinas.forEach({ golosina => golosina.mordisco() })
	}
	
	method golosinaMasPesada() = golosinas.max({ golo => golo.peso() })
	
	method hayGolosinaSinTACC() = golosinas.any(
		{ golosina => golosina.libreGluten() }
	)
	
	method preciosCuidados() = golosinas.all(
		{ golosina => golosina.precio() < 10 }
	)
	
	method golosinaDeSabor(_sabor) = golosinas.find(
		{ golosina => golosina.sabor() == _sabor }
	)
	
	method golosinasDeSabor(_sabor) = golosinas.filter(
		{ golosina => golosina.sabor() == _sabor }
	)
	
	method sabores() = golosinas.map({ golosina => golosina.sabor() }).asSet()
	
	method golosinaMasCara() = golosinas.max({ _golosina => _golosina.precio() })
	
	method golosinasFaltantes(golosinasDeseadas) = golosinasDeseadas.difference(
		golosinas
	)
	
	method saboresFaltantes(_saboresDeseados) = _saboresDeseados.filter(
		{ _saborDeseado => !self.tieneGolosinaDeSabor(_saborDeseado) }
	)
	
	method tieneGolosinaDeSabor(_sabor) = golosinas.any(
		{ _golosina => _golosina.sabor() == _sabor }
	)
}