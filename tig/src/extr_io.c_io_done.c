
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io {scalar_t__ pid; int pipe; int status; scalar_t__ error; int buf; } ;
typedef scalar_t__ pid_t ;


 scalar_t__ EINTR ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int WIFSIGNALED (int) ;
 int close (int) ;
 scalar_t__ errno ;
 int free (int ) ;
 int io_init (struct io*) ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;

bool
io_done(struct io *io)
{
 pid_t pid = io->pid;

 if (io->pipe != -1)
  close(io->pipe);
 free(io->buf);
 io_init(io);

 while (pid > 0) {
  int status = 0;
  pid_t waiting = waitpid(pid, &status, 0);

  if (waiting < 0) {
   if (errno == EINTR)
    continue;
   io->error = errno;
   return 0;
  }

  io->status = WIFEXITED(status) ? WEXITSTATUS(status) : 0;

  return waiting == pid &&
         !WIFSIGNALED(status) &&
         !io->status;
 }

 return 1;
}
