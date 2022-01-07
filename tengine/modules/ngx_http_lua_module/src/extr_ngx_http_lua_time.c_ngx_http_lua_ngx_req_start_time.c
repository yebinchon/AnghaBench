
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long double start_msec; scalar_t__ start_sec; } ;
typedef TYPE_1__ ngx_http_request_t ;
typedef int lua_State ;
typedef int lua_Number ;


 int luaL_error (int *,char*) ;
 int lua_pushnumber (int *,int ) ;
 TYPE_1__* ngx_http_lua_get_req (int *) ;

__attribute__((used)) static int
ngx_http_lua_ngx_req_start_time(lua_State *L)
{
    ngx_http_request_t *r;

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "no request found");
    }

    lua_pushnumber(L, (lua_Number) (r->start_sec + r->start_msec / 1000.0L));
    return 1;
}
