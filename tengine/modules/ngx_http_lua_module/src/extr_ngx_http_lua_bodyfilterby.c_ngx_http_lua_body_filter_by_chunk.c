
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_pool_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_6__ {TYPE_1__* connection; int pool; } ;
typedef TYPE_2__ ngx_http_request_t ;
typedef int ngx_chain_t ;
typedef int lua_State ;
struct TYPE_5__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int dd (char*,...) ;
 int lua_insert (int *,int) ;
 scalar_t__ lua_pcall (int *,int ,int,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_remove (int *,int) ;
 int lua_settop (int *,int ) ;
 scalar_t__ lua_tointeger (int *,int) ;
 scalar_t__ lua_tolstring (int *,int,size_t*) ;
 int ngx_http_lua_body_filter_by_lua_env (int *,TYPE_2__*,int *) ;
 int ngx_http_lua_pcre_malloc_done (int *) ;
 int * ngx_http_lua_pcre_malloc_init (int ) ;
 int ngx_http_lua_traceback ;
 int ngx_log_error (int ,int ,int ,char*,size_t,int *) ;

ngx_int_t
ngx_http_lua_body_filter_by_chunk(lua_State *L, ngx_http_request_t *r,
    ngx_chain_t *in)
{
    ngx_int_t rc;
    u_char *err_msg;
    size_t len;




    dd("initialize nginx context in Lua VM, code chunk at stack top  sp = 1");
    ngx_http_lua_body_filter_by_lua_env(L, r, in);






    lua_pushcfunction(L, ngx_http_lua_traceback);
    lua_insert(L, 1);

    dd("protected call user code");
    rc = lua_pcall(L, 0, 1, 1);

    lua_remove(L, 1);






    if (rc != 0) {


        err_msg = (u_char *) lua_tolstring(L, -1, &len);

        if (err_msg == ((void*)0)) {
            err_msg = (u_char *) "unknown reason";
            len = sizeof("unknown reason") - 1;
        }

        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "failed to run body_filter_by_lua*: %*s", len, err_msg);

        lua_settop(L, 0);

        return NGX_ERROR;
    }



    rc = (ngx_int_t) lua_tointeger(L, -1);

    dd("got return value: %d", (int) rc);

    lua_settop(L, 0);

    if (rc == NGX_ERROR || rc >= NGX_HTTP_SPECIAL_RESPONSE) {
        return NGX_ERROR;
    }

    return NGX_OK;
}
