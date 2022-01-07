
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ngx_int_t ;
typedef int ngx_http_request_t ;
typedef int lua_State ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ;
 int luaL_error (int *,char*,...) ;
 int lua_gettop (int *) ;
 scalar_t__ ngx_http_discard_request_body (int *) ;
 int ngx_http_lua_check_fake_request (int *,int *) ;
 int * ngx_http_lua_get_req (int *) ;

__attribute__((used)) static int
ngx_http_lua_ngx_req_discard_body(lua_State *L)
{
    ngx_http_request_t *r;
    ngx_int_t rc;
    int n;

    n = lua_gettop(L);

    if (n != 0) {
        return luaL_error(L, "expecting 0 arguments but seen %d", n);
    }

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "request object not found");
    }

    ngx_http_lua_check_fake_request(L, r);

    rc = ngx_http_discard_request_body(r);

    if (rc == NGX_ERROR || rc >= NGX_HTTP_SPECIAL_RESPONSE) {
        return luaL_error(L, "failed to discard request body");
    }

    return 0;
}
