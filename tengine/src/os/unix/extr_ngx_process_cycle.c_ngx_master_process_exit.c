
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_14__ {int pool; TYPE_1__** modules; int log; } ;
typedef TYPE_2__ ngx_cycle_t ;
struct TYPE_17__ {int files_n; int files; TYPE_5__* log; } ;
struct TYPE_16__ {int fd; } ;
struct TYPE_15__ {int * writer; int * next; TYPE_7__* file; } ;
struct TYPE_13__ {int (* exit_master ) (TYPE_2__*) ;} ;


 int NGX_LOG_NOTICE ;
 int exit (int ) ;
 int ngx_close_listening_sockets (TYPE_2__*) ;
 int ngx_close_old_pipes () ;
 TYPE_9__* ngx_cycle ;
 int ngx_delete_pidfile (TYPE_2__*) ;
 int ngx_destroy_pool (int ) ;
 TYPE_9__ ngx_exit_cycle ;
 TYPE_5__ ngx_exit_log ;
 TYPE_7__ ngx_exit_log_file ;
 int ngx_increase_pipe_generation () ;
 int ngx_log_error (int ,int ,int ,char*) ;
 TYPE_5__* ngx_log_get_file_log (TYPE_5__*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void
ngx_master_process_exit(ngx_cycle_t *cycle)
{
    ngx_uint_t i;

    ngx_delete_pidfile(cycle);

    ngx_log_error(NGX_LOG_NOTICE, cycle->log, 0, "exit");

    for (i = 0; cycle->modules[i]; i++) {
        if (cycle->modules[i]->exit_master) {
            cycle->modules[i]->exit_master(cycle);
        }
    }

    ngx_close_listening_sockets(cycle);
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







    exit(0);
}
