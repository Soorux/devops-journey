# 🚀 DevOps Journey

Mi camino de **estudiante de DAM2** a **DevOps / Cloud Engineer**.
Aquí subo los ejercicios, scripts y proyectos que voy haciendo mientras aprendo.

## 🗺️ Hoja de ruta

| Etapa | Temas | Estado |
|---|---|---|
| Linux | Terminal, permisos, `find`, `grep`, tuberías, SSH ([OverTheWire Bandit](https://overthewire.org/wargames/bandit/) 0→15) | ✅ |
| Bash | Scripts de automatización | 🟡 En curso |
| Python | Automatización, APIs | ⏳ |
| Contenedores y CI/CD | Docker, GitHub Actions | ⏳ |
| Cloud | AWS | ⏳ |
| Infraestructura como código | Terraform, Ansible | ⏳ |
| FinOps y seguridad | Control de costes, IAM, secretos | ⏳ |

## 📂 Contenido

### Semana 2: Bash
- [`descomprimir.sh`](semana2/descomprimir.sh): descomprime automáticamente un archivo con varias capas de compresión (hexdump → gzip → bzip2 → tar...). Detecta el formato de cada capa con `file` y aplica la herramienta adecuada en un bucle hasta llegar al texto plano.
  Automatiza el nivel 12 de Bandit: **de 15 minutos a mano a menos de 1 segundo**.

## 🛠️ Entorno
Ubuntu (WSL2) · Bash · Git
