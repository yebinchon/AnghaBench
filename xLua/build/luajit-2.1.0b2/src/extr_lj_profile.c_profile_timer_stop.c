
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_5__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct itimerval {TYPE_2__ it_interval; TYPE_1__ it_value; } ;
struct TYPE_7__ {int oldsa; } ;
typedef TYPE_3__ ProfileState ;


 int ITIMER_PROF ;
 int SIGPROF ;
 int setitimer (int ,struct itimerval*,int *) ;
 int sigaction (int ,int *,int *) ;

__attribute__((used)) static void profile_timer_stop(ProfileState *ps)
{
  struct itimerval tm;
  tm.it_value.tv_sec = tm.it_interval.tv_sec = 0;
  tm.it_value.tv_usec = tm.it_interval.tv_usec = 0;
  setitimer(ITIMER_PROF, &tm, ((void*)0));
  sigaction(SIGPROF, &ps->oldsa, ((void*)0));
}
