
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_13__ {int data; int len; } ;
struct TYPE_14__ {TYPE_4__* timer_data; TYPE_2__ lock_file; int used; int enable_rcs; } ;
typedef TYPE_3__ ngx_http_tfs_upstream_t ;
struct TYPE_15__ {int * lock; TYPE_3__* upstream; TYPE_5__* main_conf; } ;
typedef TYPE_4__ ngx_http_tfs_timers_data_t ;
struct TYPE_12__ {size_t nelts; TYPE_3__** elts; } ;
struct TYPE_16__ {TYPE_1__ upstreams; } ;
typedef TYPE_5__ ngx_http_tfs_main_conf_t ;
struct TYPE_17__ {int pool; } ;
typedef TYPE_6__ ngx_cycle_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_5__* ngx_http_cycle_get_module_main_conf (TYPE_6__*,int ) ;
 int ngx_http_tfs_module ;
 int * ngx_http_tfs_timers_init (TYPE_6__*,int ) ;
 TYPE_4__* ngx_pcalloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_tfs_module_init(ngx_cycle_t *cycle)
{
    ngx_uint_t i;
    ngx_http_tfs_upstream_t **tup;
    ngx_http_tfs_main_conf_t *tmcf;
    ngx_http_tfs_timers_data_t *data;

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

        data = ngx_pcalloc(cycle->pool, sizeof(ngx_http_tfs_timers_data_t));
        if (data == ((void*)0)) {
            return NGX_ERROR;
        }

        data->main_conf = tmcf;
        data->upstream = tup[i];
        data->lock = ngx_http_tfs_timers_init(cycle, tup[i]->lock_file.data);
        if (data->lock == ((void*)0))
        {
            return NGX_ERROR;
        }

        tup[i]->timer_data = data;
    }

    return NGX_OK;
}
