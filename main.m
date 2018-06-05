t=20
points=[]
for t=1:20
[f] = Proj(t)
points(t)=f
plot(points)
end

dx = 5/1000
wyn_prost=0
wyn_trapez=0
pom = []
pom(1)=points(1)+dx
for i=1:1000
  [f]=Proj(pom(i)+(i*dx))
  pom(i+1)=f
  wyn_trapez+=((pom(i)+pom(i+1))/2)*dx
  wyn_prost+=f
 end
 
wynProst= wyn_prost*dx
[f]=Proj(5)
xk=f
[f]=Proj(1)
xp=f
[f]=Proj((5+1)/2)
xsr=f
wynSimpson=((5-1)/6)*(xp+(4*xsr)+xk)
