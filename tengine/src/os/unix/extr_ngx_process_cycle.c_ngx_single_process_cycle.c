
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef int ngx_uid_t ;
struct TYPE_14__ {int log; TYPE_1__** modules; } ;
typedef TYPE_2__ ngx_cycle_t ;
struct TYPE_13__ {scalar_t__ (* init_process ) (TYPE_2__*) ;int (* exit_process ) (TYPE_2__*) ;} ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_EVENT ;
 int NGX_LOG_NOTICE ;
 int exit (int) ;
 TYPE_2__* ngx_cycle ;
 TYPE_2__* ngx_init_cycle (TYPE_2__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_master_process_exit (TYPE_2__*) ;
 int ngx_process_events_and_timers (TYPE_2__*) ;
 scalar_t__ ngx_quit ;
 scalar_t__ ngx_reconfigure ;
 scalar_t__ ngx_reopen ;
 int ngx_reopen_files (TYPE_2__*,int ) ;
 int * ngx_set_environment (TYPE_2__*,int *) ;
 scalar_t__ ngx_terminate ;
 scalar_t__ stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

void
ngx_single_process_cycle(ngx_cycle_t *cycle)
{
    ngx_uint_t i;

    if (ngx_set_environment(cycle, ((void*)0)) == ((void*)0)) {

        exit(2);
    }

    for (i = 0; cycle->modules[i]; i++) {
        if (cycle->modules[i]->init_process) {
            if (cycle->modules[i]->init_process(cycle) == NGX_ERROR) {

                exit(2);
            }
        }
    }

    for ( ;; ) {
        ngx_log_debug0(NGX_LOG_DEBUG_EVENT, cycle->log, 0, "worker cycle");

        ngx_process_events_and_timers(cycle);

        if (ngx_terminate || ngx_quit) {

            for (i = 0; cycle->modules[i]; i++) {
                if (cycle->modules[i]->exit_process) {
                    cycle->modules[i]->exit_process(cycle);
                }
            }

            ngx_master_process_exit(cycle);
        }

        if (ngx_reconfigure) {
            ngx_reconfigure = 0;
            ngx_log_error(NGX_LOG_NOTICE, cycle->log, 0, "reconfiguring");

            cycle = ngx_init_cycle(cycle);
            if (cycle == ((void*)0)) {
                cycle = (ngx_cycle_t *) ngx_cycle;
                continue;
            }

            ngx_cycle = cycle;
        }

        if (ngx_reopen) {
            ngx_reopen = 0;
            ngx_log_error(NGX_LOG_NOTICE, cycle->log, 0, "reopening logs");
            ngx_reopen_files(cycle, (ngx_uid_t) -1);
        }
    }
}
