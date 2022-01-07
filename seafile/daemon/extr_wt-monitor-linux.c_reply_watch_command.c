
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * res_pipe; } ;
typedef TYPE_1__ SeafWTMonitor ;


 int seaf_pipe_writen (int ,int*,int) ;
 int seaf_warning (char*) ;

__attribute__((used)) static void
reply_watch_command (SeafWTMonitor *monitor, int result)
{
    int n;

    n = seaf_pipe_writen (monitor->res_pipe[1], &result, sizeof(int));
    if (n != sizeof(int))
        seaf_warning ("[wt mon] fail to write command result.\n");
}
