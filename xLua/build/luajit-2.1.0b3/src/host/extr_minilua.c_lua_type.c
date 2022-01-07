
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int * StkId ;


 int * index2adr (int *,int) ;
 int luaO_nilobject_ ;
 int ttype (int *) ;

__attribute__((used)) static int lua_type(lua_State*L,int idx){
StkId o=index2adr(L,idx);
return(o==(&luaO_nilobject_))?(-1):ttype(o);
}
