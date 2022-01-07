
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int lua_State ;


 int luaC_checkGC (int *) ;
 char* luaO_pushvfstring (int *,char const*,int ) ;

__attribute__((used)) static const char*lua_pushvfstring(lua_State*L,const char*fmt,
va_list argp){
const char*ret;
luaC_checkGC(L);
ret=luaO_pushvfstring(L,fmt,argp);
return ret;
}
