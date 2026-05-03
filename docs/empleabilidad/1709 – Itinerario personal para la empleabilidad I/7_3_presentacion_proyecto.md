# Presentación Profesional del Proyecto

## 1. Qué es el proyecto

El proyecto consiste en el diseño completo de la arquitectura tecnológica de un Contact Center, desde el hardware hasta la nube. Es una simulación realista de la infraestructura de una empresa de atención al cliente con unos 55 usuarios distribuidos en dos plantas, que cubre agentes, administración y equipo técnico.

A lo largo del ciclo se han ido construyendo las distintas capas del sistema en cada uno de los módulos del intermodular. El resultado final es una arquitectura coherente donde cada pieza encaja con la siguiente: red, sistemas operativos, base de datos, lenguajes de marcas, hardware y despliegue en la nube.

## 2. Qué problema resuelve

En un Contact Center, la información se mueve muy rápido y a mucho volumen. Cada llamada, cada cliente, cada campaña y cada agente generan datos que hay que estructurar, almacenar y poder consultar para tomar decisiones en tiempo real.

Sin una infraestructura bien pensada aparecen tres problemas: los agentes pierden acceso al CRM cuando la red no está bien segmentada, los datos se quedan dispersos y no se pueden analizar y la operación se vuelve invisible para quien tiene que tomar decisiones.

Este proyecto resuelve esos problemas montando un entorno completo donde la información está organizada, los equipos están dimensionados al uso real y los datos pueden traducirse en indicadores de negocio.

## 3. Para quién está pensado

El proyecto está orientado a empresas que trabajan con operaciones de atención al cliente o gestión de campañas. Tienen en común tres cosas: muchos usuarios trabajando a la vez, datos de clientes y llamadas que hay que proteger y la necesidad de medir el rendimiento de los equipos cada día.

Sirve también como base para cualquier organización que quiera entender cómo se conecta una infraestructura técnica con la operación real, porque el enfoque del proyecto no es solo técnico, también es de negocio.

## 4. Tecnologías utilizadas

A lo largo de los distintos módulos he trabajado con un conjunto bastante variado de herramientas. Cada una resuelve una pieza concreta del puzzle.

**En la parte de redes:** Cisco Packet Tracer para diseñar la topología, segmentación por VLANs (siete obligatorias y tres adicionales), listas de control de acceso (ACLs), DHCP para asignación dinámica de IPs y configuración de redes WiFi separadas para empresa e invitados.

**En la parte de sistemas operativos:** VirtualBox como entorno de virtualización, Windows Server 2019 con Active Directory, DNS y permisos NTFS, Ubuntu Server actuando como router y gateway, y configuración de unidades organizativas y grupos de seguridad bajo el modelo AGDLP.

**En la parte de bases de datos:** MySQL como motor, MySQL Workbench como herramienta de modelado, diseño relacional con tablas de clientes, agentes, campañas y llamadas, normalización, claves foráneas y consultas SQL para extraer KPIs operativos.

**En la parte de lenguajes de marcas:** XML para estructurar la información, XSD para validar los datos, XPath para hacer consultas y Visual Studio Code como entorno de trabajo.

**En la parte de hardware:** dimensionado de equipos por perfil (agentes, administración y soporte técnico), elección de componentes según el uso real y diseño coherente con la red y los sistemas.

**En la parte de cloud:** AWS como proveedor, con servicios como EC2 para la aplicación, RDS para la base de datos, S3 para almacenamiento, IAM para seguridad, VPC para la red privada y servicios de balanceo y escalado automático.

## 5. Enfoque del proyecto

El proyecto no se ha desarrollado como un ejercicio académico aislado, sino como una simulación lo más cercana posible a un caso real. La idea desde el principio fue elegir un sector que conociera por dentro (el Contact Center) y diseñar cada pieza pensando en cómo afectaría a la operación.

Eso ha condicionado las decisiones técnicas. Por ejemplo, las VLANs no se han diseñado solo por seguir el manual, sino pensando en qué departamentos necesitan aislamiento real. La base de datos no se ha modelado solo en abstracto, sino pensando en qué KPIs querría sacar el supervisor de turno. Y el dimensionado del hardware no se ha hecho con tablas estándar, sino pensando en cuánta RAM consume el CRM cuando un agente tiene quince pestañas abiertas.

Esa coherencia entre todos los módulos es lo que da valor al proyecto. No son piezas sueltas, es una arquitectura completa.

## 6. Qué he aprendido desarrollándolo

A nivel técnico, el proyecto me ha dado una visión completa de cómo se monta una infraestructura desde cero. Antes veía las redes, los sistemas, las bases de datos y la nube como bloques separados, y ahora entiendo cómo se conectan entre sí dentro de una misma operación.

A nivel profesional, lo más valioso ha sido aprender a pensar en términos de operación y no solo de tecnología. Una decisión técnica que parece pequeña (cambiar el direccionamiento de una VLAN, mover una tabla de la base de datos o ajustar un permiso de Active Directory) puede tener un impacto enorme en cómo trabaja el equipo cada día.

Para mi perfil de analista ha sido especialmente útil. Ahora entiendo de dónde vienen los datos que después analizo en Power BI, cómo están estructurados en la base de datos y cómo viajan por la red de la empresa. Eso me da una ventaja a la hora de hablar con los equipos técnicos y a la hora de proponer mejoras: sé pedir lo que necesito porque entiendo cómo está montado el sistema.
