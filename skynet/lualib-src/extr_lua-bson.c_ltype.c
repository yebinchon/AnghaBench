
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int lua_State ;







 int lsubtype (int *,int ,int const*,size_t) ;
 int luaL_error (int *,char*,int ) ;
 int lua_pushvalue (int *,int) ;
 char* lua_tolstring (int *,int,size_t*) ;
 int lua_type (int *,int) ;
 int lua_typename (int *,int) ;
 int lua_upvalueindex (int) ;

__attribute__((used)) static int
ltype(lua_State *L) {
 int t = lua_type(L,1);
 int type = 0;
 switch (t) {
 case 130:
  type = 1;
  break;
 case 132:
  type = 2;
  break;
 case 128:
  type = 3;
  break;
 case 131:
  lua_pushvalue(L, lua_upvalueindex(4));
  return 1;
 case 129: {
  size_t len = 0;
  const char * str = lua_tolstring(L,1,&len);
  if (str[0] == 0 && len >= 2) {
   return lsubtype(L, (uint8_t)str[1], (const uint8_t *)str+2, len-2);
  } else {
   type = 5;
   break;
  }
 }
 default:
  return luaL_error(L, "Invalid type %s",lua_typename(L,t));
 }
 lua_pushvalue(L, lua_upvalueindex(type));
 lua_pushvalue(L,1);
 return 2;
}
