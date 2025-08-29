# Cotización de la papa

<p align="center">
    <img src="papas-img.jpg" alt="Imagen de papas" width="400">
</p>

Ni la soja, ni el litio, ni vaca muerta, ni miles de laburantes que exporten su fuerza de trabajo convertida en software… para fomentar el ingreso de divisas al país la solución es la **exportación de papa**.  

Se cuenta con la información de toda la producción de papa de un conocido país y se quiere averiguar el importe total que se obtiene al exportarla, dependiendo de circunstancias cambiantes del mercado y de las políticas económicas vigentes. En concreto, el importe se calcula como su **costo de producción** más un valor de **impuesto**, más un valor por **derechos de exportación**.

---

## Producción

El costo de producción depende de la calidad y cantidad de la cosecha. La cantidad de unidades cosechadas es un valor determinado.  
Respecto de la calidad:

- Si la papa es **buena** → $3 por cada unidad.  
- Si es **regular** → se usa como importe unitario la cotización que da el *Protectorado Especial de Productos de Exportación* (**PEPE**).  
- La calidad **premium** → tiene un importe por unidad **50% mayor** a la calidad buena.  

---

## Impuestos

La forma de calcular el impuesto puede ir cambiando, por ahora con estas posibilidades (pero podrían ser más):

- **Simple**: 10% del costo de producción.  
- **Con Garantía**: 5% del costo de producción, pero nunca menos de $100.  
- **Inventada**: Agregar una nueva modalidad impositiva.  

---

## Derechos de exportación

El importe de los derechos de exportación, también llamados *retenciones*, se calcula de diferentes maneras:

- **Estatista**: $200 si el costo de producción es alto (mayor a $1000) y $300 en caso contrario.  
- **Privatizador**: Un monto básico de $50 más $1 adicional por cada 10 unidades cultivadas.  
- **Demagógico**: Actualmente son $100, pero podría cambiar en cualquier momento.  
- **Nulo**: Nada.  

---

## Batería de tests

Para conocer el importe total de exportación, la cantidad de combinaciones posibles es inmensa. Parecería que las clases de equivalencia son muchísimas. Sin embargo, la teoría de **Testeo Unitario** nos dice que si probamos cada parte por separado, no es necesario probar todas las combinaciones.  

👉 [Prueba unitaria - Wikipedia](https://es.m.wikipedia.org/wiki/Prueba_unitaria)  

**A)** Entonces, les proponemos que tomen una parte (ya sea la parte del cálculo del costo de producción, o la de los impuestos o la de derechos) y para esa parte sí escriban todos los tests considerando todas las clases de equivalencia.  

**B)** Además, hacer un test que muestre cómo funciona un caso del cálculo del importe total de exportación, que es el objetivo de todo esto.  

---

## Más cotizaciones

Como si no fuera suficiente, se decidió contemplar otros productos de exportación:  

### Batata

El importe total de la batata se calcula a partir de un **costo de producción preestablecido** (no hace falta considerar ni la cantidad ni la calidad) al que se le suman los **impuestos**, pero no está sujeta a derechos de exportación.  

Los impuestos son:  
- **Simple**  
- **Con Garantía**  
- **Compuesto**: Inventar una nueva forma de calcularlo que requiera de algún nuevo objeto o mensaje, pero que no sea necesario modificar nada de lo realizado anteriormente.  

### Zapallo

El importe total del zapallo se calcula como:  

- El **costo de producción** surge de multiplicar la cantidad cultivada por la cotización de **PEPE**.  
- Más los **derechos de exportación**, cuyas alternativas son las mismas que para la papa, pero siempre a **mitad de su valor**.  