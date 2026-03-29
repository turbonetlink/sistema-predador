Markdown<div align="center">

# 🦅 SISTEMA PREDADOR v15.0
### Tactical Command Center • Offline Intelligence

![OS](https://img.shields.io/badge/OS-Linux%20%7C%20DragonOS-blue?style=for-the-badge&logo=linux)
![Shell](https://img.shields.io/badge/Shell-Bash-green?style=for-the-badge&logo=gnu-bash)
![AI](https://img.shields.io/badge/Engine-Ollama-white?style=for-the-badge)
![Hardware](https://img.shields.io/badge/Hardware-Toughbook%20FZ--55-red?style=for-the-badge)

<br>
<img src="./screenshot.jpg" alt="Painel Predador" width="800"/>

> *Painel de comando unificado via terminal para operações de Inteligência de Sinais (SIGINT), Radioamadorismo e assistência técnica em ambientes **100% Offline**.*

</div>

---

## 📋 1. Visão Geral do Sistema

Projetado para arquitetura de estações táticas, o **Sistema Predador** faz a leitura direta do núcleo (Kernel) para telemetria em tempo real, fornecendo acesso instantâneo a modelos avançados de Inteligência Artificial, geradores de imagem tática e triangulação GPS sem necessidade de conexão com a internet.

---

## ⚙️ 2. Instalação do Motor de IA (Pré-requisito)

O sistema exige o motor **Ollama** rodando em background. Abra seu terminal e execute os comandos abaixo na ordem:

**1. Instale o Ollama:**
```bash
curl -fsSL [https://ollama.com/install.sh](https://ollama.com/install.sh) | sh
2. Baixe os modelos locais (Requer Internet nesta etapa):Bashollama pull llama3:latest
ollama pull dolphin-llama3:latest
ollama pull mannix/llama3.1-8b-abliterated:latest
🚀 3. Deploy e Permissões (CHMOD)⚠️ ATENÇÃO: O Linux bloqueia a execução de scripts por padrão. Você DEVE aplicar as permissões abaixo para o sistema funcionar.Bash# 1. Clone o repositório
git clone [https://github.com/turbonetlink/sistema-predador.git](https://github.com/turbonetlink/sistema-predador.git)
cd sistema-predador

# 2. Libere a execução do script principal (Motor)
chmod +x predador.sh

# 3. Libere a execução do atalho visual
chmod +x Predador.desktop
🖥️ Configurando o Ícone no DesktopMova o arquivo Predador.desktop para a sua Área de Trabalho.Clique nele com o botão direito e selecione Allow Launching (Permitir Execução).O ícone genérico mudará para o escudo de segurança. Dê um duplo clique para iniciar.🛠️ 4. Módulos OperacionaisO painel é dividido em ferramentas táticas numeradas. Operação via terminal direto: sudo ./predador.shCódFerramentaDescrição e Uso[1]🤖 Conselheiro IAAssistente sem filtros (abliterated). Ideal para emergências e rádio.[2]💻 Especialista TIAssistente focado em lógica de programação e cibersegurança.[3]📖 Tradutor TáticoTradução técnica imediata de manuais (Inglês > Português).[4]📡 Radar GPSSincroniza modem Sierra Wireless para leitura em mapas offline.[5]🎨 Desenhista IAGeração de esquemas via Stable Diffusion. Salva em ~/Imagens/.[6]📚 Manual de CampoInstruções rápidas projetadas na própria tela do terminal.⚠️ 5. Alertas de Telemetria DinâmicaO sistema monitora seu hardware em tempo real com Inteligência Visual:🔴 CALOR ALTO (>80°C): O indicador fica vermelho. Recomenda-se pausar IAs pesadas.🔴 BATERIA BAIXA (<20%): O indicador fica vermelho. Desligue radares e conecte à energia.❓ 6. Solução de Problemas (FAQ)<details><summary><b>❌ O script acusa "Permission Denied" ou não abre?</b></summary>Você esqueceu de aplicar as permissões. Retorne ao Passo 3 e execute <code>chmod +x predador.sh</code> na pasta raiz do projeto.</details><details><summary><b>🛰️ O GPS não encontra satélites?</b></summary>A antena precisa de visada para o céu. Operações em bunkers ou prédios de concreto bloqueiam o sinal do Sierra Wireless.</details><details><summary><b>🐢 A resposta da IA está demorando muito?</b></summary>A inferência local depende 100% da sua CPU. Certifique-se de não estar rodando outras tarefas pesadas em background.</details><div align="center"><b>Desenvolvido por Fabricio Cesar</b><i>IT Analyst, Cybersecurity & Radioamador (Classe C)</i>Estação: Panasonic Toughbook FZ-55</div>
