# final-project
library(ggplot2)

df2 <- data.frame(supp=rep(c("VC", "OJ"), each=3),
                  dose=rep(c("D0.5", "D1", "D2"),2),
                  len=c(6.8, 15, 33, 4.2, 10, 29.5))

ggplot(data=df2, aes(x=dose, y=len, fill=supp)) +
  geom_bar(stat="identity", position=position_dodge())+
  geom_text(aes(label=len), vjust=1.6, color="white",
            position = position_dodge(0.9), size=3.5)+
  scale_fill_brewer(palette="Paired")

 case1df <- data.frame(
  scenario = c(seq(1:20),c(seq(1:20))),
  method = c(rep(c("BOIN"), 20), rep("CRM", 20)),
  vals = c(55.5, 30.2, 51.1, 22, 52.2,
           )
)

case1df
ggplot(data=case1df, aes(x=scenario, y=vals, fill=method)) +
  geom_bar(stat="identity", position=position_dodge())+
  geom_text(aes(label=vals), vjust=1.6, color="white",
            position = position_dodge(0.9), size=3.5)+
  scale_fill_brewer(palette="Paired")
