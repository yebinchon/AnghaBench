
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* pipe_fd; } ;


 TYPE_1__ _ctx ;
 scalar_t__ close (int) ;
 int errno ;
 scalar_t__ getpid () ;
 int strerror (int ) ;
 int zed_log_die (char*,int,...) ;

void
zed_log_pipe_close_writes(void)
{
 if (_ctx.pipe_fd[1] < 0)
  zed_log_die(
      "Invalid use of zed_log_pipe_close_writes in PID %d",
      (int)getpid());

 if (close(_ctx.pipe_fd[1]) < 0)
  zed_log_die(
      "Failed to close writes on daemonize pipe in PID %d: %s",
      (int)getpid(), strerror(errno));

 _ctx.pipe_fd[1] = -1;
}
