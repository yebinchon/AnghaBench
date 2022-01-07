
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int job_func; TYPE_1__* seaf; int res_pipe; int cmd_pipe; } ;
struct TYPE_5__ {int job_mgr; } ;
typedef TYPE_2__ SeafWTMonitor ;


 int errno ;
 scalar_t__ seaf_job_manager_schedule_job (int ,int ,int *,TYPE_2__*) ;
 scalar_t__ seaf_pipe (int ) ;
 int seaf_warning (char*,...) ;
 int strerror (int ) ;

int
seaf_wt_monitor_start (SeafWTMonitor *monitor)
{
    if (seaf_pipe (monitor->cmd_pipe) < 0) {
        seaf_warning ("[wt mon] failed to create command pipe: %s.\n",
                      strerror(errno));
        return -1;
    }

    if (seaf_pipe (monitor->res_pipe) < 0) {
        seaf_warning ("[wt mon] failed to create result pipe: %s.\n",
                      strerror(errno));
        return -1;
    }

    if (seaf_job_manager_schedule_job (monitor->seaf->job_mgr,
                                       monitor->job_func,
                                       ((void*)0), monitor) < 0) {
        seaf_warning ("[wt mon] failed to start monitor thread.\n");
        return -1;
    }

    return 0;
}
