
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_10__ {TYPE_1__* upstream; } ;
typedef TYPE_2__ ngx_http_tfs_timers_data_t ;
struct TYPE_11__ {scalar_t__ timer_set; TYPE_5__* data; int log; int handler; } ;
typedef TYPE_3__ ngx_event_t ;
struct TYPE_12__ {int log; int pool; } ;
typedef TYPE_4__ ngx_cycle_t ;
struct TYPE_13__ {TYPE_2__* data; } ;
typedef TYPE_5__ ngx_connection_t ;
struct TYPE_9__ {int rcs_interval; } ;


 int NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 int ngx_add_timer (TYPE_3__*,int ) ;
 int ngx_http_tfs_timeout_handler ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 void* ngx_pcalloc (int ,int) ;

ngx_int_t
ngx_http_tfs_add_rcs_timers(ngx_cycle_t *cycle,
    ngx_http_tfs_timers_data_t *data)
{
    ngx_event_t *ev;
    ngx_connection_t *dummy;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, cycle->log, 0,
                   "http check tfs rc servers");

    ev = ngx_pcalloc(cycle->pool, sizeof(ngx_event_t));
    if (ev == ((void*)0)) {
        return NGX_ERROR;
    }

    dummy = ngx_pcalloc(cycle->pool, sizeof(ngx_connection_t));
    if (dummy == ((void*)0)) {
        return NGX_ERROR;
    }

    dummy->data = data;
    ev->handler = ngx_http_tfs_timeout_handler;
    ev->log = cycle->log;
    ev->data = dummy;
    ev->timer_set = 0;

    ngx_add_timer(ev, data->upstream->rcs_interval);

    return NGX_OK;
}
