
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
 int lua_newtable (int *) ;
 int lua_settable (int *,int) ;
 int mp_decode_to_lua_type (int *,TYPE_1__*) ;

void mp_decode_to_lua_hash(lua_State *L, mp_cur *c, size_t len) {
    assert(len <= UINT_MAX);
    lua_newtable(L);
    while(len--) {
        mp_decode_to_lua_type(L,c);
        if (c->err) return;
        mp_decode_to_lua_type(L,c);
        if (c->err) return;
        lua_settable(L,-3);
    }
}
