
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sigaction {scalar_t__ sa_flags; int sa_mask; int sa_handler; } ;
struct TYPE_2__ {scalar_t__ rto_gdb; } ;


 int SIG_DFL ;
 int gdb ;
 int raise (int) ;
 TYPE_1__ rto_opts ;
 int sigaction (int,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 scalar_t__ system (int ) ;

__attribute__((used)) static void sig_handler(int signo)
{
 struct sigaction action;




 action.sa_handler = SIG_DFL;
 sigemptyset(&action.sa_mask);
 action.sa_flags = 0;
 (void) sigaction(signo, &action, ((void*)0));

 if (rto_opts.rto_gdb)
  if (system(gdb)) { }

 raise(signo);
}
