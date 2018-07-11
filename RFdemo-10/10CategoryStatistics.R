library(datasets)
data(iris)
install.packages("psych")
library(psych)
describeBy(iris,group = iris$Species)
library(lattice) # histogram �Լ� ����� ���ؼ�
histogram(~Sepal.Length|Species,  # ~formula : ������ Sepal.Length�� ������׷� �÷� 
          data=iris,
          layout=c(1,3), # 3x1 subplot ���̾ƿ�
          col="black")
boxplot(Sepal.Length~Species, #~ ���� 
        data = iris)