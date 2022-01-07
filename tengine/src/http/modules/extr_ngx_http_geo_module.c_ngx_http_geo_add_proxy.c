
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * proxies; int pool; } ;
typedef TYPE_1__ ngx_http_geo_conf_ctx_t ;
typedef int ngx_conf_t ;
typedef int ngx_cidr_t ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int * ngx_array_create (int ,int,int) ;
 int * ngx_array_push (int *) ;

__attribute__((used)) static char *
ngx_http_geo_add_proxy(ngx_conf_t *cf, ngx_http_geo_conf_ctx_t *ctx,
    ngx_cidr_t *cidr)
{
    ngx_cidr_t *c;

    if (ctx->proxies == ((void*)0)) {
        ctx->proxies = ngx_array_create(ctx->pool, 4, sizeof(ngx_cidr_t));
        if (ctx->proxies == ((void*)0)) {
            return NGX_CONF_ERROR;
        }
    }

    c = ngx_array_push(ctx->proxies);
    if (c == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    *c = *cidr;

    return NGX_CONF_OK;
}
