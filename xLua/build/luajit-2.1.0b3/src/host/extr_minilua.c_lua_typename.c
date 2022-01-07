
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int UNUSED (int *) ;
 char const** luaT_typenames ;

__attribute__((used)) static const char*lua_typename(lua_State*L,int t){
UNUSED(L);
return(t==(-1))?"no value":luaT_typenames[t];
}
