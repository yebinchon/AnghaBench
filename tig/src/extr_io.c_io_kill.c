
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io {scalar_t__ pid; } ;


 int SIGKILL ;
 int kill (scalar_t__,int ) ;

bool
io_kill(struct io *io)
{
 return io->pid == 0 || kill(io->pid, SIGKILL) != -1;
}
