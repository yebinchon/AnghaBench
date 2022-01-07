
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushinteger (int *,size_t) ;
 size_t lua_rawlen (int *,int) ;

__attribute__((used)) static bool
is_rawarray(lua_State *L) {
 size_t len = lua_rawlen(L, -1);
 if (len > 0) {
  lua_pushinteger(L, len);
  if (lua_next(L,-2) == 0) {
   return 1;
  } else {
   lua_pop(L,2);
  }
 }
 return 0;
}
