
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; scalar_t__ data; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int lua_State ;


 int LUA_TTABLE ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_error (int *,char*,int) ;
 int lua_gettop (int *) ;
 int lua_pushlstring (int *,char*,int ) ;
 int ngx_http_lua_process_args_option (int *,int *,int,TYPE_1__*) ;

__attribute__((used)) static int
ngx_http_lua_ngx_encode_args(lua_State *L)
{
    ngx_str_t args;

    if (lua_gettop(L) != 1) {
        return luaL_error(L, "expecting 1 argument but seen %d",
                          lua_gettop(L));
    }

    luaL_checktype(L, 1, LUA_TTABLE);
    ngx_http_lua_process_args_option(((void*)0), L, 1, &args);
    lua_pushlstring(L, (char *) args.data, args.len);
    return 1;
}
