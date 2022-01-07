
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_13__ {int len; int data; } ;
typedef TYPE_2__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_14__ {TYPE_1__* connection; int pool; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_15__ {int access_src_key; int access_src; } ;
typedef TYPE_4__ ngx_http_lua_loc_conf_t ;
typedef int lua_State ;
struct TYPE_12__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ;
 scalar_t__ NGX_OK ;
 int lua_isfunction (int *,int) ;
 scalar_t__ ngx_http_complex_value (TYPE_3__*,int *,TYPE_2__*) ;
 TYPE_4__* ngx_http_get_module_loc_conf (TYPE_3__*,int ) ;
 scalar_t__ ngx_http_lua_access_by_chunk (int *,TYPE_3__*) ;
 int ngx_http_lua_assert (int ) ;
 scalar_t__ ngx_http_lua_cache_loadfile (int ,int *,int *,int ) ;
 int * ngx_http_lua_get_lua_vm (TYPE_3__*,int *) ;
 int ngx_http_lua_module ;
 int * ngx_http_lua_rebase_path (int ,int ,int ) ;

ngx_int_t
ngx_http_lua_access_handler_file(ngx_http_request_t *r)
{
    u_char *script_path;
    ngx_int_t rc;
    ngx_str_t eval_src;
    lua_State *L;
    ngx_http_lua_loc_conf_t *llcf;

    llcf = ngx_http_get_module_loc_conf(r, ngx_http_lua_module);


    if (ngx_http_complex_value(r, &llcf->access_src, &eval_src) != NGX_OK) {
        return NGX_ERROR;
    }

    script_path = ngx_http_lua_rebase_path(r->pool, eval_src.data,
                                           eval_src.len);

    if (script_path == ((void*)0)) {
        return NGX_ERROR;
    }

    L = ngx_http_lua_get_lua_vm(r, ((void*)0));


    rc = ngx_http_lua_cache_loadfile(r->connection->log, L, script_path,
                                     llcf->access_src_key);
    if (rc != NGX_OK) {
        if (rc < NGX_HTTP_SPECIAL_RESPONSE) {
            return NGX_HTTP_INTERNAL_SERVER_ERROR;
        }

        return rc;
    }


    ngx_http_lua_assert(lua_isfunction(L, -1));

    return ngx_http_lua_access_by_chunk(L, r);
}
