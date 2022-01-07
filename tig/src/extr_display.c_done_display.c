
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int opgrp; int fd; int * attr; } ;


 int SIGTTOU ;
 int SIG_DFL ;
 int SIG_IGN ;
 int TCSAFLUSH ;
 int curs_set (int) ;
 int cursed ;
 int doupdate () ;
 int endwin () ;
 int free (int *) ;
 TYPE_1__ opt_tty ;
 int signal (int ,int ) ;
 scalar_t__ status_win ;
 int tcsetattr (int ,int ,int *) ;
 int tcsetpgrp (int ,int ) ;
 int werase (scalar_t__) ;

__attribute__((used)) static void
done_display(void)
{
 if (cursed) {
  if (status_win) {
   werase(status_win);
   doupdate();
  }
  curs_set(1);
  endwin();
 }
 cursed = 0;

 if (opt_tty.attr) {
  tcsetattr(opt_tty.fd, TCSAFLUSH, opt_tty.attr);
  free(opt_tty.attr);
  opt_tty.attr = ((void*)0);
 }
 signal(SIGTTOU, SIG_IGN);
 tcsetpgrp(opt_tty.fd, opt_tty.opgrp);
 signal(SIGTTOU, SIG_DFL);
}
