
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Integer ;


 int lua_absindex (int *,int) ;
 int lua_insert (int *,int) ;
 int lua_pushinteger (int *,int ) ;
 int lua_settable (int *,int) ;

__attribute__((used)) static void
lua_seti(lua_State *L, int index, lua_Integer n) {
 index = lua_absindex(L, index);
 lua_pushinteger(L, n);
 lua_insert(L, -2);
 lua_settable(L, index);
}
