
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_11__ {TYPE_2__* upstream; TYPE_1__* lock; } ;
typedef TYPE_3__ ngx_http_tfs_timers_data_t ;
struct TYPE_12__ {int pool; TYPE_5__* finalize_data; int log; } ;
typedef TYPE_4__ ngx_http_tfs_t ;
struct TYPE_13__ {TYPE_6__* data; } ;
typedef TYPE_5__ ngx_event_t ;
struct TYPE_14__ {TYPE_3__* data; } ;
typedef TYPE_6__ ngx_connection_t ;
struct TYPE_10__ {int rcs_interval; } ;
struct TYPE_9__ {int ngx_http_tfs_kp_mutex; } ;


 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 int ngx_add_timer (TYPE_5__*,int ) ;
 int ngx_destroy_pool (int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_shmtx_unlock (int *) ;

ngx_int_t
ngx_http_tfs_timers_finalize_request_handler(ngx_http_tfs_t *t)
{
    ngx_event_t *event;
    ngx_connection_t *dummy;
    ngx_http_tfs_timers_data_t *data;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, t->log, 0, "http tfs timers finalize");

    event = t->finalize_data;
    dummy = event->data;
    data = dummy->data;

    ngx_destroy_pool(t->pool);
    ngx_shmtx_unlock(&data->lock->ngx_http_tfs_kp_mutex);
    ngx_add_timer(event, data->upstream->rcs_interval);
    return NGX_OK;
}
