// Producción y Calidad
object calidadBuena {
    method precioUnitario() = 3
}

object calidadRegular {
    var pepeCotizacion = 1
    method cotizacionDePepe(cotizacionActualPepe) {
      pepeCotizacion = cotizacionActualPepe
    }
    method precioUnitario() = pepeCotizacion
}

object calidadPremium {
    method precioUnitario() = calidadBuena.precioUnitario() * 1.5
}

// Impuestos
object impuestoSimple {
    method calcularImp(costo) = costo * 0.10
}

object impuestoConGarantia {
    method calcularImp(costo) = (costo * 0.05).max(100)
}

object impuestoInventado {
    method calcularImp(costo) = 
    ((impuestoSimple() + impuestoConGarantia()) * 0.01).max(120) 
}

// Derechos de Exportación( Retenciones )
object estatista {
    method derechoExp(costo) { 
      if (costo > 1000) 200 else 300
    }
}

object privatizador {
    var cantidad = 10
    method derechoExp(costo) = 50 + (cantidad / 10)
}

object derechoDemagogico {
  var montoActual = 100
  method cambioDeMonto(nuevoMonto) {
    montoActual = nuevoMonto
  }
  method derechoExp() = montoActual
}

object derechoNulo {
  method derechoExp() = 0
}

// Exp Batata "RARO"
object batata {
  var costo = 500
  var impActual = impuestoSimple
  method calcularTotal(costo) = 
        if (impActual = impuestoSimple) impuestoSimple.calcularImp() 
        else impuestoConGarantia.calcularImp()
}

// Exp Zapallo "RARO"
object zapallo {
  var cantidad = 50
  var derExp   = estatista
  method costoParcial(unCosto) { self.cantidad * unCosto.calidadRegular(pepeCotizacion) }
  method calcularTotal() = costoParcial(unCosto) + ( self.derExp(derechoExp()) / 2)
}
