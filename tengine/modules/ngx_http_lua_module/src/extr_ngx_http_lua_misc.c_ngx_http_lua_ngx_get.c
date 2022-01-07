
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_8__ {int status; } ;
struct TYPE_9__ {int err_status; scalar_t__ http_version; scalar_t__ header_sent; struct TYPE_9__* main; TYPE_1__ headers_out; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_10__ {scalar_t__ header_sent; } ;
typedef TYPE_3__ ngx_http_lua_ctx_t ;
typedef int lua_State ;


 scalar_t__ NGX_HTTP_VERSION_9 ;
 int dd (char*,int) ;
 scalar_t__ luaL_checklstring (int *,int,size_t*) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushnil (int *) ;
 TYPE_3__* ngx_http_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_http_lua_check_fake_request (int *,TYPE_2__*) ;
 TYPE_2__* ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_ngx_get_ctx (int *) ;
 scalar_t__ ngx_strncmp (int *,char*,int) ;

__attribute__((used)) static int
ngx_http_lua_ngx_get(lua_State *L)
{
    int status;
    ngx_http_request_t *r;
    u_char *p;
    size_t len;
    ngx_http_lua_ctx_t *ctx;

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        lua_pushnil(L);
        return 1;
    }

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    if (ctx == ((void*)0)) {
        lua_pushnil(L);
        return 1;
    }

    p = (u_char *) luaL_checklstring(L, -1, &len);

    dd("ngx get %s", p);

    if (len == sizeof("status") - 1
        && ngx_strncmp(p, "status", sizeof("status") - 1) == 0)
    {
        ngx_http_lua_check_fake_request(L, r);

        if (r->err_status) {
            status = r->err_status;

        } else if (r->headers_out.status) {
            status = r->headers_out.status;

        } else if (r->http_version == NGX_HTTP_VERSION_9) {
            status = 9;

        } else {
            status = 0;
        }

        lua_pushinteger(L, status);
        return 1;
    }

    if (len == sizeof("ctx") - 1
        && ngx_strncmp(p, "ctx", sizeof("ctx") - 1) == 0)
    {
        return ngx_http_lua_ngx_get_ctx(L);
    }

    if (len == sizeof("is_subrequest") - 1
        && ngx_strncmp(p, "is_subrequest", sizeof("is_subrequest") - 1) == 0)
    {
        lua_pushboolean(L, r != r->main);
        return 1;
    }

    if (len == sizeof("headers_sent") - 1
        && ngx_strncmp(p, "headers_sent", sizeof("headers_sent") - 1) == 0)
    {
        ngx_http_lua_check_fake_request(L, r);

        dd("headers sent: %d", r->header_sent || ctx->header_sent);

        lua_pushboolean(L, r->header_sent || ctx->header_sent);
        return 1;
    }

    dd("key %s not matched", p);

    lua_pushnil(L);
    return 1;
}
