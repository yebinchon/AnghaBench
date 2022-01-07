
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef scalar_t__ ngx_socket_t ;
struct TYPE_6__ {int log; TYPE_2__* data; } ;
typedef TYPE_1__ ngx_event_t ;
struct TYPE_7__ {size_t connection_n; TYPE_3__* connections; } ;
typedef TYPE_2__ ngx_cycle_t ;
struct TYPE_8__ {scalar_t__ fd; int close; int error; TYPE_4__* read; int number; } ;
typedef TYPE_3__ ngx_connection_t ;
struct TYPE_9__ {int (* handler ) (TYPE_4__*) ;scalar_t__ resolver; scalar_t__ channel; scalar_t__ accept; } ;


 int NGX_LOG_DEBUG_CORE ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int stub1 (TYPE_4__*) ;

__attribute__((used)) static void
ngx_shutdown_timer_handler(ngx_event_t *ev)
{
    ngx_uint_t i;
    ngx_cycle_t *cycle;
    ngx_connection_t *c;

    cycle = ev->data;

    c = cycle->connections;

    for (i = 0; i < cycle->connection_n; i++) {

        if (c[i].fd == (ngx_socket_t) -1
            || c[i].read == ((void*)0)
            || c[i].read->accept
            || c[i].read->channel
            || c[i].read->resolver)
        {
            continue;
        }

        ngx_log_debug1(NGX_LOG_DEBUG_CORE, ev->log, 0,
                       "*%uA shutdown timeout", c[i].number);

        c[i].close = 1;
        c[i].error = 1;

        c[i].read->handler(c[i].read);
    }
}
