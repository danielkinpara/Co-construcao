# *********************************************
#
# Analise estatistica dos dados Co-construcao
# Data ínico: 04-dez-2022
# Data versão: 06-dez-2022
#
# Daniel Kinpara
#
# *********************************************

# define ponto como ponto decimal
# options(OutDec = ".")

# Importar dados do arquivo CSV. Esse arquivo deve ter:
#
# 1) Espaços em branco removidos e preenchidos com "#N/D";
# 2) Remover as acentuações, cedilhas e caracteres especiais;
# 3) Primeira linha conter o cabeçalho;
# 4) Converter as vírgulas decimais por pontos;
# 5) Converter as respostas V/F por TRUE/FALSE.

dados <- read.table(
  file ="D:/Documentos/Embrapa/Estatística/PIP_CODIFICADA_2022_12_06_dot.csv",
  header = TRUE,
  sep = ";",
  as.is = TRUE,
  comment.char = "",
  na.strings = "#N/D"
  )


# As variáveis categóricas são convertidas em fatores.


# Situação do PIP
#
dados$COD_SIT <- factor(dados$COD_SIT,
                      levels = c("C", "A", "R"),
                      labels = c("Concluido", "Ativo", "Renovacao")
                    )

# Comunidade (Núcleos Rurais)
#
dados$COD_NUC <- factor(dados$COD_NUC,
                      levels = c("PI1", "TAQ", "PI2", "TAP", "SAN", "ASA",
                                 "ARI", "QP2", "FAP", "TAS"),
                      labels = c("Nucleo Rural Pipiripau",
                                 "Nucleo Rural Taquara",
                                 "Nucleo Pipiripau 2",
                                 "Nucleo Rural Taquara/Pipiripau",
                                 "Nucleo Rural Santos Dumont",
                                 "Nucleo Rural Alto Santos Dumont",
                                 "Areas Isoladas",
                                 "Quintas do Pipiripau",
                                 "Fazenda Pipiripau",
                                 "Nucleo Rural Taquara/Santos Dumont")
                    )

# Gênero
#
dados$COD_GEN <- factor(dados$COD_GEN,
                          levels = c("M", "F"),
                          labels = c("Masculino", "Feminino")
                        )
# Situação fundiária
#
dados$COD_FUN <- factor(dados$COD_FUN,
                          levels = c("CE", "CO", "A", "C","D","NI","E","P"),
                          labels = c("Cessão", "Concessão", "Arrendamento",
                                   "Contrato", "Declaração","Não informado",
                                   "Escritura","Posse")
                        )

# Modalidade
#
dados$COD_MODA <- factor(dados$COD_MODA,
                          levels = c("M1", "M2C","M2R","M3"),
                          labels = c("Modalidade 1", "Modalidade 2 Conservação",
                                 "Modalidade 2 Restauração", "Modalidade 3")
                         )

# Gleba
#
dados$COD_GLE <- factor(dados$COD_GLE,
                          levels = c("G1", "G2","G3","G4","G5","G6","G7","G8",
                                   "G9", "G10","G11","G12","G13","G14","G15",
                                   "G16", "G17","G18","G19","G20","G21","G22",
                                   "G23", "G24","G25","G26","G27","G28","G29",
                                   "G30", "G31","G32"),
                        labels = c("Gleba 1", "Gleba 2", "Gleba 3", "Gleba 4",
                                 "Gleba 5","Gleba 6","Gleba 7","Gleba 8",
                                 "Gleba 9","Gleba 10","Gleba 11","Gleba 12",
                                 "Gleba 13","Gleba 14","Gleba 15","Gleba 16",
                                 "Gleba 17","Gleba 18","Gleba 19","Gleba 20",
                                 "Gleba 21","Gleba 22","Gleba 23","Gleba 24",
                                 "Gleba 25","Gleba 26","Gleba 27","Gleba 28",
                                 "Gleba 29","Gleba 30","Gleba 31","Gleba 32")
                        )

# Práticas implantadas
#
dados$COD_PRI <- factor(dados$COD_PRI,
                          levels = c("A", "AP", "R", "RP","D","SI"),
                          labels = c("Aceite", "Aceite parcial", "Recusado",
                                   "Recusado parcial", "Desistência",
                                   "Sem informação")
                        )


# Primeira Vistoria
#
dados$COD_VI1 <- factor(dados$COD_VI1,
                        levels = c("D", "NA", "NP", "P","PP","R","O"),
                        labels = c("Desistencia", "Não aceito", "Não pago",
                                 "Pago", "Pago parcial","Recusado",
                                 "Outros")
                        )

# Segunda vistoria
#
dados$COD_VI2 <- factor(dados$COD_VI2,
                        levels = c("D", "NA", "NP", "P","PP","R","O"),
                        labels = c("Desistencia", "Não aceito", "Não pago",
                                   "Pago", "Pago parcial","Recusado",
                                   "Outros")
                        )

# Terceira vistoria
#
dados$COD_VI3 <- factor(dados$COD_VI3,
                        levels = c("D", "NA", "NP", "P","PP","R","O"),
                        labels = c("Desistencia", "Não aceito", "Não pago",
                                   "Pago", "Pago parcial","Recusado",
                                   "Outros")
                          )


# Quarta vistoria
#
dados$COD_VI4 <- factor(dados$COD_VI4,
                        levels = c("D", "NA", "NP", "P","PP","R","O"),
                        labels = c("Desistencia", "Não aceito", "Não pago",
                                   "Pago", "Pago parcial","Recusado",
                                   "Outros")
                        )


# QUinta vistoria
#
dados$COD_VI5 <- factor(dados$COD_VI5,
                        levels = c("D", "NA", "NP", "P","PP","R","O"),
                        labels = c("Desistencia", "Não aceito", "Não pago",
                                   "Pago", "Pago parcial","Recusado",
                                   "Outros")
                        )

# CAR
#
dados$COD_CAR <- factor(dados$COD_CAR,
                        levels = c("R", "SR"),
                        labels = c("Registrado", "Sem registro")
                        )


# PAR
#
dados$COD_PAR <- factor(dados$COD_PAR,
                        levels = c("W", "P", "S", "O"),
                        labels = c("WWF", "Projeto Agua Brasil",
                                   "Seagri", "Outros")
                        )


# CUS
#
dados$COD_CUS <- factor(dados$COD_CUS,
                        levels = c("I", "SC", "CN", "CE", "O"),
                        labels = c("Implantacao", "Sem custos",
                                   "Custo nao estimavel", "Custo estimado",
                                   "Outros")
                        )


# Modificações do PIP
#
dados$COD_MOD <- factor(dados$COD_MOD,
                        levels = c("S", "N", "O"),
                        labels = c("Implantacao", "Sem custos", "Outros")
                        )


# Visualiza a estrutura de dados
#
str(dados)


# Estatística descritiva dos dados
#
summary(dados)


# Boxplot dos tamanhos de propriedade (geral)
#
boxplot(dados$TAM, horizontal = TRUE)


# BOxplot dos tamanhos de propriedade por núcleo
#
boxplot(dados$TAM ~ dados$COD_NUC,
        names = c("PI1", "TAQ", "PI2", "TAP", "SAN", "ASA", "ARI", "QP2",
                  "FAP", "TAS"))


# Boxplot dos tamanhos de propriedade por situação fundiária
#
boxplot(dados$TAM ~ dados$COD_FUN,
        names = c("Cessão", "Concessão", "Arrend.", "Contr.", "Declar.",
                  "Sem info.", "Escr.", "Posse"))


# Boxplot dos tamanhos de propriedade por modalidade
#
boxplot(dados$TAM ~ dados$COD_MODA,
        names = c("Mod 1", "Mod 2 COns.", "Mod 2 Rest.", "Mod 3"))



#
#
#
# Transformação dos dados
#
#
#


#
# >>>>>>>>>>>>>>>>  ANÁLISE POR ID <<<<<<<<<<<<<<<<<<<
#

# Dataset com dados numéricos consolidados para cada ID.
#
# Média da área (TAM)
# Área total das intervenções (INT)
# Pagamento dos Serviços Ambientais nos 5 anos (SPS)
# 
#

dadosIDunico <- dados[!duplicated(dados$ID),]

for (x in 1:nrow(dadosIDunico)) {
  
    id =  dadosIDunico$ID[x]
    
    dadosIDunico$INT[x] <- sum(dados$INT[
                                    which(dados$ID==id)
                                              ]
                                    )
    dadosIDunico$TAM[x] <- mean(dados$TAM[
                                    which(dados$ID==id)
                                              ]
                                    )
    dadosIDunico$SPS[x] <- sum(dados$SPS[
                                    which(dados$ID==id)
                                              ]
                                    )
    }

#
# Remoção de outliers de TAM (tamanho de propriedade)
# a partir da base de dados filtrado por ID.
#

dadosTAM <- dadosIDunico$TAM

quartis <- quantile(dadosTAM, probs=c(.25,.75), na.rm=FALSE)
interQ <- IQR(dadosTAM)

limiteInferior <- quartis[1] - 1.5 * interQ
limiteSUperior <- quartis[2] + 1.5 * interQ

dadosTAM_sem_outlier <- subset(dadosTAM, dadosTAM > limiteInferior &
                                dadosTAM < limiteSUperior)


# Boxplot dos tamanhos de propriedade (geral) por 
#
boxplot(dadosTAM_sem_outlier, horizontal = TRUE,
        xlab = "hectares", main = "Tamanho de Propriedade")


# BOxplot dos tamanhos de propriedade por núcleo
#
boxplot(dadosIDunico$TAM ~ dadosIDunico$COD_NUC,
        names = c("PI1", "TAQ", "PI2", "TAP", "SAN", "ASA", "ARI", "QP2",
                  "FAP", "TAS"))


# Boxplot dos tamanhos de propriedade por situação fundiária
#
boxplot(dadosIDunico$TAM ~ dadosIDunico$COD_FUN,
        names = c("Cessão", "Concessão", "Arrend.", "Contr.", "Declar.",
                  "Sem info.", "Escr.", "Posse"))


# Boxplot dos tamanhos de propriedade por modalidade
#
boxplot(dadosIDunico$TAM ~ dadosIDunico$COD_MODA,
        names = c("Mod 1", "Mod 2 COns.", "Mod 2 Rest.", "Mod 3"))







#
# >>>>>>>>>>>>>>>>  ANÁLISE POR ANO <<<<<<<<<<<<<<<<<<<
#

# Dataset com dados numéricos consolidados para cada ANO.
#
# Somatória da área (TAM)
# Somatória das áreas de intervenção (INT)
# Somatória dos Pagamentos dos Serviços Ambientais nos 5 anos (SPS)
# 
#

dadosANOunico <- dados[!duplicated(dados$ANO),]

for (x in 1:nrow(dadosANOunico)) {
  
  ano =  dadosANOunico$ANO[x]
  
  dadosANOunico$INT[x] <- sum(dados$INT[
    which(dados$ANO==ano)
  ]
  )
  dadosANOunico$TAM[x] <- sum(dados$TAM[
    which(dados$ANO==ano)
  ]
  )
  dadosANOunico$SPS[x] <- sum(dados$SPS[
    which(dados$ANO==ano)
  ]
  )
}

#
# Graf_01 : área de intervenção ao longo dos anos.
#

plot(x = copiaDadosANOunico$ANO, y = copiaDadosANOunico$INT,
     xlab = "Ano", ylab = "Área Intervenção (ha)",
     main = "Área de intervenção anual")

lines(x = copiaDadosANOunico$ANO, y = copiaDadosANOunico$INT, col = "red")

#
# Graf_02 : PSA ao longo dos anos.

plot(x = copiaDadosANOunico$ANO, y = copiaDadosANOunico$SPS,
     xlab = "Ano", ylab = "Pagamento Serviços Ambientais (R$)",
     main = "Pagamento de Serviços Ambientais")

lines(x = copiaDadosANOunico$ANO, y = copiaDadosANOunico$SPS, col = "blue")

#
#
#
# Testes de correlação não paramétrico de Spearman
#
#
#


# Correlação tamanho de propriedade e intervenção
#
cor.test(x = dados$TAM, y = dados$INT, method = "spearman",
         alternative = "two.sided")


