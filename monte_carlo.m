dx=5
[f]=Proj(5)
xk=f
S=dx*xk

#y=[]
#x=[]
N1=0
for i=1:1000
  y=(xk-0).*rand()
  x=(dx-0).*rand()
  [f]=Proj(x)
  if y<=f
    N1+=1
    end
end

wynMonteCarlo=(N1/1000)*S