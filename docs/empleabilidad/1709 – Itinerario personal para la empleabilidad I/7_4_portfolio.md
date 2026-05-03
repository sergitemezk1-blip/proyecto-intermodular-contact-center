# Portfolio

Este portfolio reúne los trabajos que mejor explican mi perfil profesional. Está dividido en dos bloques. El primero recoge los proyectos del intermodular de ASIR, todos centrados en la arquitectura de un Contact Center. El segundo bloque añade tres proyectos personales del área de análisis de datos que complementan el perfil y que sirven para enseñar la trayectoria completa.

## Bloque 1: Proyecto Intermodular ASIR (Arquitectura de un Contact Center)

El proyecto principal que vertebra todo el ciclo es el diseño completo de la infraestructura tecnológica de un Contact Center con 55 usuarios. Cada módulo aporta una capa distinta de la arquitectura.

### Módulo 0371 — Fundamentos de Hardware

Diseño físico de los equipos del Contact Center. Dimensionado por perfiles (agentes, administración, soporte y desarrollo), selección de componentes según uso real y alineación con la red, los sistemas operativos y la base de datos del resto de módulos.

Qué muestra: capacidad para traducir requisitos operativos en decisiones de hardware concretas y justificadas.

### Módulo 0370 — Planificación y Administración de Redes

Diseño completo de la red empresarial. Topología jerárquica en dos plantas, segmentación con VLANs por departamento, listas de control de acceso entre VLANs, DHCP, redes WiFi separadas para empresa e invitados y subnetting documentado en hoja de cálculo. La maqueta se ha trabajado en Cisco Packet Tracer en diez fases con evidencia paso a paso.

Qué muestra: capacidad de pensar la red como una herramienta de negocio, no solo como un esquema técnico.

### Módulo 0369 — Implantación de Sistemas Operativos

Despliegue de un entorno virtualizado completo. Windows Server 2019 con Active Directory, DNS y permisos NTFS, Ubuntu Server haciendo de router y gateway, gestión de usuarios, unidades organizativas, grupos de seguridad bajo el modelo AGDLP y carpetas compartidas con permisos.

Qué muestra: control sobre la administración de sistemas y comprensión del ciclo completo, desde la creación de la máquina hasta el control de accesos.

### Módulo 0372 — Gestión de Bases de Datos

Diseño y montaje de la base de datos relacional del Contact Center. Análisis del negocio, diseño del modelo entidad relación, creación de tablas (clientes, agentes, campañas, llamadas), normalización, inserción de datos, consultas para sacar KPIs (productividad, efectividad, volumen), gestión de usuarios y backups.

Qué muestra: capacidad para conectar las necesidades del negocio con un modelo de datos coherente y útil.

### Módulo 0373 — Lenguajes de Marcas y Sistemas

Estructuración de la información del sistema con XML, validación con XSD y consultas con XPath. El módulo conecta los datos del Contact Center con un formato que permite intercambiarlos entre sistemas y validar su coherencia antes de cargarlos en la base de datos.

Qué muestra: cuidado por la calidad del dato desde el origen y comprensión de los formatos estándar de intercambio.

### Módulo Optativo (MPO) — Fundamentos de Computación en la Nube

Diseño de cómo viviría toda la infraestructura anterior si se desplegase en AWS. Elección del proveedor, arquitectura de tres capas, configuración de servicios (EC2, RDS, S3, IAM, VPC, ELB y Auto Scaling) y estimación de costes con un escenario base y un escenario ampliado.

Qué muestra: visión de futuro y capacidad para trasladar una infraestructura local al entorno cloud con criterio técnico y económico.

## Bloque 2: Proyectos Personales de Data y Business Intelligence

Estos tres proyectos son míos, los he construido fuera del ciclo y forman parte de mi portafolio profesional como analista. Los incluyo porque conectan con la especialización a la que quiero dirigirme y porque demuestran que el perfil técnico y el perfil de datos se complementan.

### Proyecto 1: Dashboard de Gestión VTC

Análisis trimestral de productividad, facturación y cancelaciones de una flota de 21 conductores. Dashboard de una sola página construido en Power BI con dos tablas relacionadas (productividad y absentismo) y métricas clave de rentabilidad, eficiencia operativa y motivos de cancelación.

Qué aprendí: cómo traducir la operación de una flota en métricas de negocio, cómo modelar datos relacionales para alimentar un dashboard y cómo presentar la información para que un responsable la interprete en pocos segundos.

### Proyecto 2: Panel de Gastos de Recursos Humanos

Control presupuestario anual con un presupuesto de 621.000 euros frente a 475.650 euros ejecutados. Modelo de tres tablas relacionadas (gastos, presupuesto y calendario), métricas de ejecución acumulada y comparativas mensuales por categoría.

Qué aprendí: cómo construir un modelo de control presupuestario desde cero, cómo trabajar con dimensiones de tiempo y cómo diseñar un dashboard pensado para que el responsable financiero detecte desvíos antes de que se conviertan en problemas.

### Proyecto 3: Dashboard de Entregas (Logística de Transporte)

Análisis de 15.000 entregas reales con 50 conductores, 7 zonas y 4 merchants. Dataset construido por mí, normalizado y validado. El dashboard mide efectividad global, distribución por zonas, motivos de incidencias y rendimiento por conductor.

Qué aprendí: cómo construir y limpiar un dataset propio de gran volumen, cómo tipificar incidencias para que sirvan a la operación y cómo combinar varias dimensiones (tiempo, zona, conductor, merchant) en un único panel comprensible.

## Conexión entre los dos bloques

Los proyectos del intermodular y los proyectos personales no están separados, se complementan. El intermodular me da la base técnica (sistemas, redes, bases de datos, cloud) y los proyectos personales muestran la capa de análisis que va por encima. Juntos cuentan la historia completa: sé montar la infraestructura, sé estructurar los datos y sé convertirlos en información útil para el negocio.

## Estructura de entrega y enlace al repositorio

Toda la documentación de empleabilidad está organizada en GitHub bajo la carpeta:

```
/docs/empleabilidad/
   1_perfil_profesional.md
   2_investigacion_sector.md
   3_presentacion_proyecto.md
   4_portfolio.md
   5_reflexion.md
```

Los proyectos intermodulares se encuentran en sus respectivas carpetas dentro del repositorio, cada uno con su README explicativo, capturas de las fases de ejecución y la documentación entregada en formato PDF.

Repositorio del proyecto: pendiente de añadir el enlace una vez publicado.
