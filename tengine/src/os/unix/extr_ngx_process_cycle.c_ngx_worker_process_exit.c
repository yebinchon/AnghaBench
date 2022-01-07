
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef size_t ngx_uint_t ;
struct TYPE_18__ {size_t connection_n; int pool; TYPE_7__* log; TYPE_4__* connections; TYPE_1__** modules; } ;
typedef TYPE_3__ ngx_cycle_t ;
struct TYPE_19__ {int fd; int number; TYPE_2__* read; } ;
typedef TYPE_4__ ngx_connection_t ;
struct TYPE_20__ {int * writer; int * next; TYPE_10__* file; } ;
struct TYPE_17__ {int resolver; int channel; int accept; } ;
struct TYPE_16__ {int (* exit_process ) (TYPE_3__*) ;} ;
struct TYPE_15__ {TYPE_7__* log; int files_n; int files; } ;
struct TYPE_14__ {int fd; } ;


 int NGX_LOG_ALERT ;
 int NGX_LOG_NOTICE ;
 int exit (int ) ;
 TYPE_12__* ngx_cycle ;
 int ngx_debug_point () ;
 int ngx_debug_quit ;
 int ngx_destroy_pool (int ) ;
 TYPE_12__ ngx_exit_cycle ;
 TYPE_7__ ngx_exit_log ;
 TYPE_10__ ngx_exit_log_file ;
 scalar_t__ ngx_exiting ;
 int ngx_log_error (int ,TYPE_7__*,int ,char*,...) ;
 TYPE_7__* ngx_log_get_file_log (TYPE_7__*) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static void
ngx_worker_process_exit(ngx_cycle_t *cycle)
{
    ngx_uint_t i;
    ngx_connection_t *c;

    for (i = 0; cycle->modules[i]; i++) {
        if (cycle->modules[i]->exit_process) {
            cycle->modules[i]->exit_process(cycle);
        }
    }

    if (ngx_exiting) {
        c = cycle->connections;
        for (i = 0; i < cycle->connection_n; i++) {
            if (c[i].fd != -1
                && c[i].read
                && !c[i].read->accept
                && !c[i].read->channel
                && !c[i].read->resolver)
            {
                ngx_log_error(NGX_LOG_ALERT, cycle->log, 0,
                              "*%uA open socket #%d left in connection %ui",
                              c[i].number, c[i].fd, i);
                ngx_debug_quit = 1;
            }
        }

        if (ngx_debug_quit) {
            ngx_log_error(NGX_LOG_ALERT, cycle->log, 0, "aborting");
            ngx_debug_point();
        }
    }
    ngx_exit_log = *ngx_log_get_file_log(ngx_cycle->log);

    ngx_exit_log_file.fd = ngx_exit_log.file->fd;
    ngx_exit_log.file = &ngx_exit_log_file;
    ngx_exit_log.next = ((void*)0);
    ngx_exit_log.writer = ((void*)0);

    ngx_exit_cycle.log = &ngx_exit_log;
    ngx_exit_cycle.files = ngx_cycle->files;
    ngx_exit_cycle.files_n = ngx_cycle->files_n;
    ngx_cycle = &ngx_exit_cycle;

    ngx_destroy_pool(cycle->pool);

    ngx_log_error(NGX_LOG_NOTICE, ngx_cycle->log, 0, "exit");

    exit(0);
}
