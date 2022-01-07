
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_int_t ;
struct TYPE_8__ {int len; int valid; int * data; scalar_t__ no_cacheable; scalar_t__ not_found; } ;
typedef TYPE_1__ ngx_http_variable_value_t ;
struct TYPE_9__ {int pool; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_10__ {scalar_t__ bypass; } ;
typedef TYPE_3__ ngx_http_reqstat_store_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_3__* ngx_http_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_http_reqstat_module ;
 int * ngx_pnalloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_reqstat_variable_enable(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    u_char *p;
    ngx_http_reqstat_store_t *store;

    p = ngx_pnalloc(r->pool, 1 + sizeof(uintptr_t));
    if (p == ((void*)0)) {
        return NGX_ERROR;
    }

    v->len = 1;
    v->valid = 1;
    v->not_found = 0;
    v->no_cacheable = 0;
    v->data = p;

    store = ngx_http_get_module_ctx(r, ngx_http_reqstat_module);
    if (store == ((void*)0) || store->bypass) {
        *p = '0';

    } else {
        *p++ = '1';
        *((uintptr_t *) p) = (uintptr_t) store;
    }

    return NGX_OK;
}
