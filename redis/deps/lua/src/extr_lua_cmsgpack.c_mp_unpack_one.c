
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_optinteger (int *,int,int ) ;
 scalar_t__ lua_gettop (int *) ;
 int lua_pop (int *,scalar_t__) ;
 int mp_unpack_full (int *,int,int) ;

int mp_unpack_one(lua_State *L) {
    int offset = luaL_optinteger(L, 2, 0);

    lua_pop(L, lua_gettop(L)-1);
    return mp_unpack_full(L, 1, offset);
}
