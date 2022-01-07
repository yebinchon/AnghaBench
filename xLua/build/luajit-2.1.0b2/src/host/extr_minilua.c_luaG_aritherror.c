
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int TValue ;


 int luaG_typeerror (int *,int const*,char*) ;
 int * luaV_tonumber (int const*,int *) ;

__attribute__((used)) static void luaG_aritherror(lua_State*L,const TValue*p1,const TValue*p2){
TValue temp;
if(luaV_tonumber(p1,&temp)==((void*)0))
p2=p1;
luaG_typeerror(L,p2,"perform arithmetic on");
}
