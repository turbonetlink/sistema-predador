# 🦅 SISTEMA PREDADOR - Tactical Command Center

![Screenshot](./screenshot.jpg)

## 📋 Visão Geral
O **Sistema Predador** é um painel de comando unificado rodando via terminal, desenvolvido para operações de Inteligência de Sinais (SIGINT), sobrevivência e assistência técnica em ambientes com **isolamento total de rede (100% Offline)**. 

Projetado para a arquitetura de estações táticas (testado exaustivamente no **Panasonic Toughbook FZ-55** rodando **DragonOS / Ubuntu**), o sistema monitora a telemetria da máquina direto do núcleo (Kernel) em tempo real e fornece acesso instantâneo a modelos de Inteligência Artificial, geradores de imagem e triangulação GPS.

---

## 💻 Pré-Requisitos e Dependências
Para que o sistema funcione sem erros, certifique-se de ter os seguintes pacotes instalados e configurados no seu Linux:

1. **Ollama (Motor de IA):** Instalado e rodando em background.
   * Modelos necessários: Execute no terminal previamente para baixar:
     * `ollama pull llama3:latest`
     * `ollama pull dolphin-llama3:latest`
     * `ollama pull mannix/llama3.1-8b-abliterated:latest`
2. **GPS e Modem:** * Pacotes: `sudo apt install gpsd modemmanager libmm-glib0`
   * Hardware: Modem 4G/GPS interno ou dongle USB compatível.
3. **Gerador de Imagem (Opcional):**
   * O script aponta nativamente para o `stable-diffusion.cpp` compilado localmente. Se for usar a Opção 5, é necessário ter o binário e um modelo `.safetensors` baixado.

---

## 🚀 Guia de Instalação à Prova de Falhas

### Passo 1: Download do Repositório
Abra o seu terminal e clone o projeto para a sua pasta de usuário:
```bash
git clone [https://github.com/SEU_USUARIO/sistema-predador.git](https://github.com/SEU_USUARIO/sistema-predador.git)
cd sistema-predador
2. Liberar Execução (CHMOD)
O comando chmod +x diz ao Linux que esses arquivos são programas confiáveis. Sem isso, o sistema não abre.

Bash
# Dá permissão ao script principal
chmod +x predador.sh

# Dá permissão ao arquivo de atalho
chmod +x Predador.desktop
3. Configurar o Atalho na Área de Trabalho
Copie o arquivo Predador.desktop para sua pasta ~/Desktop (ou ~/Área de Trabalho).

Importante: Clique com o botão direito no ícone que apareceu na sua tela e selecione "Allow Launching" (Permitir Execução). O ícone mudará de um "papel em branco" para o ícone de segurança.

🛠️ Módulos Operacionais
[ 1 ] CONSELHEIRO IA: Assistente geral (modelo abliterated).

[ 2 ] ESPECIALISTA TI: Engenharia e Cibersegurança.

[ 3 ] TRADUTOR TÁTICO: Inglês > Português.

[ 4 ] RADAR GPS: Sincronia com modem Sierra Wireless.

[ 5 ] DESENHISTA IA: Geração de imagens via Stable Diffusion.

[ 6 ] MANUAL DE CAMPO: Guia rápido integrado.
