
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_pid_t ;
struct TYPE_4__ {int name; } ;
typedef TYPE_1__ ngx_exec_ctx_t ;
typedef int ngx_cycle_t ;


 int NGX_PROCESS_DETACHED ;
 int ngx_execute_proc ;
 int ngx_spawn_process (int *,int ,TYPE_1__*,int ,int ) ;

ngx_pid_t
ngx_execute(ngx_cycle_t *cycle, ngx_exec_ctx_t *ctx)
{
    return ngx_spawn_process(cycle, ngx_execute_proc, ctx, ctx->name,
                             NGX_PROCESS_DETACHED);
}
