
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pid; scalar_t__ configured; } ;
typedef TYPE_1__ ngx_open_pipe_t ;


 int SIGTERM ;
 int kill (int,int ) ;

__attribute__((used)) static void
ngx_close_pipe(ngx_open_pipe_t *pipe)
{





    if (pipe->pid != -1) {
        kill(pipe->pid, SIGTERM);
    }

    pipe->configured = 0;
}
