
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_21__ {int * data; } ;
typedef TYPE_2__ ngx_http_variable_value_t ;
struct TYPE_22__ {TYPE_1__* variables; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_23__ {scalar_t__ bypass; TYPE_5__* conf; } ;
typedef TYPE_4__ ngx_http_reqstat_store_t ;
struct TYPE_24__ {size_t index; } ;
typedef TYPE_5__ ngx_http_reqstat_conf_t ;
struct TYPE_20__ {scalar_t__ valid; } ;


 int NGX_DECLINED ;
 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_2__* ngx_http_get_flushed_variable (TYPE_3__*,size_t) ;
 TYPE_4__* ngx_http_get_module_ctx (TYPE_3__*,int ) ;
 TYPE_5__* ngx_http_get_module_loc_conf (TYPE_3__*,int ) ;
 TYPE_5__* ngx_http_get_module_main_conf (TYPE_3__*,int ) ;
 TYPE_4__* ngx_http_reqstat_create_store (TYPE_3__*,TYPE_5__*) ;
 int ngx_http_reqstat_module ;

__attribute__((used)) static ngx_int_t
ngx_http_reqstat_check_enable(ngx_http_request_t *r,
    ngx_http_reqstat_conf_t **rlcf, ngx_http_reqstat_store_t **store)
{
    ngx_http_reqstat_conf_t *rcf;
    ngx_http_reqstat_store_t *s;
    ngx_http_variable_value_t *v;

    rcf = ngx_http_get_module_main_conf(r, ngx_http_reqstat_module);
    if (r->variables[rcf->index].valid) {
        v = ngx_http_get_flushed_variable(r, rcf->index);

        if (v->data[0] == '0') {
            return NGX_DECLINED;
        }

        s = (ngx_http_reqstat_store_t *) (*((uintptr_t *) &v->data[1]));
        rcf = s->conf;

    } else {
        rcf = ngx_http_get_module_loc_conf(r, ngx_http_reqstat_module);

        s = ngx_http_get_module_ctx(r, ngx_http_reqstat_module);

        if (s == ((void*)0)) {
            s = ngx_http_reqstat_create_store(r, rcf);
            if (s == ((void*)0)) {
                return NGX_ERROR;
            }
        }

        if (s->bypass) {
            return NGX_DECLINED;
        }
    }

    *rlcf = rcf;
    *store = s;

    return NGX_OK;
}
