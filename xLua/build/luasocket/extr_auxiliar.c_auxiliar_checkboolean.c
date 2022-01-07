
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_TBOOLEAN ;
 int auxiliar_typeerror (int *,int,int ) ;
 int lua_isboolean (int *,int) ;
 int lua_toboolean (int *,int) ;
 int lua_typename (int *,int ) ;

int auxiliar_checkboolean(lua_State *L, int objidx) {
    if (!lua_isboolean(L, objidx))
        auxiliar_typeerror(L, objidx, lua_typename(L, LUA_TBOOLEAN));
    return lua_toboolean(L, objidx);
}
