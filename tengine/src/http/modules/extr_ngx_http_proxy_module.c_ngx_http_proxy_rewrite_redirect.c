
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_10__ {size_t len; } ;
struct TYPE_12__ {TYPE_1__ value; } ;
typedef TYPE_3__ ngx_table_elt_t ;
typedef scalar_t__ ngx_int_t ;
typedef int ngx_http_request_t ;
struct TYPE_13__ {scalar_t__ (* handler ) (int *,TYPE_3__*,size_t,size_t,TYPE_4__*) ;} ;
typedef TYPE_4__ ngx_http_proxy_rewrite_t ;
struct TYPE_14__ {TYPE_2__* redirects; } ;
typedef TYPE_5__ ngx_http_proxy_loc_conf_t ;
struct TYPE_11__ {size_t nelts; TYPE_4__* elts; } ;


 scalar_t__ NGX_DECLINED ;
 TYPE_5__* ngx_http_get_module_loc_conf (int *,int ) ;
 int ngx_http_proxy_module ;
 scalar_t__ stub1 (int *,TYPE_3__*,size_t,size_t,TYPE_4__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_proxy_rewrite_redirect(ngx_http_request_t *r, ngx_table_elt_t *h,
    size_t prefix)
{
    size_t len;
    ngx_int_t rc;
    ngx_uint_t i;
    ngx_http_proxy_rewrite_t *pr;
    ngx_http_proxy_loc_conf_t *plcf;

    plcf = ngx_http_get_module_loc_conf(r, ngx_http_proxy_module);

    pr = plcf->redirects->elts;

    if (pr == ((void*)0)) {
        return NGX_DECLINED;
    }

    len = h->value.len - prefix;

    for (i = 0; i < plcf->redirects->nelts; i++) {
        rc = pr[i].handler(r, h, prefix, len, &pr[i]);

        if (rc != NGX_DECLINED) {
            return rc;
        }
    }

    return NGX_DECLINED;
}
