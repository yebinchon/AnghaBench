
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef scalar_t__ ngx_socket_t ;
typedef int ngx_log_t ;
typedef int ngx_event_t ;
struct TYPE_8__ {size_t connection_n; TYPE_3__* pool; TYPE_1__* connections; } ;
typedef TYPE_2__ ngx_cycle_t ;
struct TYPE_11__ {int * log; } ;
struct TYPE_10__ {size_t nelts; TYPE_2__** elts; } ;
struct TYPE_9__ {int * log; } ;
struct TYPE_7__ {scalar_t__ fd; } ;


 int NGX_LOG_DEBUG_CORE ;
 int ngx_add_timer (int *,int) ;
 TYPE_6__* ngx_cycle ;
 int ngx_destroy_pool (TYPE_3__*) ;
 int ngx_log_debug0 (int ,int *,int ,char*) ;
 int ngx_log_debug1 (int ,int *,int ,char*,size_t) ;
 TYPE_4__ ngx_old_cycles ;
 TYPE_3__* ngx_temp_pool ;

__attribute__((used)) static void
ngx_clean_old_cycles(ngx_event_t *ev)
{
    ngx_uint_t i, n, found, live;
    ngx_log_t *log;
    ngx_cycle_t **cycle;

    log = ngx_cycle->log;
    ngx_temp_pool->log = log;

    ngx_log_debug0(NGX_LOG_DEBUG_CORE, log, 0, "clean old cycles");

    live = 0;

    cycle = ngx_old_cycles.elts;
    for (i = 0; i < ngx_old_cycles.nelts; i++) {

        if (cycle[i] == ((void*)0)) {
            continue;
        }

        found = 0;

        for (n = 0; n < cycle[i]->connection_n; n++) {
            if (cycle[i]->connections[n].fd != (ngx_socket_t) -1) {
                found = 1;

                ngx_log_debug1(NGX_LOG_DEBUG_CORE, log, 0, "live fd:%ui", n);

                break;
            }
        }

        if (found) {
            live = 1;
            continue;
        }

        ngx_log_debug1(NGX_LOG_DEBUG_CORE, log, 0, "clean old cycle: %ui", i);

        ngx_destroy_pool(cycle[i]->pool);
        cycle[i] = ((void*)0);
    }

    ngx_log_debug1(NGX_LOG_DEBUG_CORE, log, 0, "old cycles status: %ui", live);

    if (live) {
        ngx_add_timer(ev, 30000);

    } else {
        ngx_destroy_pool(ngx_temp_pool);
        ngx_temp_pool = ((void*)0);
        ngx_old_cycles.nelts = 0;
    }
}
