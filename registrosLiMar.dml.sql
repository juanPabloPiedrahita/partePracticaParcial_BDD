-- ===========================
-- 1. CIUDAD
-- ===========================
INSERT INTO ciudad (ciudad_id, nombre_ciudad, codigo_postal) VALUES
(1, 'Bogotá', '110111'),
(2, 'Medellín', '050021'),
(3, 'Cali', '760001'),
(4, 'Barranquilla', '080001'),
(5, 'Cartagena', '130001'),
(6, 'Bucaramanga', '680001'),
(7, 'Manizales', '170001'),
(8, 'Pereira', '660001'),
(9, 'Cúcuta', '540001'),
(10, 'Santa Marta', '470001');

-- ===========================
-- 2. USUARIO
-- ===========================
INSERT INTO usuario (usuario_id, nombre, apellido, tipo_usuario, condicion_especial, ciudad_id) VALUES
(1, 'Carlos', 'Ramírez', 'Cliente', NULL, 1),
(2, 'Laura', 'Gómez', 'Cliente', 'Discapacidad visual leve', 2),
(3, 'Andrés', 'Torres', 'Empleado', NULL, 3),
(4, 'María', 'Pérez', 'Empleado', NULL, 4),
(5, 'Julián', 'Castro', 'Cliente', NULL, 5),
(6, 'Sofía', 'López', 'Empleado', NULL, 6),
(7, 'Camilo', 'Moreno', 'Empleado', NULL, 7),
(8, 'Daniela', 'Martínez', 'Cliente', 'Tercera edad', 8),
(9, 'Felipe', 'Ortiz', 'Empleado', NULL, 9),
(10, 'Valentina', 'Suárez', 'Cliente', NULL, 10);

-- ===========================
-- 3. EMPLEADO
-- ===========================
INSERT INTO empleado (empleado_id, usuario_id) VALUES
(1, 3),
(2, 4),
(3, 6),
(4, 7),
(5, 9),
(6, 3), -- se repite usuario_id si se permite (depende del modelo)
(7, 4),
(8, 6),
(9, 7),
(10, 9);

-- ===========================
-- 4. CARGO
-- ===========================
INSERT INTO cargo (cargo_id, nombre_cargo, tarea, empleado_id) VALUES
(1, 'Gerente', 'Supervisión general', 1),
(2, 'Asistente', 'Gestión de agendas', 2),
(3, 'Técnico', 'Mantenimiento de equipos', 3),
(4, 'Recepcionista', 'Atención al cliente', 4),
(5, 'Analista', 'Revisión de procesos', 5),
(6, 'Programador', 'Desarrollo de software', 6),
(7, 'Diseñador', 'Creación de materiales gráficos', 7),
(8, 'Supervisor', 'Coordinación de personal', 8),
(9, 'Vendedor', 'Atención comercial', 9),
(10, 'Contador', 'Gestión de finanzas', 10);

-- ===========================
-- 5. DEPARTAMENTO
-- ===========================
INSERT INTO departamento (departamento_id, nombre_departamento, empleado_id) VALUES
(1, 'Recursos Humanos', 1),
(2, 'Finanzas', 2),
(3, 'Mantenimiento', 3),
(4, 'Atención al Cliente', 4),
(5, 'Operaciones', 5),
(6, 'Tecnología', 6),
(7, 'Diseño', 7),
(8, 'Supervisión', 8),
(9, 'Ventas', 9),
(10, 'Contabilidad', 10);

-- ===========================
-- 6. SERVICIO
-- ===========================
INSERT INTO servicio (servicio_id, nombre_servicio, descripcion, estado) VALUES
(1, 'Instalación', 'Instalación de equipos electrónicos', 'Activo'),
(2, 'Mantenimiento', 'Revisión técnica y reparación', 'Activo'),
(3, 'Asesoría', 'Orientación a clientes', 'Activo'),
(4, 'Capacitación', 'Formación de personal', 'Inactivo'),
(5, 'Desarrollo', 'Creación de sistemas informáticos', 'Activo'),
(6, 'Diseño Gráfico', 'Creación de material visual', 'Activo'),
(7, 'Soporte Técnico', 'Atención de incidencias', 'Activo'),
(8, 'Auditoría', 'Control de calidad', 'Activo'),
(9, 'Consultoría', 'Asesoramiento empresarial', 'Inactivo'),
(10, 'Entrega', 'Distribución de productos', 'Activo');

-- ===========================
-- 7. MEDIO
-- ===========================
INSERT INTO medio (medio_id, tipo, usuario_id) VALUES
(1, 'Correo electrónico', 1),
(2, 'SMS', 2),
(3, 'Llamada telefónica', 3),
(4, 'Correo electrónico', 4),
(5, 'WhatsApp', 5),
(6, 'SMS', 6),
(7, 'Correo electrónico', 7),
(8, 'Llamada telefónica', 8),
(9, 'WhatsApp', 9),
(10, 'Correo electrónico', 10);

-- ===========================
-- 8. TURNO
-- ===========================
INSERT INTO turno (turno_id, usuario_id, empleado_id, servicio_id, estado, fecha, hora_inicio, hora_fin) VALUES
(1, 1, 1, 1, 'Completado', '2025-10-10', '08:00:00', '09:00:00'),
(2, 2, 2, 2, 'Pendiente', '2025-10-11', '09:00:00', '10:00:00'),
(3, 5, 3, 3, 'Completado', '2025-10-12', '10:00:00', '11:00:00'),
(4, 8, 4, 4, 'Cancelado', '2025-10-13', '11:00:00', '12:00:00'),
(5, 10, 5, 5, 'Pendiente', '2025-10-14', '12:00:00', '13:00:00'),
(6, 1, 6, 6, 'Completado', '2025-10-15', '13:00:00', '14:00:00'),
(7, 2, 7, 7, 'Pendiente', '2025-10-16', '14:00:00', '15:00:00'),
(8, 5, 8, 8, 'Completado', '2025-10-17', '15:00:00', '16:00:00'),
(9, 8, 9, 9, 'Pendiente', '2025-10-18', '16:00:00', '17:00:00'),
(10, 10, 10, 10, 'Completado', '2025-10-19', '17:00:00', '18:00:00');

-- ===========================
-- 9. NOTIFICACION
-- ===========================
INSERT INTO notificacion (notificacion_id, mensaje, fecha_envio, estado, usuario_id, medio_id, turno_id) VALUES
(1, 'Su turno ha sido confirmado', '2025-10-09 10:00:00', 'Enviado', 1, 1, 1),
(2, 'Recordatorio de turno mañana', '2025-10-10 08:00:00', 'Pendiente', 2, 2, 2),
(3, 'Servicio completado con éxito', '2025-10-11 11:30:00', 'Enviado', 5, 5, 3),
(4, 'Su turno fue cancelado', '2025-10-12 12:00:00', 'Enviado', 8, 8, 4),
(5, 'Turno pendiente de confirmación', '2025-10-13 09:00:00', 'Pendiente', 10, 10, 5),
(6, 'Encuesta de satisfacción', '2025-10-14 13:30:00', 'Enviado', 1, 1, 6),
(7, 'Actualización del servicio', '2025-10-15 14:00:00', 'Pendiente', 2, 2, 7),
(8, 'Nuevo turno asignado', '2025-10-16 15:00:00', 'Enviado', 5, 5, 8),
(9, 'Recordatorio de cita', '2025-10-17 16:00:00', 'Pendiente', 8, 8, 9),
(10, 'Gracias por su visita', '2025-10-18 17:00:00', 'Enviado', 10, 10, 10);
