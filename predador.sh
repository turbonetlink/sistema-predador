#!/bin/bash
# ==============================================================================
#  SISTEMA PREDADOR v15.0 - CYBER TACTICAL EDITION
#  Desenvolvido por: Fabricio Cesar | FZ-55
# ==============================================================================
VERDE='\033[0;32m'; AMARELO='\033[1;33m'; VERMELHO='\033[0;31m'; 
CIANO='\033[0;36m'; BRANCO='\033[1;37m'; CINZA='\033[1;30m'; RESET='\033[0m'; NEGRITO='\033[1m'

if [[ $EUID -ne 0 ]]; then
   clear
   echo -e "${CIANO}████████████████████████████████████████████████████████████████${RESET}"
   echo -e "${BRANCO}  INICIANDO SISTEMA PREDADOR... AUTENTICAÇÃO NECESSÁRIA         ${RESET}"
   echo -e "${CIANO}████████████████████████████████████████████████████████████████${RESET}"
   sudo "$0" "$@"
   exit $?
fi

while true; do
    CPU_RAW=$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {printf "%.0f", usage}')
    MEM_T=$(grep MemTotal /proc/meminfo | awk '{print $2}')
    MEM_A=$(grep MemAvailable /proc/meminfo | awk '{print $2}')
    RAM_RAW=$(( (MEM_T - MEM_A) * 100 / MEM_T ))
    TEMP_RAW=$(cat $(grep -l "x86_pkg_temp" /sys/class/thermal/thermal_zone*/type | sed 's/type/temp/') 2>/dev/null)
    TEMP_C=$((TEMP_RAW / 1000))
    BAT_RAW=$(cat /sys/class/power_supply/BAT1/capacity 2>/dev/null || echo "0")

    COR_TEMP=$AMARELO; [ "$TEMP_C" -ge 80 ] && COR_TEMP=$VERMELHO
    COR_BAT=$VERDE;    [ "$BAT_RAW" -le 20 ] && COR_BAT=$VERMELHO
    COR_CPU=$AMARELO;  [ "$CPU_RAW" -ge 85 ] && COR_CPU=$VERMELHO

    clear
    echo -e "${VERDE}"
    echo -e "  ██████╗ ██████╗ ███████╗██████╗  █████╗ ██████╗  ██████╗ ██████╗ "
    echo -e "  ██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔═══██╗██╔══██╗"
    echo -e "  ██████╔╝██████╔╝█████╗  ██║  ██║███████║██║  ██║██║   ██║██████╔╝"
    echo -e "  ██╔═══╝ ██╔══██╗██╔══╝  ██║  ██║██╔══██║██║  ██║██║   ██║██╔══██╗"
    echo -e "  ██║     ██║  ██║███████╗██████╔╝██║  ██║██████╔╝╚██████╔╝██║  ██║"
    echo -e "  ╚═╝     ╚═╝  ╚═╝╚══════╝╚═════╝ ╚═╝  ╚═╝╚═════╝  ╚═════╝ ╚═╝  ╚═╝"
    echo -e "  [ ESTAÇÃO TÁTICA FZ-55 - OPERAÇÃO SIGINT & INTELIGÊNCIA ]${RESET}"
    
    echo -e "\n${CIANO}  ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀${RESET}"
    echo -e "  ${NEGRITO}■ TELEMETRIA DO SISTEMA${RESET}"
    echo -e "    CPU: ${COR_CPU}${CPU_RAW}%${RESET}   |   RAM: ${AMARELO}${RAM_RAW}%${RESET}   |   CALOR: ${COR_TEMP}${TEMP_C}°C${RESET}   |   BATERIA: ${COR_BAT}${BAT_RAW}%${RESET}"
    echo -e "${CIANO}  ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄${RESET}\n"

    echo -e "  ${NEGRITO}■ MÓDULOS OPERACIONAIS${RESET}\n"
    
    echo -e "    ${BRANCO}[ 1 ]${RESET} ${VERDE}► CONSELHEIRO IA${RESET}        ${BRANCO}[ 2 ]${RESET} ${VERDE}► ESPECIALISTA TI${RESET}"
    echo -e "    ${CINZA}Assistência Geral Offline${RESET}       ${CINZA}Engenharia e Código${RESET}\n"

    echo -e "    ${BRANCO}[ 3 ]${RESET} ${VERDE}► TRADUTOR TÁTICO${RESET}       ${BRANCO}[ 4 ]${RESET} ${AMARELO}► RADAR GPS${RESET}"
    echo -e "    ${CINZA}Tradução de Manuais${RESET}             ${CINZA}Conexão Sierra Wireless${RESET}\n"

    echo -e "    ${BRANCO}[ 5 ]${RESET} ${VERMELHO}► DESENHISTA IA${RESET}         ${BRANCO}[ 6 ]${RESET} ${BRANCO}► MANUAL DE CAMPO${RESET}"
    echo -e "    ${CINZA}Geração de Esquemas${RESET}             ${CINZA}Instruções de Sobrevivência${RESET}\n"

    echo -e "    ${VERMELHO}[ 7 ] ■ ENCERRAR SISTEMA${RESET}"
    
    echo -e "\n${CIANO}  ──────────────────────────────────────────────────────────────────${RESET}"
    echo -e "  ${BRANCO}${NEGRITO}OPERADOR:${RESET} Fabricio Cesar | IT Analyst & Cybersecurity"
    echo -e "  ${BRANCO}${NEGRITO}ESTAÇÃO:${RESET} PANASONIC FZ-55   | ${BRANCO}RADIO:${RESET} CLASSE C"
    echo -e "${CIANO}  ──────────────────────────────────────────────────────────────────${RESET}\n"
    
    read -t 10 -p "  COMANDO > " OPCAO

    case $OPCAO in
        1) ollama run mannix/llama3.1-8b-abliterated:latest ;;
        2) ollama run dolphin-llama3:latest ;;
        3) ollama run llama3:latest ;;
        4) 
           echo -e "\n  ${AMARELO}Sincronizando satélites... (Ctrl+C para parar)${RESET}"
           killall -9 gpsd 2>/dev/null; [ -e /tmp/gps_pipe ] || mkfifo /tmp/gps_pipe; gpsd -N -n /tmp/gps_pipe &
           while true; do mmcli -m 0 --location-get | grep "\$" > /tmp/gps_pipe 2>/dev/null; sleep 2; done ;;
        5)
           read -p "  O que desenhar? " PT
           read -p "  Nome do arquivo: " NOME
           EN=$(ollama run llama3:latest "Translate to english only: $PT" | tr -d '\r')
           ~/Documentos/stable-diffusion.cpp/build/bin/sd-cli -m ~/Documentos/modelos-imagem/DreamShaper_8_pruned.safetensors -p "$EN" -o ~/Imagens/"$NOME".png --force-full-precision ;;
        6)
           clear
           echo -e "${BRANCO}  ██████████████████████████████████████████████████████████████████${RESET}"
           echo -e "  ${NEGRITO} MANUAL DE OPERAÇÕES - PREDADOR v15.0${RESET}"
           echo -e "${BRANCO}  ██████████████████████████████████████████████████████████████████${RESET}\n"
           echo -e "  ► ${CIANO}IA CONSELHEIRO:${RESET} Use para rádio e emergências médicas."
           echo -e "  ► ${AMARELO}RADAR GPS:${RESET} Ativa o modem Sierra para localização via mapa."
           echo -e "  ► ${VERMELHO}DESENHISTA:${RESET} Gera imagens táticas na pasta ~/Imagens."
           echo -e "  ► ${BRANCO}COMANDOS ÚTEIS:${RESET}"
           echo -e "     - Digite '/bye' para sair de qualquer IA."
           echo -e "     - Pressione 'Ctrl+C' para encerrar o GPS.\n"
           echo -e "${BRANCO}  ──────────────────────────────────────────────────────────────────${RESET}"
           read -p "  Pressione ENTER para retornar ao painel principal." ;;
        7) clear; exit 0 ;;
    esac
done
