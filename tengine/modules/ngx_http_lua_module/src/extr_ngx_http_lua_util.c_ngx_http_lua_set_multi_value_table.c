
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_createtable (int *,int,int ) ;
 int lua_gettop (int *) ;
 int lua_insert (int *,int) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_istable (int *,int) ;
 int lua_objlen (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawget (int *,int) ;
 int lua_rawset (int *,int) ;
 int lua_rawseti (int *,int,int) ;

void
ngx_http_lua_set_multi_value_table(lua_State *L, int index)
{
    if (index < 0) {
        index = lua_gettop(L) + index + 1;
    }

    lua_pushvalue(L, -2);
    lua_rawget(L, index);
    if (lua_isnil(L, -1)) {
        lua_pop(L, 1);
        lua_rawset(L, index);

    } else {
        if (!lua_istable(L, -1)) {

            lua_createtable(L, 4, 0);

            lua_insert(L, -2);

            lua_rawseti(L, -2, 1);

            lua_insert(L, -2);


            lua_rawseti(L, -2, 2);

            lua_rawset(L, index);

        } else {

            lua_insert(L, -2);

            lua_rawseti(L, -2, lua_objlen(L, -2) + 1);

            lua_pop(L, 2);
        }
    }
}
