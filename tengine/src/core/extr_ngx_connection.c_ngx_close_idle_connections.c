
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef scalar_t__ ngx_socket_t ;
struct TYPE_5__ {size_t connection_n; TYPE_2__* connections; } ;
typedef TYPE_1__ ngx_cycle_t ;
struct TYPE_6__ {scalar_t__ fd; int close; TYPE_3__* read; scalar_t__ idle; } ;
typedef TYPE_2__ ngx_connection_t ;
struct TYPE_7__ {int (* handler ) (TYPE_3__*) ;} ;


 int stub1 (TYPE_3__*) ;

void
ngx_close_idle_connections(ngx_cycle_t *cycle)
{
    ngx_uint_t i;
    ngx_connection_t *c;

    c = cycle->connections;

    for (i = 0; i < cycle->connection_n; i++) {



        if (c[i].fd != (ngx_socket_t) -1 && c[i].idle) {
            c[i].close = 1;
            c[i].read->handler(c[i].read);
        }
    }
}
