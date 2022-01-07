
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* data; int handler; } ;
typedef TYPE_1__ ngx_pool_cleanup_t ;
typedef int ngx_int_t ;
struct TYPE_9__ {int pool; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_10__ {int ref; int * vm; } ;
typedef TYPE_3__ ngx_http_lua_ngx_ctx_cleanup_data_t ;
typedef int ngx_http_lua_ctx_t ;
typedef int lua_State ;


 int NGX_ERROR ;
 int NGX_OK ;
 int * ngx_http_get_module_ctx (TYPE_2__*,int ) ;
 int * ngx_http_lua_get_lua_vm (TYPE_2__*,int *) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_ngx_ctx_cleanup ;
 TYPE_1__* ngx_pool_cleanup_add (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_ngx_ctx_add_cleanup(ngx_http_request_t *r, int ref)
{
    lua_State *L;
    ngx_pool_cleanup_t *cln;
    ngx_http_lua_ctx_t *ctx;

    ngx_http_lua_ngx_ctx_cleanup_data_t *data;

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    L = ngx_http_lua_get_lua_vm(r, ctx);

    cln = ngx_pool_cleanup_add(r->pool,
                               sizeof(ngx_http_lua_ngx_ctx_cleanup_data_t));
    if (cln == ((void*)0)) {
        return NGX_ERROR;
    }

    cln->handler = ngx_http_lua_ngx_ctx_cleanup;

    data = cln->data;
    data->vm = L;
    data->ref = ref;

    return NGX_OK;
}
