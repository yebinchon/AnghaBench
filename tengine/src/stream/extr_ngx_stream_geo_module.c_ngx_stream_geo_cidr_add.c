
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ngx_stream_variable_value_t ;
struct TYPE_16__ {int tree; int tree6; } ;
typedef TYPE_6__ ngx_stream_geo_conf_ctx_t ;
typedef int ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
typedef int ngx_conf_t ;
struct TYPE_14__ {int mask; int addr; } ;
struct TYPE_12__ {int s6_addr; } ;
struct TYPE_11__ {int s6_addr; } ;
struct TYPE_13__ {TYPE_2__ mask; TYPE_1__ addr; } ;
struct TYPE_15__ {TYPE_4__ in; TYPE_3__ in6; } ;
struct TYPE_17__ {int family; TYPE_5__ u; } ;
typedef TYPE_7__ ngx_cidr_t ;



 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_EMERG ;
 int NGX_LOG_WARN ;
 scalar_t__ NGX_OK ;
 int ngx_conf_log_error (int ,int *,int ,char*,...) ;
 scalar_t__ ngx_radix128tree_delete (int ,int ,int ) ;
 scalar_t__ ngx_radix128tree_find (int ,int ) ;
 scalar_t__ ngx_radix128tree_insert (int ,int ,int ,uintptr_t) ;
 scalar_t__ ngx_radix32tree_delete (int ,int ,int ) ;
 scalar_t__ ngx_radix32tree_find (int ,int ) ;
 scalar_t__ ngx_radix32tree_insert (int ,int ,int ,uintptr_t) ;
 int * ngx_stream_geo_value (int *,TYPE_6__*,int *) ;

__attribute__((used)) static char *
ngx_stream_geo_cidr_add(ngx_conf_t *cf, ngx_stream_geo_conf_ctx_t *ctx,
    ngx_cidr_t *cidr, ngx_str_t *value, ngx_str_t *net)
{
    ngx_int_t rc;
    ngx_stream_variable_value_t *val, *old;

    val = ngx_stream_geo_value(cf, ctx, value);

    if (val == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    switch (cidr->family) {
    default:
        rc = ngx_radix32tree_insert(ctx->tree, cidr->u.in.addr,
                                    cidr->u.in.mask, (uintptr_t) val);

        if (rc == NGX_OK) {
            return NGX_CONF_OK;
        }

        if (rc == NGX_ERROR) {
            return NGX_CONF_ERROR;
        }



        old = (ngx_stream_variable_value_t *)
                   ngx_radix32tree_find(ctx->tree, cidr->u.in.addr);

        ngx_conf_log_error(NGX_LOG_WARN, cf, 0,
              "duplicate network \"%V\", value: \"%v\", old value: \"%v\"",
              net, val, old);

        rc = ngx_radix32tree_delete(ctx->tree,
                                    cidr->u.in.addr, cidr->u.in.mask);

        if (rc == NGX_ERROR) {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0, "invalid radix tree");
            return NGX_CONF_ERROR;
        }

        rc = ngx_radix32tree_insert(ctx->tree, cidr->u.in.addr,
                                    cidr->u.in.mask, (uintptr_t) val);

        break;
    }

    if (rc == NGX_OK) {
        return NGX_CONF_OK;
    }

    return NGX_CONF_ERROR;
}
