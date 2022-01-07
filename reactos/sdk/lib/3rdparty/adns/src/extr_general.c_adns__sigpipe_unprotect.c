
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* adns_state ;
struct TYPE_3__ {int iflags; int stdsigmask; int stdsigpipe; } ;


 int SIGPIPE ;
 int SIG_SETMASK ;
 int adns_if_nosigpipe ;
 int assert (int) ;
 int sigaction (int ,int *,int ) ;
 int sigprocmask (int ,int *,int ) ;

void adns__sigpipe_unprotect(adns_state ads) {

  int r;

  if (ads->iflags & adns_if_nosigpipe) return;

  r= sigaction(SIGPIPE,&ads->stdsigpipe,0); assert(!r);
  r= sigprocmask(SIG_SETMASK,&ads->stdsigmask,0); assert(!r);

}
