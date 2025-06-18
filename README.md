# Sistema de Análisis de Encuestas en Prolog

Este repositorio contiene el código fuente del Trabajo Práctico Final para la materia **Conceptos y Paradigmas de Lenguajes de Programación**. El proyecto consiste en un sistema de análisis de mercado desarrollado íntegramente en Prolog, diseñado para procesar datos de encuestas y extraer información estratégica sobre una línea de productos.

---

## 1. Contexto del Proyecto

El sistema fue desarrollado para la empresa ficticia **"Code Keyboards"**, un fabricante de teclados mecánicos de alta gama orientados a desarrolladores. El objetivo era analizar los resultados de una serie de encuestas para entender la recepción de su nueva línea de productos y guiar las futuras decisiones de marketing y desarrollo.

El sistema utiliza una base de conocimiento con 5 productos y 50 encuestas para realizar sus análisis.

## 2. Características Principales

El sistema es capaz de realizar las siguientes consultas:

* **Análisis de Tasa de Aceptación:** Calcula el porcentaje de aceptación para cada producto.
* **Identificación de Productos Destacados:** Determina automáticamente los productos con la mayor y menor tasa de aceptación.
* **Perfilado Demográfico Detallado:** Obtiene el rango de edad y el género más frecuente de los clientes que aceptan o rechazan cada producto.
* **Análisis de Razones:** Identifica la razón principal (la más mencionada) tanto para la aceptación como para el rechazo de cada producto.
* **Análisis de Disposición de Pago:** Calcula el precio promedio que los clientes están dispuestos a pagar por los productos que aceptan.
* **Reportes Consolidados:** Ofrece vistas detalladas por producto (`estadisticas_producto/1`) y un reporte ejecutivo global de todo el sistema (`reporte_general/0`).
* **Base de Conocimiento Dinámica:** Permite añadir nuevas encuestas en tiempo de ejecución (`assertz`).
* **Persistencia de Datos:** Incluye una funcionalidad para guardar la base de conocimiento actualizada en un nuevo archivo `.pl` (`listing`).

## 3. Estructura de la Base de Conocimiento

La información se modela a través de dos hechos principales:

* **Productos:** `producto(ID, Nombre, Categoria, PrecioSugeridoUSD).`
* **Encuestas:** `encuesta(ID, ProductoID, Edad, Genero, Acepta, RazonAceptacion, RazonRechazo, DispuestoPagar).`

## 4. Instrucciones de Uso

Para ejecutar el sistema, siga los siguientes pasos:

### Prerrequisitos

Es necesario tener instalado **SWI-Prolog**. Puede descargarlo desde su [sitio web oficial](https://www.swi-prolog.org/).

### Ejecución

1.  **Abrir SWI-Prolog:** Inicie la consola de SWI-Prolog.

2.  **Cargar el sistema:** Utilice el predicado `consult/1` para cargar el archivo principal. Asegúrese de usar la ruta correcta a su archivo.

    ```prolog
    ?- consult('ruta/a/su/archivo/Sistema-Analisis-Encuestas-Prolog.pl').
    ```

3.  **Ejecutar Consultas:** Una vez cargado, puede utilizar las reglas definidas. A continuación, algunos ejemplos clave:

    * **Ver el reporte general de todo el sistema:**
        ```prolog
        ?- reporte_general.
        ```

    * **Obtener las estadísticas de un producto específico (ej: ID 2):**
        ```prolog
        ?- estadisticas_producto(2).
        ```

    * **Encontrar el producto más aceptado:**
        ```prolog
        ?- producto_mas_aceptado(Nombre, Tasa).
        ```

    * **Agregar una nueva encuesta (ejemplo):**
        ```prolog
        ?- agregar_encuesta(2, 36, 'femenino', 'si', 'calidad_construccion', null, 170).
        ```

    * **Guardar los cambios en un nuevo archivo:**
        ```prolog
        ?- guardar_cambios('Sistema-Analisis-Encuestas-Prolog-Actualizado.pl').
        ```

---

* **Materia:** Conceptos y Paradigmas de Lenguajes de Programación
* **Universidad:** Universidad Nacional de Lanús
* **Año:** 2025
* **Documentación:** Puede acceder haciendo [click aquí](https://drive.google.com/file/d/1GThJi8_Mu1qh34bsdYhqcMwGeGORVgQR/view).
