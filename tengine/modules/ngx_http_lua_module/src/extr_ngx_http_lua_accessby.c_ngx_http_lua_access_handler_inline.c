
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_14__ {TYPE_1__* connection; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_12__ {int len; int data; } ;
struct TYPE_13__ {TYPE_2__ value; } ;
struct TYPE_15__ {scalar_t__ access_chunkname; int access_src_key; TYPE_3__ access_src; } ;
typedef TYPE_5__ ngx_http_lua_loc_conf_t ;
typedef int lua_State ;
struct TYPE_11__ {int log; } ;


 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 scalar_t__ NGX_OK ;
 TYPE_5__* ngx_http_get_module_loc_conf (TYPE_4__*,int ) ;
 scalar_t__ ngx_http_lua_access_by_chunk (int *,TYPE_4__*) ;
 scalar_t__ ngx_http_lua_cache_loadbuffer (int ,int *,int ,int ,int ,char const*) ;
 int * ngx_http_lua_get_lua_vm (TYPE_4__*,int *) ;
 int ngx_http_lua_module ;

ngx_int_t
ngx_http_lua_access_handler_inline(ngx_http_request_t *r)
{
    ngx_int_t rc;
    lua_State *L;
    ngx_http_lua_loc_conf_t *llcf;

    llcf = ngx_http_get_module_loc_conf(r, ngx_http_lua_module);

    L = ngx_http_lua_get_lua_vm(r, ((void*)0));


    rc = ngx_http_lua_cache_loadbuffer(r->connection->log, L,
                                       llcf->access_src.value.data,
                                       llcf->access_src.value.len,
                                       llcf->access_src_key,
                                       (const char *) llcf->access_chunkname);

    if (rc != NGX_OK) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    return ngx_http_lua_access_by_chunk(L, r);
}
