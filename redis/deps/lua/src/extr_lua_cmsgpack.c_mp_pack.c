
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ len; int free; scalar_t__ b; } ;
typedef TYPE_1__ mp_buf ;
typedef int lua_State ;


 int luaL_argerror (int *,int ,char*) ;
 int luaL_checkstack (int *,int,char*) ;
 int lua_checkstack (int *,int) ;
 int lua_concat (int *,int) ;
 int lua_gettop (int *) ;
 int lua_pushlstring (int *,char*,scalar_t__) ;
 int lua_pushvalue (int *,int) ;
 int mp_buf_free (int *,TYPE_1__*) ;
 TYPE_1__* mp_buf_new (int *) ;
 int mp_encode_lua_type (int *,TYPE_1__*,int ) ;

int mp_pack(lua_State *L) {
    int nargs = lua_gettop(L);
    int i;
    mp_buf *buf;

    if (nargs == 0)
        return luaL_argerror(L, 0, "MessagePack pack needs input.");

    if (!lua_checkstack(L, nargs))
        return luaL_argerror(L, 0, "Too many arguments for MessagePack pack.");

    buf = mp_buf_new(L);
    for(i = 1; i <= nargs; i++) {


        luaL_checkstack(L, 1, "in function mp_check");
        lua_pushvalue(L, i);

        mp_encode_lua_type(L,buf,0);

        lua_pushlstring(L,(char*)buf->b,buf->len);




        buf->free += buf->len;
        buf->len = 0;
    }
    mp_buf_free(L, buf);


    lua_concat(L, nargs);
    return 1;
}
