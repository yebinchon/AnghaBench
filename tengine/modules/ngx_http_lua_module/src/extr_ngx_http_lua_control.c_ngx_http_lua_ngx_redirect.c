
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef char u_char ;
struct TYPE_18__ {size_t len; char* data; } ;
struct TYPE_15__ {TYPE_6__ value; int key; scalar_t__ hash; } ;
typedef TYPE_3__ ngx_table_elt_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_14__ {TYPE_3__* location; scalar_t__ status; int headers; } ;
struct TYPE_16__ {TYPE_2__ headers_out; TYPE_1__* connection; int pool; scalar_t__ header_sent; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_17__ {int exited; scalar_t__ exit_code; scalar_t__ header_sent; } ;
typedef TYPE_5__ ngx_http_lua_ctx_t ;
typedef int lua_State ;
struct TYPE_13__ {int log; } ;


 int NGX_HTTP_LUA_CONTEXT_ACCESS ;
 int NGX_HTTP_LUA_CONTEXT_CONTENT ;
 int NGX_HTTP_LUA_CONTEXT_REWRITE ;
 scalar_t__ NGX_HTTP_MOVED_PERMANENTLY ;
 scalar_t__ NGX_HTTP_MOVED_TEMPORARILY ;
 scalar_t__ NGX_HTTP_PERMANENT_REDIRECT ;
 scalar_t__ NGX_HTTP_SEE_OTHER ;
 scalar_t__ NGX_HTTP_TEMPORARY_REDIRECT ;
 int NGX_LOG_DEBUG_HTTP ;
 int dd (char*,unsigned long,unsigned long) ;
 scalar_t__ luaL_checklstring (int *,int,size_t*) ;
 scalar_t__ luaL_checknumber (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 int lua_yield (int *,int ) ;
 scalar_t__ ngx_hash_key_lc (char*,int) ;
 TYPE_5__* ngx_http_get_module_ctx (TYPE_4__*,int ) ;
 int ngx_http_lua_check_context (int *,TYPE_5__*,int) ;
 int ngx_http_lua_check_if_abortable (int *,TYPE_5__*) ;
 TYPE_4__* ngx_http_lua_get_req (int *) ;
 scalar_t__ ngx_http_lua_location_hash ;
 int ngx_http_lua_module ;
 TYPE_3__* ngx_list_push (int *) ;
 int ngx_log_debug2 (int ,int ,int ,char*,TYPE_6__*,scalar_t__) ;
 int ngx_memcpy (char*,char*,size_t) ;
 char* ngx_palloc (int ,size_t) ;
 int ngx_str_set (int *,char*) ;

__attribute__((used)) static int
ngx_http_lua_ngx_redirect(lua_State *L)
{
    ngx_http_lua_ctx_t *ctx;
    ngx_int_t rc;
    int n;
    u_char *p;
    u_char *uri;
    size_t len;
    ngx_table_elt_t *h;
    ngx_http_request_t *r;

    n = lua_gettop(L);

    if (n != 1 && n != 2) {
        return luaL_error(L, "expecting one or two arguments");
    }

    p = (u_char *) luaL_checklstring(L, 1, &len);

    if (n == 2) {
        rc = (ngx_int_t) luaL_checknumber(L, 2);

        if (rc != NGX_HTTP_MOVED_TEMPORARILY
            && rc != NGX_HTTP_MOVED_PERMANENTLY
            && rc != NGX_HTTP_SEE_OTHER
            && rc != NGX_HTTP_PERMANENT_REDIRECT
            && rc != NGX_HTTP_TEMPORARY_REDIRECT)
        {
            return luaL_error(L, "only ngx.HTTP_MOVED_TEMPORARILY, "
                              "ngx.HTTP_MOVED_PERMANENTLY, "
                              "ngx.HTTP_PERMANENT_REDIRECT, "
                              "ngx.HTTP_SEE_OTHER, and "
                              "ngx.HTTP_TEMPORARY_REDIRECT are allowed");
        }

    } else {
        rc = NGX_HTTP_MOVED_TEMPORARILY;
    }

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "no request object found");
    }

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    if (ctx == ((void*)0)) {
        return luaL_error(L, "no request ctx found");
    }

    ngx_http_lua_check_context(L, ctx, NGX_HTTP_LUA_CONTEXT_REWRITE
                               | NGX_HTTP_LUA_CONTEXT_ACCESS
                               | NGX_HTTP_LUA_CONTEXT_CONTENT);

    ngx_http_lua_check_if_abortable(L, ctx);

    if (r->header_sent || ctx->header_sent) {
        return luaL_error(L, "attempt to call ngx.redirect after sending out "
                          "the headers");
    }

    uri = ngx_palloc(r->pool, len);
    if (uri == ((void*)0)) {
        return luaL_error(L, "no memory");
    }

    ngx_memcpy(uri, p, len);

    h = ngx_list_push(&r->headers_out.headers);
    if (h == ((void*)0)) {
        return luaL_error(L, "no memory");
    }

    h->hash = ngx_http_lua_location_hash;
    h->value.len = len;
    h->value.data = uri;
    ngx_str_set(&h->key, "Location");

    r->headers_out.status = rc;

    ctx->exit_code = rc;
    ctx->exited = 1;

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua redirect to \"%V\" with code %i",
                   &h->value, ctx->exit_code);

    if (len && uri[0] != '/') {
        r->headers_out.location = h;
    }






    return lua_yield(L, 0);
}
