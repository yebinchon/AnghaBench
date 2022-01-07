
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_Number ;
typedef int a ;
typedef int Table ;
typedef int Node ;


 int cast_int (int) ;
 int * gnode (int const*,int ) ;
 int * hashmod (int const*,unsigned int) ;
 scalar_t__ luai_numeq (int ,int ) ;
 int memcpy (unsigned int*,int *,int) ;

__attribute__((used)) static Node*hashnum(const Table*t,lua_Number n){
unsigned int a[cast_int(sizeof(lua_Number)/sizeof(int))];
int i;
if(luai_numeq(n,0))
return gnode(t,0);
memcpy(a,&n,sizeof(a));
for(i=1;i<cast_int(sizeof(lua_Number)/sizeof(int));i++)a[0]+=a[i];
return hashmod(t,a[0]);
}
