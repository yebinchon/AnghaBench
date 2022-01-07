
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushliteral (int *,char*) ;
 int lua_pushlstring (int *,char const*,int) ;

__attribute__((used)) static void
pushstring(lua_State *L, const char * msg, int size) {
 if (msg) {
  lua_pushlstring(L, msg, size);
 } else {
  lua_pushliteral(L, "");
 }
}
