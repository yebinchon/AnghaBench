
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {int len; int * data; } ;
typedef TYPE_1__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
typedef int lua_State ;
typedef int lua_Integer ;


 scalar_t__ luaL_checklstring (int *,int,int *) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushlstring (int *,char*,int ) ;
 scalar_t__ ngx_dyups_delete_upstream (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int
ngx_http_lua_delete_upstream(lua_State *L)
{
    ngx_int_t status;
    ngx_str_t name, rv;

    if (lua_gettop(L) != 1) {
        return luaL_error(L, "exactly 1 argument expected");
    }

    name.data = (u_char *) luaL_checklstring(L, 1, &name.len);

    status = ngx_dyups_delete_upstream(&name, &rv);

    lua_pushinteger(L, (lua_Integer) status);
    lua_pushlstring(L, (char *) rv.data, rv.len);

    return 2;
}
