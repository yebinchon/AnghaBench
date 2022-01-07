
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_9__ {int log; } ;
typedef TYPE_1__ ngx_cycle_t ;
struct TYPE_10__ {size_t slot; int fd; int pid; int command; } ;
typedef TYPE_2__ ngx_channel_t ;
struct TYPE_11__ {int * channel; int pid; } ;


 int NGX_CMD_OPEN_CHANNEL ;
 int NGX_LOG_NOTICE ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_memzero (TYPE_2__*,int) ;
 int ngx_pass_open_channel (TYPE_1__*,TYPE_2__*) ;
 size_t ngx_process_slot ;
 TYPE_5__* ngx_processes ;
 int ngx_spawn_process (TYPE_1__*,int ,void*,char*,scalar_t__) ;
 int ngx_worker_process_cycle ;

__attribute__((used)) static void
ngx_start_worker_processes(ngx_cycle_t *cycle, ngx_int_t n, ngx_int_t type)
{
    ngx_int_t i;
    ngx_channel_t ch;

    ngx_log_error(NGX_LOG_NOTICE, cycle->log, 0, "start worker processes");

    ngx_memzero(&ch, sizeof(ngx_channel_t));

    ch.command = NGX_CMD_OPEN_CHANNEL;

    for (i = 0; i < n; i++) {

        ngx_spawn_process(cycle, ngx_worker_process_cycle,
                          (void *) (intptr_t) i, "worker process", type);

        ch.pid = ngx_processes[ngx_process_slot].pid;
        ch.slot = ngx_process_slot;
        ch.fd = ngx_processes[ngx_process_slot].channel[0];

        ngx_pass_open_channel(cycle, &ch);
    }
}
