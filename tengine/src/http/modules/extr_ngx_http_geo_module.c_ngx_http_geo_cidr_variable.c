
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u_char ;
struct in6_addr {int* s6_addr; } ;
struct sockaddr_in6 {struct in6_addr sin6_addr; } ;
struct TYPE_14__ {int s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
typedef scalar_t__ ngx_int_t ;
typedef int ngx_http_variable_value_t ;
struct TYPE_18__ {TYPE_5__* connection; } ;
typedef TYPE_6__ ngx_http_request_t ;
struct TYPE_15__ {int tree; int tree6; } ;
struct TYPE_16__ {TYPE_3__ trees; } ;
struct TYPE_19__ {TYPE_4__ u; } ;
typedef TYPE_7__ ngx_http_geo_ctx_t ;
struct TYPE_20__ {TYPE_1__* sockaddr; } ;
typedef TYPE_8__ ngx_addr_t ;
typedef int in_addr_t ;
struct TYPE_17__ {int log; } ;
struct TYPE_13__ {int sa_family; } ;




 int IN6_IS_ADDR_V4MAPPED (struct in6_addr*) ;
 int INADDR_NONE ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_geo_addr (TYPE_6__*,TYPE_7__*,TYPE_8__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int *) ;
 scalar_t__ ngx_radix128tree_find (int ,int*) ;
 scalar_t__ ngx_radix32tree_find (int ,int) ;
 int ntohl (int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_geo_cidr_variable(ngx_http_request_t *r, ngx_http_variable_value_t *v,
    uintptr_t data)
{
    ngx_http_geo_ctx_t *ctx = (ngx_http_geo_ctx_t *) data;

    in_addr_t inaddr;
    ngx_addr_t addr;
    struct sockaddr_in *sin;
    ngx_http_variable_value_t *vv;





    if (ngx_http_geo_addr(r, ctx, &addr) != NGX_OK) {
        vv = (ngx_http_variable_value_t *)
                  ngx_radix32tree_find(ctx->u.trees.tree, INADDR_NONE);
        goto done;
    }

    switch (addr.sockaddr->sa_family) {
    default:
        sin = (struct sockaddr_in *) addr.sockaddr;
        inaddr = ntohl(sin->sin_addr.s_addr);

        vv = (ngx_http_variable_value_t *)
                  ngx_radix32tree_find(ctx->u.trees.tree, inaddr);

        break;
    }

done:

    *v = *vv;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http geo: %v", v);

    return NGX_OK;
}
