
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ err; } ;
typedef TYPE_1__ mp_cur ;
typedef int lua_State ;


 size_t UINT_MAX ;
 int assert (int) ;
 int luaL_checkstack (int *,int,char*) ;
 int lua_newtable (int *) ;
 int lua_pushnumber (int *,int ) ;
 int lua_settable (int *,int) ;
 int mp_decode_to_lua_type (int *,TYPE_1__*) ;

void mp_decode_to_lua_array(lua_State *L, mp_cur *c, size_t len) {
    assert(len <= UINT_MAX);
    int index = 1;

    lua_newtable(L);
    luaL_checkstack(L, 1, "in function mp_decode_to_lua_array");
    while(len--) {
        lua_pushnumber(L,index++);
        mp_decode_to_lua_type(L,c);
        if (c->err) return;
        lua_settable(L,-3);
    }
}
