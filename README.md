# PRESENTACIÓN DE BASES DE DATOS PARA UNA REMISERÍA
## Entrega final

Alumna: Nieto Eliana

Comisión: 57190

Profesor: Anderson Ocaña

Tutor: Leonel Lo Presi

# Introducción
El proyecto está diseñado para gestionar y automatizar los procesos de una remisería, un servicio de transporte que conecta a conductores con clientes de manera eficiente. A través de este sistema, se busca mejorar el control de las reservas, viajes, pagos y el estado de los vehículos, brindando un servicio más ágil tanto para los administradores como para los usuarios finales.

# Objetivo
Desarrollar una base de datos, el cual organizará la información de manera eficiente. Con esto, lo que se busca es:
  * Facilitar la gestión y el seguimiento de reservas y pagos.
  * Ofrecer un servicio más rápido y personalizado a los clientes.
  * Tener un control claro y actualizado de la disponibilidad de autos y conductores.
  * Aplicar tarifas de manera consistente y transparente.

# Situación problemática
La remisería tiene varios problemas con la gestión de sus operaciones diarias en el manejo de información. Actualmente, la información se maneja en hojas de cálculo y registros manuales, lo que causa muchos errores duplicados y dificulta el seguimiento de todo.
  * Errores y duplicaciones: La información no está centralizada, lo que provoca errores y duplicados en los registros.
  * Seguimiento difícil: Es complicado hacer un seguimiento de la disponibilidad de autos y conductores, así como del hisorial de reservas y pagos.
  * Ineficiencia operativa: Los procesos manuales son lentos y consumen mucho tiempo, afectando la eficiencia y la calidad del servicio al cliente.
  * Tarifas inconsistentes: Se aplican las tarifas de manera inconsistente, lo que genera insatisfacción en los clientes.

# Modelo de negocio
El modelo de negocio de la remisería se basa en conectar a los clientes que necesitan transporte con los conductores disponibles. El sistema asigna un auto para cada reserva, considerando las tarifas según la zona y la distancia del viaje, y permite aplicar descuentos con ofertas especiales. Los clientes pagan por el servicio utilizando diferentes métodos de pago, y el sistema permite hacer un seguimiento fácil de todos estos datos, ayudando a organizar mejor las operaciones del día a día.

# Diagrama de entidad relación

![DER proyecto final remiseria](https://github.com/user-attachments/assets/648fec87-c603-491e-a6c1-13b76a64245f)

# Listado de tablas con descripción de su estructura

### 1. Clientes
Almacena información básica de los clientes.

![image](https://github.com/user-attachments/assets/3a469df1-c1e0-4d68-b2d5-2a1e5aae03dd)

   * ID_Cliente Identificador único para cada cliente. (INT, PK, AUTO_INCREMENT)
   * Nombre: Nombre del cliente. (VARCHAR(50))
   * Apellido: Apellido del cliente. (VARCHAR(50))
   * Telefono: Número de teléfono del cliente. (VARCHAR(15), NOT NULL)
   * Email: Correo electrónico del cliente. (VARCHAR(50))
   * Cuil: Código único de identificación laboral del cliente. (VARCHAR(200), NOT NULL)

### 2. Conductores
Almacena información básica de los conductores.

![image](https://github.com/user-attachments/assets/917745df-163e-4fa4-9242-093b07d13b2b)

   * ID_Conductor: Identificador único para cada conductor. (INT, PK, AUTO_INCREMENT)
   * Nombre: Nombre del conductor. (VARCHAR(200))
   * Apellido: Apellido del conductor. (VARCHAR(200))
   * Telefono: Número de teléfono del conductor. (VARCHAR(200), NOT NULL)
   * Email: Correo electrónico del conductor. (VARCHAR(200))

### 3. Tarifas
Define tarifas por kilómetro para los viajes.

![image](https://github.com/user-attachments/assets/1a7aabdd-0be9-4ae4-bd1d-8998dcc16f32)

   * ID_Tarifa: Identificador único para cada tarifa. (INT, PK, AUTO_INCREMENT)
   * Descripción: Descripción de la tarifa. (VARCHAR(100))
   * Precio_Kilometro: Precio por cada kilómetro recorrido. (DECIMAL(10, 2))

### 4. Zonas
Define las zonas geográficas y sus tarifas base.

![image](https://github.com/user-attachments/assets/7daaa299-803d-4ef2-938b-7ee6e2ef8645)

   * ID_Zona: Identificador único para cada zona. (INT, PK, AUTO_INCREMENT)
   * Nombre_Zona: Nombre de la zona. (VARCHAR(50))
   * Tarifa_Base: Tarifa básica aplicada a la zona. (DECIMAL(10, 2))
   * ID_Tarifa: Referencia a la tabla Tarifas, para determinar el precio por kilómetro. (INT, FK)

### 5. Autos
Almacena detalles de los autos, como matrícula, marca, modelo.

![image](https://github.com/user-attachments/assets/aedf2029-da23-4898-b5dd-3528c8fef087)

   * ID_Auto: Identificador único para cada auto. (INT, PK, AUTO_INCREMENT)
   * Patente: Matrícula del auto. (VARCHAR(200))
   * Marca: Marca del vehículo. (VARCHAR(200))
   * Modelo: Modelo del vehículo. (VARCHAR(200))
   * ID_Conductor: Referencia al conductor asignado al auto. (INT, FK)

### 6. Rutas
Define las rutas disponibles, incluyendo origen, destino y distancia.

![image](https://github.com/user-attachments/assets/006a5bb7-f6e3-47eb-a78e-a0d1b9a3fbb5)

   * ID_Ruta: Identificador único para cada ruta. (INT, PK, AUTO_INCREMENT)
   * Origen: Lugar de origen de la ruta. (VARCHAR(100))
   * Destino: Lugar de destino de la ruta. (VARCHAR(100))
   * Distancia_Km: Distancia total de la ruta en kilómetros. (DECIMAL(10, 2))

### 7. Ofertas
Almacena información sobre las ofertas especiales.

![image](https://github.com/user-attachments/assets/874db4e1-5d2a-42ff-a93c-8bb11d742bc6)

   * ID_Oferta: Identificador único para cada oferta. (INT, PK, AUTO_INCREMENT)
   * Descripción: Descripción de la oferta. (VARCHAR(100))
   * Descuento: Porcentaje de descuento aplicado. (DECIMAL(10, 2))
   * Fecha_Inicio: Fecha de inicio de la oferta. (DATE)
   * Fecha_Fin: Fecha de finalización de la oferta. (DATE)

### 8. Reservas
Registra las reservas realizadas por los clientes.

![image](https://github.com/user-attachments/assets/22064a57-3c6a-4f6e-9b9c-f6500e0555db)

   * ID_Reserva: Identificador único para cada reserva. (INT, PK, AUTO_INCREMENT)
   * ID_Cliente: Referencia al cliente que realizó la reserva. (INT, FK)
   * ID_Auto: Referencia al auto asignado para la reserva. (INT, FK)
   * ID_Zona: Referencia a la zona en la que se realiza el servicio. (INT, FK)
   * ID_Tarifa: Referencia a la tarifa aplicada. (INT, FK)
   * ID_Ruta: Referencia a la ruta del viaje. (INT, FK)
   * ID_Oferta: Referencia a la oferta utilizada. (INT, FK)
   * ID_Conductor: Referencia al conductor asignado. (INT, FK)
   * Fecha_Hora: Fecha y hora de la reserva. (DATETIME)
   * Origen: Lugar de origen del viaje. (VARCHAR(100))
   * Destino: Lugar de destino del viaje. (VARCHAR(100))

### 9. Viajes
Registra los viajes realizados, incluyendo duración y kilometraje.

![image](https://github.com/user-attachments/assets/8bb403be-a9e1-40a0-91f7-e62ed65332e1)

   * ID_Viaje: Identificador único para cada viaje. (INT, PK, AUTO_INCREMENT)
   * ID_Reserva: Referencia a la reserva correspondiente. (INT, FK)
   * ID_Oferta: Referencia a la oferta aplicada en el viaje. (INT, FK)
   * Fecha_Hora_Inicio: Fecha y hora de inicio del viaje. (DATETIME)
   * Fecha_Hora_Fin: Fecha y hora de finalización del viaje. (DATETIME)
   * Kilometraje: Kilometraje recorrido en el viaje. (DECIMAL(10, 2))

### 10. Pagos
Registra los pagos realizados por los clientes.

![image](https://github.com/user-attachments/assets/0c928c68-2f15-4d19-ab66-66cb3cdd1d7b)

   * ID_Pago: Identificador único para cada pago. (INT, PK, AUTO_INCREMENT)
   * ID_Reserva: Referencia a la reserva por la que se realiza el pago. (INT, FK)
   * ID_Cliente: Referencia al cliente que realiza el pago. (INT, FK)
   * Fecha_Pago: Fecha en que se realizó el pago. (DATETIME)
   * Monto: Monto total del pago. (DECIMAL(10, 2))
   * Metodo_Pago: Método utilizado para el pago. (VARCHAR(50))

### 11. Mantenimiento
Registra los mantenimientos realizados a los autos.

![image](https://github.com/user-attachments/assets/777108bd-1461-44f1-b151-73abbfb4f825)

   * ID_Mantenimiento: Identificador único para cada mantenimiento realizado. (INT, PK, AUTO_INCREMENT)
   * ID_Auto: Referencia al auto al que se le realizó el mantenimiento. (INT, FK)
   * Fecha: Fecha en que se realizó el mantenimiento. (DATE)
   * Descripcion: Descripción del tipo de mantenimiento. (VARCHAR(100))
   * Costo: Costo total del mantenimiento. (DECIMAL(10, 2))

### 12. Multas
Registra las multas impuestas a los conductores.

![image](https://github.com/user-attachments/assets/2f06b3b8-4f6f-4d0f-b021-0d1e5d34d9f6)

   * ID_Multa: Identificador único para cada multa impuesta. (INT, PK, AUTO_INCREMENT)
   * ID_Conductor: Referencia al conductor multado. (INT, FK)
   * Fecha: Fecha de la multa. (DATE)
   * Descripcion: Descripción de la infracción. (VARCHAR(100))
   * Monto: Monto de la multa. (DECIMAL(10, 2))

### 13. Seguros
Registra la información de los seguros de los autos.

![image](https://github.com/user-attachments/assets/71bc55cb-d0e8-451d-8e88-d8e508b7eb16)

   * ID_Seguro: Identificador único para cada seguro de auto. (INT, PK, AUTO_INCREMENT)
   * ID_Auto: Referencia al auto cubierto por el seguro. (INT, FK)
   * Empresa: Nombre de la compañía aseguradora. (VARCHAR(50))
   * Poliza: Número de póliza de seguro. (VARCHAR(50))
   * Fecha_Vencimiento: Fecha de vencimiento del seguro. (DATE)

### 14. Comentarios
Almacena los comentarios realizados por los clientes hacia los conductores.

![image](https://github.com/user-attachments/assets/85d02790-7015-4ab8-81f5-91cc15cf7010)

   * ID_Comentario: Identificador único para cada comentario. (INT, PK, AUTO_INCREMENT)
   * ID_Cliente: Referencia al cliente que realizó el comentario. (INT, FK)
   * ID_Conductor: Referencia al conductor sobre el que se realiza el comentario. (INT, FK)
   * Comentario: Texto del comentario. (TEXT)
   * Fecha_Comentario: Fecha y hora en que se hizo el comentario. (DATETIME)

### 15. Historial_Precios
Registra los cambios en los precios de las tarifas a lo largo del tiempo.

![image](https://github.com/user-attachments/assets/71d2c713-0114-4fc2-9847-bcb8cf823315)

   * ID_Historial: Identificador único para cada registro de precio. (INT, PK, AUTO_INCREMENT)
   * ID_Tarifa: Referencia a la tarifa cuyo precio ha cambiado. (INT, FK)
   * Fecha: Fecha en que se actualizó el precio. (DATE)
   * Precio: Precio aplicado en esa fecha. (DECIMAL(10, 2))

# Vistas

![image](https://github.com/user-attachments/assets/bc17fce6-be4e-48e8-9357-a602642f978e)

## 1. Vista: vista_autos
### Descripción:
Esta vista muestra información de los autos junto con el nombre y apellido del conductor asignado.
#### Objetivo:
Esta vista tiene como objetivo proporcionar una lista de autos con sus respectivos conductores, que será útil para consultar qué conductor está asignado a cada auto.

![image](https://github.com/user-attachments/assets/8f599b6c-b439-4cce-bfcc-7da90687714d)

### Campos:
   * Patente: Placa del auto.
   * ID_Conductor: Identificador del conductor.
   * Nombre_Conductor: Nombre del conductor.
   * Apellido_Conductor: Apellido del conductor.
#### Tablas que la componen:
   * proyecto_remiseria.autos
   * proyecto_remiseria.conductores

### Script

![image](https://github.com/user-attachments/assets/dd4a4801-ac09-43a2-b4c6-37f0362aa30e)

## 2. Vista: vista_clientes
### Descripción:
Esta vista muestra información de los clientes junto con los detalles de sus reservas si las hay.
### Objetivo:
Esta vista tiene como objetivo proporcionar una lista de clientes con sus datos de contacto y sus reservas, que será útil para analizar el comportamiento y las preferencias de los clientes.

![image](https://github.com/user-attachments/assets/3d4f0ad2-e247-4964-8a2e-8138d2124284)

### Campos:
   * Nombre: Nombre del cliente.
   * Apellido: Apellido del cliente.
   * Teléfono: Número de contacto.
   * Cuil: CUIL del cliente.
   * Origen: Origen de la reserva.
   * Destino: Destino de la reserva.
   * Fecha_Hora: Fecha y hora de la reserva.
### Tablas que la componen:
* proyecto_remiseria.clientes
* proyecto_remiseria.reservas

### Script

![image](https://github.com/user-attachments/assets/bf3fc956-0a81-4eaf-94db-16237dc83b15)

## 3. Vista: vista_comentarios
### Descripción:
Esta vista muestra los comentarios hechos por los clientes, junto con los nombres y apellidos de los clientes y conductores involucrados.
#### Objetivo:
Esta vista tiene como objetivo proporcionar una lista de comentarios con información sobre los clientes y conductores, que será útil para el análisis de feedback y la mejora del servicio.

![image](https://github.com/user-attachments/assets/8b49cf84-a3cc-422b-b07a-0781b811e9d5)

### Campos:
   * Comentario: Texto del comentario.
   * Nombre_Cliente: Nombre del cliente.
   * Apellido_Cliente: Apellido del cliente.
   * Nombre_Conductor: Nombre del conductor.
   * Apellido_Conductor: Apellido del conductor.
### Tablas que la componen:
   * proyecto_remiseria.comentarios
   * proyecto_remiseria.clientes
   * proyecto_remiseria.conductores

### Script

![image](https://github.com/user-attachments/assets/48c65906-4adc-4948-a368-53461f0bbc40)

## 4. Vista: vista_conductores
### Descripción:
Esta vista muestra información de los conductores junto con los detalles del auto que manejan (si tienen uno asignado).
### Objetivo:
Esta vista tiene como objetivo brindar una lista de conductores con sus datos de contacto y los autos que manejan, que servirá para la gestión de conductores y asignación de vehículos.

![image](https://github.com/user-attachments/assets/4fd5aaaf-cf7a-4a83-b273-d1f431948d8d)

### Campos:
   * Nombre: Nombre del conductor.
   * Apellido: Apellido del conductor.
   * Teléfono: Teléfono del conductor.
   * Patente: Placa del auto asignado.
   * Marca: Marca del auto.
   * Modelo: Modelo del auto.
### Tablas que la componen:
   * proyecto_remiseria.conductores
   * proyecto_remiseria.autos

### Script
![image](https://github.com/user-attachments/assets/2f6a5f40-6d53-42ca-9ea0-736f92b938c5)

## 5. Vista: vista_reservas
### Descripción:
Esta vista muestra información de las reservas, incluyendo el origen, destino y fecha/hora, los nombres y apellidos de los clientes y conductores.
### Objetivo:
Esta vista tiene como objetivo brindar una lista de reservas con información completa sobre los clientes y conductores involucrados, que servirá para el seguimiento y análisis de reservas.

![image](https://github.com/user-attachments/assets/9d3157e2-4f7d-4b37-ac50-61041274fdd0)

### Campos:
   * Origen: Origen de la reserva.
   * Destino: Destino de la reserva.
   * Fecha_Hora: Fecha y hora de la reserva.
   * Nombre_Cliente: Nombre del cliente.
   * Apellido_Cliente: Apellido del cliente.
   * Nombre_Conductor: Nombre del conductor.
   * Apellido_Conductor: Apellido del conductor.
### Tablas que la componen:
   * proyecto_remiseria.reservas
   * proyecto_remiseria.clientes
   * proyecto_remiseria.conductores

### Script
![image](https://github.com/user-attachments/assets/53ceb6f4-dc90-4882-9619-314b32ee1b3e)

## 6. Vista: vista_rutas
### Descripción:
Esta vista muestra las rutas disponibles, incluyendo el origen, destino y la distancia en kilómetros, junto con la información de las reservas que coinciden con esas rutas, como la fecha/hora de la reserva y el ID del cliente que hizo la reserva.
### Objetivo:
Esta vista tiene como objetivo proporcionar una lista de rutas con sus detalles y las reservas asociadas, útil para analizar las rutas más comunes, su frecuencia y los clientes que las utilizan.

![image](https://github.com/user-attachments/assets/0c172bd4-282b-4c4b-a6bb-51fe65c72996)

### Campos:
   * Origen: Origen de la ruta.
   * Destino: Destino de la ruta.
   * Distancia_Km: Distancia en kilómetros.
   * Fecha_Hora: Fecha y hora de la reserva (si existe).
   * ID_Cliente: Identificador del cliente que hizo la reserva.
### Tablas que la componen:
   * proyecto_remiseria.rutas
   * proyecto_remiseria.reservas

### Script
![image](https://github.com/user-attachments/assets/1dd156fa-4de8-44d1-b390-cbfe50d7327a)


# Funciones
![image](https://github.com/user-attachments/assets/21deb637-0c14-48f3-8944-8ed419384dc1)

## 1. Función: total_viajes_conductor
### Descripción:
Esta función calcula el total de viajes realizados por un conductor específico, identificado por su nombre y apellido.
### Objetivo:
Esta función tiene como objetivo proporcionar un conteo del número de viajes realizados por un conductor en particular, útil para evaluaciones de rendimiento y análisis de trabajo del conductor.
### Datos o tablas manipuladas:
  * Viajes: Para obtener los viajes realizados.
  * Reservas: Para enlazar los viajes con las reservas.
  * Autos: Para identificar el auto utilizado en la reserva.
  * Conductores: Para identificar el conductor específico.
### Script

![image](https://github.com/user-attachments/assets/cfa27836-9d73-413a-a6f7-836193c12e30)

Al ejecutar el script se muestra el total del viajes realizado por el conductor

![image](https://github.com/user-attachments/assets/42ccdb59-58f3-4b01-bbff-7018facb0935)

![image](https://github.com/user-attachments/assets/f79a045f-2dcd-4e5b-ae5c-3065b39e69fb)

## 2. Función: total_comentarios_conductor
### Descripción:
Esta función calcula el total de comentarios recibidos por un conductor específico, identificado por su nombre y apellido.
### Objetivo:
Esta función tiene como objetivo proporcionar un conteo del número de comentarios recibidos por un conductor en particular, útil para analizar la retroalimentación del servicio y evaluar la satisfacción del cliente con respecto al conductor.
### Datos o tablas manipuladas:
* Comentarios: Para obtener los comentarios hechos.
* Conductores: Para identificar el conductor específico.

### Script
![image](https://github.com/user-attachments/assets/46081d7e-23f2-450f-990f-91d6b20a57ed)

# STORED PROCEDURES

![image](https://github.com/user-attachments/assets/156b6e15-8eff-4780-85ec-b573969656d2)

## 1. Stored Procedure: ObtenerReservasPorConductor
### Descripción:
Este procedimiento recupera todas las reservas asociadas a un conductor específico, identificado por su nombre y apellido.
### Objetivo:
Este procedimiento tiene como objetivo proporcionar una manera eficiente de consultar todas las reservas realizadas por un conductor en particular. Esto facilita la gestión y análisis del trabajo del conductor, permitiendo a la administración evaluar la carga de trabajo y eficiencia de trabajo de los conductores.
### Tablas que coponen y/o interactúan:
   * Reservas: Proporciona la información de las reservas.
   * Autos: Relaciona las reservas con los autos.
   * Conductores: Identifica el conductor asociado al auto y, por ende, a las reservas.

### Script

![image](https://github.com/user-attachments/assets/706522d1-ea42-4207-8875-dc1f34b72864)

### Llamado del stored procedure (se tomaron como ejemplo 2 conductores)
Al ejecutar el script se obtienen las reservas realizadas por los conductores Diego Medina y Fernando Morales

![image](https://github.com/user-attachments/assets/8c67c142-b23f-4126-89cd-f41768dbf2cc)

![image](https://github.com/user-attachments/assets/5c4e9758-5d8f-406c-b227-1377a3b1317d)

![image](https://github.com/user-attachments/assets/51621670-ebaa-4121-a664-a87f39e3a326)

![image](https://github.com/user-attachments/assets/ee4e6347-7c55-419b-b803-97ee3c367526)

![image](https://github.com/user-attachments/assets/6978efa0-e22f-4f17-9065-380dff95faf7)

## 2. Stored Procedure: AgregarCliente
### Descripción:
Este procedimiento añade un nuevo cliente a la base de datos, insertando sus datos personales como nombre, apellido, teléfono, email y CUIL.
### Objetivo:
Este procedimiento tiene como objetivo automatizar y simplificar el proceso de inserción de nuevos clientes en la base de datos, asegura la consistencia de los datos ingresados, mejora la gestión de información de los clientes y facilita la integración de nuevos clientes en el sistema.
### Tablas que coponen y/o interactúan:
   * Clientes: La tabla en la que se insertan los nuevos registros de clientes.

### Script
![image](https://github.com/user-attachments/assets/5de2e3c8-ea59-4ac7-92eb-7cf12c87bd62)

### Llamado del stored procedure
Al ejecutar el script, se agrega el cliente N° 102

![image](https://github.com/user-attachments/assets/af8a5a97-655e-4e33-8182-436137e2d383)

![image](https://github.com/user-attachments/assets/c5c3f62c-e6e5-4a28-8bd9-11fd71806c43)

# TRIGGERS
## Trigger 1: unique_client_email

![image](https://github.com/user-attachments/assets/e1644f8b-fde5-46f2-86f2-d48fd457386d)

### Descripción:
Este trigger se encarga de asegurar que no se puedan insertar registros en la tabla Clientes con correos electrónicos duplicados. Antes de cada inserción, se verifica si el correo electrónico ya existe en la tabla. Si ya está en uso, el trigger lanza un error y cancela la operación.
### Objetivo:
Este trigger tiene como objetivo garantizar la unicidad del campo Email en la tabla Clientes para evitar que múltiples clientes compartan el mismo correo electrónico.
### Tablas que coponen
   * Clientes: Tabla principal sobre la cual se inserta el nuevo registro y que contiene el campo Email.
## Trigger 2: check_pago_monto

![image](https://github.com/user-attachments/assets/ec6c46db-c5d9-45d7-9756-68fad6f82640)

### Descripción:
Este trigger verifica que el campo Monto de la tabla Pagos no sea negativo antes de realizar una inserción. Si el valor es negativo, el trigger lanza un error y cancela la operación.
### Objetivo:
Este trigger tiene como objetivo asegurar la integridad de los datos en la tabla Pagos, impidiendo que se registren montos de pago inválidos, como números negativos.
### Tablas que coponen
   * Pagos: Tabla principal en la cual se está intentando insertar el nuevo pago con su respectivo Monto.

# Roles
## Se crearon los siguientes roles:
Gestión, Administración y Conductor.
## 1er Rol: "Gestión"
### Descripción:
El rol Gestion es un rol de alto nivel en el sistema que otorga todos los privilegios sobre la base de datos proyecto_remiseria. Este rol está diseñado para usuarios que requieren acceso completo a la base de datos, permitiéndoles realizar cualquier tipo de operación en todas las tablas, vistas, funciones y procedimientos. Los usuarios con este rol pueden crear, modificar y eliminar tablas, así como administrar roles y permisos.

![image](https://github.com/user-attachments/assets/61af2dc7-9013-46e4-8631-a02ac5fc59e8)

### Resumen de Permisos:
TODOS los privilegios sobre la base de datos proyecto_remiseria.
Acceso completo (DML y DDL) a todas las tablas, vistas, funciones y procedimientos.

## 2do Rol: "Admin"
### Descripción:
El rol Admin otorga permisos amplios pero específicos sobre ciertas tablas y funcionalidades dentro de la base de datos. Este rol permite la gestión completa de las tablas conductores, autos, pagos y clientes, así como la ejecución de funciones y procedimientos relevantes para la administración del sistema. Este rol es ideal para el personal de administración que necesita gestionar los datos de conductores, autos, pagos y cliente. No tiene acceso para modificar la estructura de la base de datos.

![image](https://github.com/user-attachments/assets/3f4eddaa-a1a8-4e8c-9ae3-c656c67af907)

### Resumen de Permisos:
* #### DML (SELECT, INSERT, UPDATE, DELETE) sobre las tablas:
   * conductores
   * autos
   * pagos
   * clientes
   * 
* #### Ejecutar funciones:
   * total_comentarios_conductor
   * total_viajes_conductor

* #### Ejecutar procedimientos:
   * AgregarCliente
   * ObtenerReservasPorConductor

* #### SELECT en vistas:
   * vista_clientes
   * vista_conductores
   * vista_autos
   * vista_rutas

## 3er Rol: "Conductor"
### Descripción:
El rol Conductor permite a los conductores gestionar datos relacionados con los clientes, reservas, autos, viajes y ofertas. También tienen permisos para interactuar con los comentarios y pueden ejecutar ciertas funciones y procedimientos que son relevantes para su trabajo diario. Es perfecto para los conductores que necesitan acceso a la información relacionada con su trabajo, como clientes, reservas, y autos, permitiéndoles actualizar estos datos. Sin embargo, no pueden eliminar datos y su acceso está limitado a funciones y procedimientos que apoyan su labor.

![image](https://github.com/user-attachments/assets/2fa17ace-9007-4eea-9bd3-e77d74b92942)

## Resumen general:
   * Gestion: Acceso total. Este rol tiene todos los permisos sobre la base de datos. Puede crear, modificar, eliminar, consultar.
   * Admin: Acceso a datos importantes. Este rol tiene permisos para ver, agregar, actualizar y eliminar información de conductores, autos, pagos y clientes.
   * Conductor: Acceso limitado. Los conductores pueden ver, agregar y actualizar datos de clientes, reservas, autos, viajes, ofertas y comentarios.
