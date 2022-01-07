
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t ngx_int_t ;
struct TYPE_7__ {int log; } ;
typedef TYPE_1__ ngx_cycle_t ;
struct TYPE_8__ {int fd; int pid; int slot; } ;
typedef TYPE_2__ ngx_channel_t ;
struct TYPE_9__ {int pid; int* channel; } ;


 int NGX_LOG_DEBUG_CORE ;
 size_t ngx_last_process ;
 int ngx_log_debug6 (int ,int ,int ,char*,int ,int ,int ,size_t,int,int) ;
 size_t ngx_process_slot ;
 TYPE_4__* ngx_processes ;
 int ngx_write_channel (int,TYPE_2__*,int,int ) ;

__attribute__((used)) static void
ngx_pass_open_channel(ngx_cycle_t *cycle, ngx_channel_t *ch)
{
    ngx_int_t i;

    for (i = 0; i < ngx_last_process; i++) {

        if (i == ngx_process_slot
            || ngx_processes[i].pid == -1
            || ngx_processes[i].channel[0] == -1)
        {
            continue;
        }

        ngx_log_debug6(NGX_LOG_DEBUG_CORE, cycle->log, 0,
                      "pass channel s:%i pid:%P fd:%d to s:%i pid:%P fd:%d",
                      ch->slot, ch->pid, ch->fd,
                      i, ngx_processes[i].pid,
                      ngx_processes[i].channel[0]);



        ngx_write_channel(ngx_processes[i].channel[0],
                          ch, sizeof(ngx_channel_t), cycle->log);
    }
}
