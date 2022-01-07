
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_12__ {TYPE_1__* connection; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_10__ {int len; int data; } ;
struct TYPE_11__ {int src_key; TYPE_2__ src; } ;
struct TYPE_13__ {TYPE_3__ balancer; } ;
typedef TYPE_5__ ngx_http_lua_srv_conf_t ;
typedef int lua_State ;
struct TYPE_9__ {int log; } ;


 scalar_t__ NGX_OK ;
 int lua_isfunction (int *,int) ;
 int ngx_http_lua_assert (int ) ;
 scalar_t__ ngx_http_lua_balancer_by_chunk (int *,TYPE_4__*) ;
 scalar_t__ ngx_http_lua_cache_loadbuffer (int ,int *,int ,int ,int ,char*) ;

ngx_int_t
ngx_http_lua_balancer_handler_inline(ngx_http_request_t *r,
    ngx_http_lua_srv_conf_t *lscf, lua_State *L)
{
    ngx_int_t rc;

    rc = ngx_http_lua_cache_loadbuffer(r->connection->log, L,
                                       lscf->balancer.src.data,
                                       lscf->balancer.src.len,
                                       lscf->balancer.src_key,
                                       "=balancer_by_lua");
    if (rc != NGX_OK) {
        return rc;
    }


    ngx_http_lua_assert(lua_isfunction(L, -1));

    return ngx_http_lua_balancer_by_chunk(L, r);
}
