
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD_CLOEXEC ;
 int F_SETFD ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int fatal (char*) ;
 int fcntl (int,int ,int ) ;
 scalar_t__ getpid () ;
 int open (char*,int,int) ;
 int tty_log_fd ;
 int xsnprintf (char*,int,char*,long) ;

void
tty_create_log(void)
{
 char name[64];

 xsnprintf(name, sizeof name, "tmux-out-%ld.log", (long)getpid());

 tty_log_fd = open(name, O_WRONLY|O_CREAT|O_TRUNC, 0644);
 if (tty_log_fd != -1 && fcntl(tty_log_fd, F_SETFD, FD_CLOEXEC) == -1)
  fatal("fcntl failed");
}
