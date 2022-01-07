
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int * StkId ;


 int * index2adr (int *,int) ;
 int luaO_nilobject_ ;
 int luaV_lessthan (int *,int *,int *) ;

__attribute__((used)) static int lua_lessthan(lua_State*L,int index1,int index2){
StkId o1,o2;
int i;
o1=index2adr(L,index1);
o2=index2adr(L,index2);
i=(o1==(&luaO_nilobject_)||o2==(&luaO_nilobject_))?0
:luaV_lessthan(L,o1,o2);
return i;
}
