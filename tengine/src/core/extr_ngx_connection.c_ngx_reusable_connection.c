
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ngx_uint_t ;
typedef int ngx_queue_t ;
struct TYPE_4__ {int queue; scalar_t__ reusable; int log; } ;
typedef TYPE_1__ ngx_connection_t ;
struct TYPE_5__ {int reusable_connections_n; int reusable_connections_queue; } ;


 int NGX_LOG_DEBUG_CORE ;
 int ngx_atomic_fetch_add (int ,int) ;
 TYPE_3__* ngx_cycle ;
 int ngx_log_debug1 (int ,int ,int ,char*,scalar_t__) ;
 int ngx_queue_insert_head (int *,int *) ;
 int ngx_queue_remove (int *) ;
 int ngx_stat_waiting ;

void
ngx_reusable_connection(ngx_connection_t *c, ngx_uint_t reusable)
{
    ngx_log_debug1(NGX_LOG_DEBUG_CORE, c->log, 0,
                   "reusable connection: %ui", reusable);

    if (c->reusable) {
        ngx_queue_remove(&c->queue);
        ngx_cycle->reusable_connections_n--;




    }

    c->reusable = reusable;

    if (reusable) {


        ngx_queue_insert_head(
            (ngx_queue_t *) &ngx_cycle->reusable_connections_queue, &c->queue);
        ngx_cycle->reusable_connections_n++;




    }
}
