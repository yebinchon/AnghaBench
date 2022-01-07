
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termios {int dummy; } ;
struct TYPE_2__ {int fd; int opgrp; int attr; int file; } ;


 int SIGTTOU ;
 int SIG_DFL ;
 int SIG_IGN ;
 int calloc (int,int) ;
 int die (char*) ;
 int die_callback ;
 int done_display ;
 int fileno (int ) ;
 int fopen (char*,char*) ;
 int getpid () ;
 TYPE_1__ opt_tty ;
 int setpgid (int ,int ) ;
 int signal (int ,int ) ;
 int tcgetattr (int ,int ) ;
 int tcgetpgrp (int ) ;
 int tcsetpgrp (int ,int ) ;

void
init_tty(void)
{

 opt_tty.file = fopen("/dev/tty", "r+");
 if (!opt_tty.file)
  die("Failed to open tty for input");
 opt_tty.fd = fileno(opt_tty.file);


 opt_tty.attr = calloc(1, sizeof(struct termios));
 if (!opt_tty.attr)
  die("Failed allocation for tty attributes");
 tcgetattr(opt_tty.fd, opt_tty.attr);


 signal(SIGTTOU, SIG_IGN);
 setpgid(getpid(), getpid());
 opt_tty.opgrp = tcgetpgrp(opt_tty.fd);
 tcsetpgrp(opt_tty.fd, getpid());
 signal(SIGTTOU, SIG_DFL);

 die_callback = done_display;
}
