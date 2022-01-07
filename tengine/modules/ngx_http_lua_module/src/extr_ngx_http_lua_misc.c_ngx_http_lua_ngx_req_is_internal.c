
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int internal; } ;
typedef TYPE_1__ ngx_http_request_t ;
typedef int lua_State ;


 int luaL_error (int *,char*) ;
 int lua_pushboolean (int *,int) ;
 TYPE_1__* ngx_http_lua_get_req (int *) ;

__attribute__((used)) static int
ngx_http_lua_ngx_req_is_internal(lua_State *L)
{
    ngx_http_request_t *r;

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "no request object found");
    }

    lua_pushboolean(L, r->internal == 1);
    return 1;
}
