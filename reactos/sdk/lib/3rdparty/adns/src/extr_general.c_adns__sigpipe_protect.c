
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sigaction {scalar_t__ sa_flags; int sa_mask; int sa_handler; } ;
typedef int sigset_t ;
typedef TYPE_1__* adns_state ;
struct TYPE_3__ {int iflags; int stdsigpipe; int stdsigmask; } ;


 int SIGPIPE ;
 int SIG_IGN ;
 int SIG_SETMASK ;
 int adns_if_nosigpipe ;
 int assert (int) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigdelset (int *,int ) ;
 int sigfillset (int *) ;
 int sigprocmask (int ,int *,int *) ;

void adns__sigpipe_protect(adns_state ads) {

  sigset_t toblock;
  struct sigaction sa;
  int r;

  if (ads->iflags & adns_if_nosigpipe) return;

  sigfillset(&toblock);
  sigdelset(&toblock,SIGPIPE);

  sa.sa_handler= SIG_IGN;
  sigfillset(&sa.sa_mask);
  sa.sa_flags= 0;

  r= sigprocmask(SIG_SETMASK,&toblock,&ads->stdsigmask); assert(!r);
  r= sigaction(SIGPIPE,&sa,&ads->stdsigpipe); assert(!r);

}
