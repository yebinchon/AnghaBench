
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushboolean (int *,int) ;
 char* lua_tostring (int *,int) ;

__attribute__((used)) static int
lisname(lua_State *L) {
 const char * name = lua_tostring(L, 1);
 if (name && name[0] == '@') {
  lua_pushboolean(L, 1);
  return 1;
 }
 return 0;
}
