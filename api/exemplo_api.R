
# -------------------------------------------------------------------------
# render.R 
# descricao: cria uma api usando o pacote plumber e cria um dockerfile 
#            para criar uma imagem para implantar no render 
# autor: alisson 
# data da ultima modificacao: 31.10.2023
# -------------------------------------------------------------------------

#* Escreve uma mensagem
#* @param msg A mensagem para escrever
#* @get /echo
function (msg = "") {
  cat("[", as.character(Sys.time()), "]", "rodei", "\n")
  paste0("Mensagem !!!!! = ", msg, "'")
}

#* Retorna a soma de dois números
#* @param a O primeiro número
#* @param b O segundo número
#* @post /sum
function (a, b) {
    as.numeric(a) + as.numeric(b)
}
