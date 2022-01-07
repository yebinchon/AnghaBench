
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_pool_t ;
typedef int ngx_int_t ;
struct TYPE_10__ {TYPE_1__* connection; int pool; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_11__ {int exit_code; scalar_t__ exited; } ;
typedef TYPE_3__ ngx_http_lua_ctx_t ;
typedef int lua_State ;
struct TYPE_9__ {int log; } ;


 int NGX_AGAIN ;
 int NGX_DECLINED ;
 int NGX_ERROR ;
 int NGX_LOG_ERR ;
 int NGX_OK ;
 int dd (char*,int,...) ;
 int lua_insert (int *,int) ;
 int lua_pcall (int *,int ,int,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_remove (int *,int) ;
 int lua_settop (int *,int ) ;
 scalar_t__ lua_tolstring (int *,int,size_t*) ;
 int ngx_http_filter_finalize_request (TYPE_2__*,int *,int) ;
 TYPE_3__* ngx_http_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_http_lua_header_filter_by_lua_env (int *,TYPE_2__*) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_pcre_malloc_done (int *) ;
 int * ngx_http_lua_pcre_malloc_init (int ) ;
 int ngx_http_lua_traceback ;
 int ngx_log_error (int ,int ,int ,char*,size_t,int *) ;

ngx_int_t
ngx_http_lua_header_filter_by_chunk(lua_State *L, ngx_http_request_t *r)
{
    int old_exit_code = 0;
    ngx_int_t rc;
    u_char *err_msg;
    size_t len;



    ngx_http_lua_ctx_t *ctx;

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    if (ctx->exited) {
        old_exit_code = ctx->exit_code;
    }


    ngx_http_lua_header_filter_by_lua_env(L, r);






    lua_pushcfunction(L, ngx_http_lua_traceback);
    lua_insert(L, 1);


    rc = lua_pcall(L, 0, 1, 1);

    lua_remove(L, 1);






    dd("rc == %d", (int) rc);

    if (rc != 0) {

        err_msg = (u_char *) lua_tolstring(L, -1, &len);

        if (err_msg == ((void*)0)) {
            err_msg = (u_char *) "unknown reason";
            len = sizeof("unknown reason") - 1;
        }

        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "failed to run header_filter_by_lua*: %*s", len, err_msg);

        lua_settop(L, 0);

        return NGX_ERROR;
    }

    dd("exited: %d, exit code: %d, old exit code: %d",
       (int) ctx->exited, (int) ctx->exit_code, (int) old_exit_code);



    lua_settop(L, 0);


    if (ctx->exited && ctx->exit_code != old_exit_code) {
        if (ctx->exit_code == NGX_ERROR) {
            return NGX_ERROR;
        }

        dd("finalize request with %d", (int) ctx->exit_code);

        rc = ngx_http_filter_finalize_request(r, &ngx_http_lua_module,
                                              ctx->exit_code);
        if (rc == NGX_ERROR || rc == NGX_AGAIN) {
            return rc;
        }

        return NGX_DECLINED;
    }

    return NGX_OK;
}
