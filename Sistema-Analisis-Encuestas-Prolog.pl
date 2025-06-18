% ============================================================================
% SISTEMA DE ENCUESTAS PARA CODE KEYBOARDS
% Materia: Conceptos y Paradigmas de Lenguajes de Programación
% Temática: Teclados Mecánicos Personalizables para Desarrolladores
% ============================================================================

% --- DIRECTIVAS ---
% Declaramos que el predicado encuesta/8 puede ser modificado en tiempo de ejecucion.
:- dynamic encuesta/8.

% ----------------------------------------------------------------------------
% HECHOS: BASE DE CONOCIMIENTO
% ----------------------------------------------------------------------------

% ---------- PRODUCTOS (TECLADOS MECÁNICOS) ----------
% Cada hecho define un teclado de la línea de productos de Code Keyboards.
% Estructura: producto(ID, Nombre, Categoria, PrecioSugeridoUSD).

producto(1, 'Code Compact 65', '65_porciento', 120).
producto(2, 'Code Pro TKL', 'tkl_80_porciento', 160).
producto(3, 'Code ErgoSplit', 'ergonomico_dividido', 220).
producto(4, 'Code Elite 100', '100_porciento_full', 200).
producto(5, 'Code Builder Kit', 'kit_diy', 180).

% ---------- ENCUESTAS REALIZADAS ----------
% Cada hecho representa la respuesta de un encuestado a un producto.
% Estructura: encuesta(ID, ProductoID, Edad, Genero, Acepta, RazonAceptacion, RazonRechazo, DispuestoPagar).
% Genero: masculino, femenino, otro
% Acepta: si, no
% RazonAceptacion: calidad_construccion, sensacion_tecleo, firmware_programable, diseno_compacto, estetica_personalizable, ergonomia
% RazonRechazo: precio_elevado, layout_incomodo, switches_no_gustan, falta_teclado_numerico, software_complicado

% Encuestas para 'Code Compact 65' (Producto 1)
encuesta(1, 1, 24, 'masculino', 'si', 'diseno_compacto', null, 125).
encuesta(2, 1, 31, 'femenino', 'no', null, 'layout_incomodo', 0).
encuesta(3, 1, 22, 'otro', 'si', 'diseno_compacto', null, 130).
encuesta(4, 1, 28, 'masculino', 'si', 'sensacion_tecleo', null, 120).
encuesta(5, 1, 35, 'femenino', 'no', null, 'precio_elevado', 0).
encuesta(6, 1, 26, 'masculino', 'si', 'firmware_programable', null, 140).
encuesta(7, 1, 29, 'femenino', 'si', 'diseno_compacto', null, 115).
encuesta(8, 1, 40, 'masculino', 'no', null, 'layout_incomodo', 0).
encuesta(9, 1, 23, 'femenino', 'no', null, 'falta_teclado_numerico', 0).
encuesta(10, 1, 27, 'otro', 'si', 'calidad_construccion', null, 135).

% Encuestas para 'Code Pro TKL' (Producto 2)
encuesta(11, 2, 28, 'femenino', 'si', 'calidad_construccion', null, 160).
encuesta(12, 2, 34, 'masculino', 'si', 'sensacion_tecleo', null, 175).
encuesta(13, 2, 45, 'masculino', 'no', null, 'falta_teclado_numerico', 0).
encuesta(14, 2, 29, 'femenino', 'si', 'firmware_programable', null, 165).
encuesta(15, 2, 30, 'otro', 'si', 'estetica_personalizable', null, 150).
encuesta(16, 2, 25, 'masculino', 'si', 'calidad_construccion', null, 180).
encuesta(17, 2, 37, 'femenino', 'si', 'sensacion_tecleo', null, 155).
encuesta(18, 2, 41, 'femenino', 'no', null, 'falta_teclado_numerico', 0).
encuesta(19, 2, 33, 'masculino', 'si', 'sensacion_tecleo', null, 170).
encuesta(20, 2, 26, 'otro', 'si', 'sensacion_tecleo', null, 160).

% Encuestas para 'Code ErgoSplit' (Producto 3)
encuesta(21, 3, 38, 'masculino', 'si', 'ergonomia', null, 220).
encuesta(22, 3, 29, 'femenino', 'no', null, 'precio_elevado', 0).
encuesta(23, 3, 42, 'femenino', 'si', 'ergonomia', null, 230).
encuesta(24, 3, 31, 'masculino', 'no', null, 'layout_incomodo', 0).
encuesta(25, 3, 48, 'otro', 'si', 'sensacion_tecleo', null, 210).
encuesta(26, 3, 35, 'masculino', 'no', null, 'precio_elevado', 0).
encuesta(27, 3, 39, 'femenino', 'si', 'ergonomia', null, 225).
encuesta(28, 3, 52, 'masculino', 'si', 'ergonomia', null, 250).
encuesta(29, 3, 30, 'femenino', 'no', null, 'layout_incomodo', 0).
encuesta(30, 3, 44, 'otro', 'no', null, 'precio_elevado', 0).

% Encuestas para 'Code Elite 100' (Producto 4)
encuesta(31, 4, 35, 'femenino', 'si', 'calidad_construccion', null, 200).
encuesta(32, 4, 48, 'masculino', 'si', 'sensacion_tecleo', null, 190).
encuesta(33, 4, 28, 'masculino', 'no', null, 'software_complicado', 0).
encuesta(34, 4, 39, 'femenino', 'si', 'firmware_programable', null, 210).
encuesta(35, 4, 42, 'otro', 'no', null, 'precio_elevado', 0).
encuesta(36, 4, 33, 'masculino', 'si', 'calidad_construccion', null, 205).
encuesta(37, 4, 55, 'femenino', 'si', 'sensacion_tecleo', null, 180).
encuesta(38, 4, 36, 'femenino', 'no', null, 'switches_no_gustan', 0).
encuesta(39, 4, 41, 'masculino', 'si', 'calidad_construccion', null, 195).
encuesta(40, 4, 32, 'otro', 'si', 'estetica_personalizable', null, 215).

% Encuestas para 'Code Builder Kit' (Producto 5)
encuesta(41, 5, 23, 'masculino', 'si', 'estetica_personalizable', null, 190).
encuesta(42, 5, 21, 'femenino', 'si', 'firmware_programable', null, 180).
encuesta(43, 5, 30, 'otro', 'no', null, 'software_complicado', 0).
encuesta(44, 5, 26, 'masculino', 'si', 'sensacion_tecleo', null, 200).
encuesta(45, 5, 20, 'femenino', 'si', 'calidad_construccion', null, 185).
encuesta(46, 5, 33, 'masculino', 'no', null, 'precio_elevado', 0).
encuesta(47, 5, 25, 'femenino', 'si', 'estetica_personalizable', null, 195).
encuesta(48, 5, 22, 'otro', 'si', 'firmware_programable', null, 175).
encuesta(49, 5, 28, 'masculino', 'no', null, 'software_complicado', 0).
encuesta(50, 5, 24, 'femenino', 'si', 'sensacion_tecleo', null, 210).

% ----------------------------------------------------------------------------
% REGLAS DE CONSULTA
% ----------------------------------------------------------------------------

% REGLA: Listar todos los productos disponibles en el catálogo.
% Muestra de forma formateada cada producto con sus detalles.

listar_productos :-
    % Escribimos un encabezado para que la salida sea clara
    format('--- Catalogo de Productos - Code Keyboards ---~n'),

    % Prolog buscará cada 'producto' y asignará sus valores a las variables.
    producto(ID, Nombre, Categoria, Precio),

    % Aquí imprimimos el ID, Nombre, Categoria y Precio de cada producto.
    % La cláusula format/2 imprime cada producto en una línea.
    % ~w es un comodín para cualquier término (write), ~n es un salto de línea.
    format('ID: ~w | Producto: ~w (~w) | Precio: $~w~n', [ID, Nombre, Categoria, Precio]),

    % La cláusula fail es crucial para que Prolog siga buscando mas productos.
    fail.
listar_productos.

% ----------------------------------------------------------------------------

% REGLA: Consultar las encuestas realizadas para un producto específico.
% Permite al usuario ingresar un ID de producto y muestra las encuestas asociadas.
% Si el ID no es válido, muestra un mensaje de error.

encuestas_por_producto(ProductoID) :-
    (   % Condicion: Verificamos si el producto existe.
        producto(ProductoID, _, _, _)

    ->  % Si la condicion es verdadera (->), llamamos a la regla que imprime.
        imprimir_encuestas_del_producto(ProductoID)

    ;   % Si la condicion es falsa (;), mostramos un mensaje de error.
        format('ERROR: El ID de producto ~w no existe o es invalido.~n', [ProductoID])
    ).

% REGLA AUXILIAR: Se encarga de imprimir los detalles si el producto existe.
imprimir_encuestas_del_producto(ProductoID) :-
    % Obtenemos el nombre para usarlo en el encabezado.
    producto(ProductoID, Nombre, _, _),

    format('--- Encuestas para el producto: ~w ---~n~n', [Nombre]),

    % Buscamos e imprimimos cada encuesta correspondiente.
    encuesta(EncuestaID, ProductoID, Edad, Genero, Acepta, RazonAcep, RazonRechazo, DispPagar),
    format('Encuesta #~w | Edad: ~w, Genero: ~w, Acepta: ~w, Dispuesto a Pagar: $~w~n', [EncuestaID, Edad, Genero, Acepta, DispPagar]),

    % Detalle de la razon.
    (   Acepta == si -> format('>     Razon Aceptacion: ~w~n~n', [RazonAcep])
    ;   Acepta == no -> format('>     Razon Rechazo: ~w~n~n', [RazonRechazo])
    ),
    fail.
imprimir_encuestas_del_producto(_).

% ----------------------------------------------------------------------------

% REGLA: Contar el total de encuestas realizadas.
% Total queda unificado con el número de encuestas.

total_encuestados(Total) :-
    % findall busca todas las soluciones que cumplen una condición.
    % findall(ID, encuesta(...), ListaIDs) crea una lista 'ListaIDs'
    % con todos los IDs de todas las encuestas.
    findall(ID, encuesta(ID, _, _, _, _, _, _, _), ListaIDs),

    % length calcula la longitud de la lista.
    length(ListaIDs, Total).

% REGLA: Contar el total de encuestas con aceptación ('si').
total_aceptaciones(Total) :-
    % La lógica es idéntica, pero añadimos la condición de que Acepta sea 'si'.
    findall(ID, encuesta(ID, _, _, _, si, _, _, _), Lista),
    length(Lista, Total).

% REGLA: Contar el total de encuestas con rechazo ('no').
total_rechazos(Total) :-
    % Igual que la anterior, pero con la condición de que Acepta sea 'no'.
    findall(ID, encuesta(ID, _, _, _, no, _, _, _), Lista),
    length(Lista, Total).

% ----------------------------------------------------------------------------

% REGLA: Contar el total de encuestas para un producto especifico.
% Estas reglas funcionan igual que las de conteo general, pero le pasan un
% ProductoID a la consulta encuesta/8 para filtrar los resultados por producto.
total_encuestas_producto(ProductoID, Total) :-
    findall(E, encuesta(E, ProductoID, _, _, _, _, _, _), Lista),
    length(Lista, Total).

% REGLA: Contar las aceptaciones para un producto especifico.
aceptacion_por_producto(ProductoID, Aceptaciones) :-
    findall(E, encuesta(E, ProductoID, _, _, si, _, _, _), Lista),
    length(Lista, Aceptaciones).

% Ahora que podemos obtener los conteos, podemos crear una regla
% que calcule el porcentaje de aceptación para cualquier producto.

% REGLA: Calcula la tasa de aceptacion (en porcentaje) para un producto.
% Se vuelve determinista con el uso del corte (!).
tasa_aceptacion(ProductoID, Tasa) :-
    total_encuestas_producto(ProductoID, Total),
    aceptacion_por_producto(ProductoID, Aceptaciones),
    Total > 0, % Importante: para evitar dividir por cero.
    Tasa is (Aceptaciones * 100) / Total,
    !. % Si esta regla tiene exito, corta la busqueda y no prueba otras.
tasa_aceptacion(_, 0). % Esta regla solo se alcanzara si la de arriba falla (ej: Total = 0).

% ----------------------------------------------------------------------------
% Con las reglas anteriores, podemos crear reglas para encontrar los productos mas y menos aceptados.
% ----------------------------------------------------------------------------

% REGLA: Encuentra el producto con la mayor tasa de aceptacion.
producto_mas_aceptado(Nombre, Tasa) :-
    % 1. Creamos una lista de [Tasa, Nombre] para todos los productos.
    findall([T, N], (producto(ID, N, _, _), tasa_aceptacion(ID, T)), Lista),
    
    % 2. Ordenamos la lista. sort/2 ordena de menor a mayor por el primer elemento (la Tasa).
    sort(Lista, Ordenada),

    % 3. Invertimos la lista para que el mas alto quede primero.
    reverse(Ordenada, Reversa),
    
    % 4. Tomamos la cabeza de la lista invertida, que es el producto que buscamos.
    Reversa = [[Tasa, Nombre]|_].

% REGLA: Encuentra el producto con la menor tasa de aceptacion.
producto_menos_aceptado(Nombre, Tasa) :-
    % 1. Creamos la misma lista de [Tasa, Nombre].
    findall([T, N], (producto(ID, N, _, _), tasa_aceptacion(ID, T)), Lista),

    % 2. Ordenamos la lista de menor a mayor.
    sort(Lista, Ordenada),

    % 3. Tomamos la cabeza de la lista ordenada, que es el de menor tasa.
    Ordenada = [[Tasa, Nombre]|_].

% ----------------------------------------------------------------------------

% REGLA AUXILIAR: Determina cual de los tres generos es el mayoritario.
% Recibe los tres conteos y unifica Genero con el nombre del ganador.
% La secuencia de las reglas maneja los empates (dando prioridad a 'masculino', luego 'femenino' y por ultimo 'otro').
genero_mayoritario(M, F, O, masculino) :- M >= F, M >= O.
genero_mayoritario(M, F, O, femenino) :- F > M, F >= O.
genero_mayoritario(M, F, O, otro) :- O > M, O > F.

% REGLA: Obtiene el perfil demografico de los que ACEPTAN un producto.
% perfil_aceptacion(ProductoID, EdadMin, EdadMax, GeneroMasFrecuente)
perfil_aceptacion(ProductoID, EdadMin, EdadMax, Genero) :-
    % 1. Obtenemos la lista de edades de los que aceptaron.
    findall(Edad, encuesta(_, ProductoID, Edad, _, si, _, _, _), Edades),

    % 2. Nos aseguramos de que la lista no este vacia para evitar errores.
    Edades \= [],

    % 3. Calculamos la edad minima y maxima.
    min_list(Edades, EdadMin),
    max_list(Edades, EdadMax),

    % 4. Contamos cada genero por separado.
    findall(_, encuesta(_, ProductoID, _, masculino, si, _, _, _), ListaM), length(ListaM, CountM),
    findall(_, encuesta(_, ProductoID, _, femenino, si, _, _, _), ListaF), length(ListaF, CountF),
    findall(_, encuesta(_, ProductoID, _, otro, si, _, _, _), ListaO), length(ListaO, CountO),

    % 5. Usamos nuestra regla auxiliar para determinar el genero mas frecuente.
    genero_mayoritario(CountM, CountF, CountO, Genero).

% REGLA: Obtiene el perfil demografico de los que RECHAZAN un producto.
% perfil_rechazo(ProductoID, EdadMin, EdadMax, GeneroMasFrecuente)
perfil_rechazo(ProductoID, EdadMin, EdadMax, Genero) :-
    % La logica es identica a la de aceptacion, pero filtrando por 'no'.
    findall(Edad, encuesta(_, ProductoID, Edad, _, no, _, _, _), Edades),
    Edades \= [],
    min_list(Edades, EdadMin),
    max_list(Edades, EdadMax),
    findall(_, encuesta(_, ProductoID, _, masculino, no, _, _, _), ListaM), length(ListaM, CountM),
    findall(_, encuesta(_, ProductoID, _, femenino, no, _, _, _), ListaF), length(ListaF, CountF),
    findall(_, encuesta(_, ProductoID, _, otro, no, _, _, _), ListaO), length(ListaO, CountO),
    genero_mayoritario(CountM, CountF, CountO, Genero).

% ----------------------------------------------------------------------------

% REGLA AUXILIAR: Cuenta las ocurrencias de un Elemento en una Lista.
% contar_ocurrencias(Elemento, Lista, Conteo)
% Caso Base: Si la lista esta vacia, el conteo siempre es 0.
contar_ocurrencias(_, [], 0).

% Caso Recursivo 1: La cabeza de la lista es el Elemento que buscamos.
contar_ocurrencias(Elemento, [Elemento|Cola], Conteo) :-
    contar_ocurrencias(Elemento, Cola, ConteoPrevio), % Sigue contando en el resto de la lista (Cola).
    Conteo is ConteoPrevio + 1. % Al resultado (ConteoPrevio), le sumo 1.

% Caso Recursivo 2: La cabeza de la lista NO es el Elemento que buscamos.
% En este caso, simplemente seguimos contando en el resto de la lista (Cola) sin incrementar el conteo.
contar_ocurrencias(Elemento, [Cabeza|Cola], Conteo) :-
    Elemento \= Cabeza,
    contar_ocurrencias(Elemento, Cola, Conteo). % El conteo total es el mismo que el que se encuentre en el resto de la lista.

% REGLA AUXILIAR: Elimina todas las ocurrencias de un Elemento de una Lista.
% eliminar_todos(Elemento, ListaOriginal, ListaResultado)
% Caso Base: Si la lista original esta vacia, el resultado tambien lo esta.
eliminar_todos(_, [], []).

% Caso Recursivo 1: La cabeza de la lista es el Elemento a eliminar.
eliminar_todos(Elemento, [Elemento|Cola], ResultadoFinal) :-
    eliminar_todos(Elemento, Cola, ResultadoFinal). % No incluimos la cabeza en el resultado.

% Caso Recursivo 2: La cabeza de la lista NO es el Elemento a eliminar.
eliminar_todos(Elemento, [Cabeza|Cola], [Cabeza|ResultadoDelResto]) :-
    Elemento \= Cabeza,
    eliminar_todos(Elemento, Cola, ResultadoDelResto). % Conservamos la cabeza.

% REGLA AUXILIAR PRINCIPAL: Convierte una lista de elementos en una lista de frecuencias.
% Ejemplo: [a, b, a, c, b, a] -> [[3, a], [2, b], [1, c]]
% contar_frecuencias(ListaOriginal, ListaDeFrecuencias)
% Caso Base: Si la lista a procesar esta vacia, la lista de frecuencias tambien.
contar_frecuencias([], []).

% Caso Recursivo Principal:
contar_frecuencias([Elemento|Cola], [[Conteo, Elemento]|FrecuenciasDelResto]) :-
    % 1. Contamos cuantas veces aparece Elemento en la lista original.
    % Esto nos da el conteo de ocurrencias de Elemento.
    contar_ocurrencias(Elemento, [Elemento|Cola], Conteo),

    % 2. Elimina todas las ocurrencias de Elemento de la lista original.
    % Esto es necesario para que no contemos el mismo elemento varias veces.
    eliminar_todos(Elemento, Cola, RestoLimpio),

    % 3. Llama a la regla recursivamente para contar las frecuencias del resto de la lista.
    % Esto nos da la lista de frecuencias del resto de los elementos.
    contar_frecuencias(RestoLimpio, FrecuenciasDelResto).

% --- REGLAS DE ANALISIS DE RAZONES ---

% REGLA: Encuentra la razon principal de ACEPTACION para un producto.
% razon_principal_aceptacion(ProductoID, Razon, Frecuencia)
razon_principal_aceptacion(ProductoID, Razon, Frecuencia) :-
    % 1. Obtenemos la lista de todas las razones de aceptacion para el producto.
    findall(R, encuesta(_, ProductoID, _, _, si, R, null, _), Razones),
    Razones \= [], % Nos aseguramos de que haya razones para analizar.

    % 2. Usamos nuestra regla auxiliar para contar las frecuencias.
    contar_frecuencias(Razones, Frecuencias),

    % 3. Ordenamos la lista de frecuencias (de menor a mayor).
    sort(Frecuencias, Ordenadas),
    
    % 4. Invertimos la lista para que la mas frecuente quede primera.
    reverse(Ordenadas, [[Frecuencia, Razon]|_]).

% REGLA: Encuentra la razon principal de RECHAZO para un producto.
% razon_principal_rechazo(ProductoID, Razon, Frecuencia)
razon_principal_rechazo(ProductoID, Razon, Frecuencia) :-
    % La logica es identica, solo cambia el filtro a 'no' y la columna de la razon.
    findall(R, encuesta(_, ProductoID, _, _, no, null, R, _), Razones),
    Razones \= [],
    contar_frecuencias(Razones, Frecuencias),
    sort(Frecuencias, Ordenadas),
    reverse(Ordenadas, [[Frecuencia, Razon]|_]).

% ----------------------------------------------------------------------------

% --- REGLA DE ANALISIS DE DISPOSICION DE PAGO ---

% REGLA: Calcula el promedio de lo que los encuestados estan dispuestos a pagar
% por un producto que aceptaron.
% promedio_dispuesto_pagar(ProductoID, Promedio)
promedio_dispuesto_pagar(ProductoID, Promedio) :-
    % 1. Obtenemos la lista de montos solo de quienes aceptaron ('si').
    findall(Monto, encuesta(_, ProductoID, _, _, si, _, _, Monto), Montos),

    % 2. Nos aseguramos de que la lista no este vacia para evitar errores.
    Montos \= [],

    % 3. Contamos cuantos elementos hay en la lista.
    length(Montos, Cantidad),

    % 4. Usamos la regla predefinida sum_list/2 para sumar todos los montos.
    sum_list(Montos, Suma),

    % 5. Calculamos el promedio y lo unificamos con la variable Promedio.
    Promedio is Suma / Cantidad.

% ----------------------------------------------------------------------------

% --- REGLA DE REPORTE COMPLETO POR PRODUCTO ---

% REGLA: Muestra un resumen completo de estadisticas para un producto.
% estadisticas_producto(ProductoID)
estadisticas_producto(ProductoID) :-
    % Usamos la regla que ya creamos para manejar IDs invalidos.
    producto(ProductoID, Nombre, Categoria, Precio),
    format('========================================~n'),
    format('  Estadisticas para: ~w~n', [Nombre]),
    format('  Categoria: ~w | Precio Sugerido: $~w~n', [Categoria, Precio]),
    format('========================================~n'),
    total_encuestas_producto(ProductoID, Total),
    format('Total de Encuestas: ~w~n', [Total]),
    tasa_aceptacion(ProductoID, Tasa),
    format('Tasa de Aceptacion: ~2f%~n', [Tasa]),
    (   promedio_dispuesto_pagar(ProductoID, Promedio) ->
        format('Disposicion de Pago Promedio: $~2f~n', [Promedio])
    ;   format('Disposicion de Pago Promedio: N/A~n')
    ),
    format('--- Perfil del Cliente que Acepta ---~n'),
    (   perfil_aceptacion(ProductoID, EdadMinA, EdadMaxA, GeneroA) ->
        format('Rango de Edad: ~w-~w anios | Genero Principal: ~w~n', [EdadMinA, EdadMaxA, GeneroA])
    ;   format('No hay suficientes datos de aceptacion.~n')
    ),
    (   razon_principal_aceptacion(ProductoID, RazonA, FreqA) ->
        format('Razon Principal de Aceptacion: ~w (~w veces)~n', [RazonA, FreqA])
    ;   format('No hay datos de razones de aceptacion.~n')
    ),
    format('--- Perfil del Cliente que Rechaza ---~n'),
    (   perfil_rechazo(ProductoID, EdadMinR, EdadMaxR, GeneroR) ->
        format('Rango de Edad: ~w-~w anios | Genero Principal: ~w~n', [EdadMinR, EdadMaxR, GeneroR])
    ;   format('No hay suficientes datos de rechazo.~n')
    ),
    (   razon_principal_rechazo(ProductoID, RazonR, FreqR) ->
        format('Razon Principal de Rechazo: ~w (~w veces)~n', [RazonR, FreqR])
    ;   format('No hay datos de razones de rechazo.~n')
    ),
    format('========================================~n').

% Si el ID no existe, muestra un mensaje de error.
estadisticas_producto(ProductoID) :-
    \+ producto(ProductoID, _, _, _),
    format('ERROR: El ID de producto ~w no existe.~n', [ProductoID]).

% ----------------------------------------------------------------------------

% --- REGLA DE REPORTE GENERAL DEL SISTEMA ---

% REGLA: Muestra un reporte completo con todas las metricas del sistema.
% Es la consulta principal para obtener una vision global del analisis.
% Se invoca con: reporte_general.
reporte_general :-
    format('====================================================~n'),
    format('       REPORTE GENERAL DEL SISTEMA DE ENCUESTAS       ~n'),
    format('                  CODE KEYBOARDS                      ~n'),
    format('====================================================~n~n'),

    % --- Seccion de Estadisticas Globales ---
    format('--- ESTADISTICAS GLOBALES ---~n'),
    total_encuestados(Total),
    format('Total de encuestas analizadas: ~w~n', [Total]),
    total_aceptaciones(Aceptaciones),
    format('Total de aceptaciones: ~w~n', [Aceptaciones]),
    total_rechazos(Rechazos),
    format('Total de rechazos: ~w~n~n', [Rechazos]),

    % --- Seccion de Productos Destacados ---
    format('--- PRODUCTOS DESTACADOS ---~n'),
    producto_mas_aceptado(NombreMax, TasaMax),
    format('Producto con mayor aceptacion: ~w (~2f%)~n', [NombreMax, TasaMax]),
    producto_menos_aceptado(NombreMin, TasaMin),
    format('Producto con menor aceptacion: ~w (~2f%)~n~n', [NombreMin, TasaMin]),

    % --- Seccion de Analisis por Producto ---
    format('--- ANALISIS DETALLADO POR PRODUCTO ---~n'),
    % forall/2 itera sobre cada solucion de la primera consulta (producto/4)
    % y ejecuta la segunda consulta (estadisticas_producto/1) para esa solucion.
    forall(producto(ID, _, _, _), estadisticas_producto(ID)).

% ----------------------------------------------------------------------------

% --- REGLAS PARA BASE DE CONOCIMIENTO DINAMICA ---

% REGLA: Agrega una nueva encuesta a la base de conocimiento en memoria.
% agregar_encuesta(ProductoID, Edad, Genero, Acepta, RazonAcep, RazonRechazo, DispPagar)
agregar_encuesta(ProductoID, Edad, Genero, Acepta, RazonAcep, RazonRechazo, DispPagar) :-
    % 1. Buscamos todos los IDs existentes para encontrar el maximo.
    findall(ID, encuesta(ID, _, _, _, _, _, _, _), IDs),
    max_list(IDs, MaxID),
    
    % 2. El nuevo ID sera el maximo + 1 para asegurar que sea unico.
    NuevoID is MaxID + 1,

    % 3. Usamos assertz para añadir el nuevo hecho al final de la base de conocimiento.
    assertz(encuesta(NuevoID, ProductoID, Edad, Genero, Acepta, RazonAcep, RazonRechazo, DispPagar)),

    % 4. Mostramos una confirmacion al usuario.
    format('Hecho agregado: Nueva encuesta con ID ~w guardada en memoria.~n', [NuevoID]).

% REGLA: Guarda el estado actual de la base de conocimiento en un nuevo archivo.
% guardar_cambios(NombreArchivo)
guardar_cambios(NombreArchivo) :-
    % 1. tell/1 abre un archivo en modo escritura y redirige toda la salida a el.
    tell(NombreArchivo),

    % 2. listing/1 escribe en el flujo de salida actual todas las clausulas
    %    de los predicados especificados.
    format('% Base de conocimiento guardada el ~w~n~n', [now]), % Agregamos una marca de tiempo
    listing(producto/4),
    listing(encuesta/8),
    
    % 3. told/0 cierra el archivo y redirige la salida de vuelta a la consola.
    told,
    format('Base de conocimiento guardada exitosamente en el archivo: ~w~n', [NombreArchivo]).
