
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; scalar_t__ data; } ;
struct TYPE_6__ {TYPE_1__ method_name; } ;
typedef TYPE_2__ ngx_http_request_t ;
typedef int lua_State ;


 int luaL_error (int *,char*,...) ;
 int lua_gettop (int *) ;
 int lua_pushlstring (int *,char*,int ) ;
 int ngx_http_lua_check_fake_request (int *,TYPE_2__*) ;
 TYPE_2__* ngx_http_lua_get_req (int *) ;

__attribute__((used)) static int
ngx_http_lua_ngx_req_get_method(lua_State *L)
{
    int n;
    ngx_http_request_t *r;

    n = lua_gettop(L);
    if (n != 0) {
        return luaL_error(L, "only one argument expected but got %d", n);
    }

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "request object not found");
    }

    ngx_http_lua_check_fake_request(L, r);

    lua_pushlstring(L, (char *) r->method_name.data, r->method_name.len);
    return 1;
}
