
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_6__ {int * pool; } ;
typedef TYPE_2__ ngx_http_dyups_srv_conf_t ;
struct TYPE_5__ {size_t nelts; TYPE_2__* elts; } ;
struct TYPE_7__ {TYPE_1__ dy_upstreams; } ;
typedef TYPE_3__ ngx_http_dyups_main_conf_t ;
typedef int ngx_cycle_t ;


 int ngx_cycle ;
 int ngx_destroy_pool (int *) ;
 TYPE_3__* ngx_http_cycle_get_module_main_conf (int ,int ) ;
 int ngx_http_dyups_module ;

__attribute__((used)) static void
ngx_http_dyups_exit_process(ngx_cycle_t *cycle)
{
    ngx_uint_t i;
    ngx_http_dyups_srv_conf_t *duscfs, *duscf;
    ngx_http_dyups_main_conf_t *dumcf;

    dumcf = ngx_http_cycle_get_module_main_conf(ngx_cycle,
                                                ngx_http_dyups_module);
    if (!dumcf) {
        return;
    }

    duscfs = dumcf->dy_upstreams.elts;
    for (i = 0; i < dumcf->dy_upstreams.nelts; i++) {

        duscf = &duscfs[i];

        if (duscf->pool) {
            ngx_destroy_pool(duscf->pool);
            duscf->pool = ((void*)0);
        }
    }
}
