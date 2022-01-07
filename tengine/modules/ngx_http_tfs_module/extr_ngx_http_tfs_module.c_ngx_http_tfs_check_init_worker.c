
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_6__ {int len; } ;
struct TYPE_8__ {int timer_data; int used; TYPE_1__ lock_file; int enable_rcs; } ;
typedef TYPE_3__ ngx_http_tfs_upstream_t ;
struct TYPE_7__ {size_t nelts; TYPE_3__** elts; } ;
struct TYPE_9__ {TYPE_2__ upstreams; } ;
typedef TYPE_4__ ngx_http_tfs_main_conf_t ;
typedef int ngx_cycle_t ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 TYPE_4__* ngx_http_cycle_get_module_main_conf (int *,int ) ;
 scalar_t__ ngx_http_tfs_add_rcs_timers (int *,int ) ;
 int ngx_http_tfs_module ;

__attribute__((used)) static ngx_int_t
ngx_http_tfs_check_init_worker(ngx_cycle_t *cycle)
{
    ngx_uint_t i;
    ngx_http_tfs_upstream_t **tup;
    ngx_http_tfs_main_conf_t *tmcf;


    tmcf = ngx_http_cycle_get_module_main_conf(cycle, ngx_http_tfs_module);
    if (tmcf == ((void*)0)) {
        return NGX_ERROR;
    }

    tup = tmcf->upstreams.elts;

    for (i = 0; i < tmcf->upstreams.nelts; i++) {
        if (!tup[i]->enable_rcs
            || !tup[i]->lock_file.len
            || !tup[i]->used)
        {
            return NGX_OK;
        }

        if (ngx_http_tfs_add_rcs_timers(cycle, tup[i]->timer_data) == NGX_ERROR)
        {
            return NGX_ERROR;
        }
    }

    return NGX_OK;
}
