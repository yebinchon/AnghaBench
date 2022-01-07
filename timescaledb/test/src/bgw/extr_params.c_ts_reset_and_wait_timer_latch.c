
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int timer_latch; } ;
struct TYPE_6__ {TYPE_1__ params; } ;
typedef TYPE_2__ TestParamsWrapper ;


 int Assert (int ) ;
 int ResetLatch (int *) ;
 int WL_LATCH_SET ;
 int WL_POSTMASTER_DEATH ;
 int WL_TIMEOUT ;
 int WaitLatchCompat (int *,int,int) ;
 int params_close_wrapper (TYPE_2__*) ;
 TYPE_2__* params_open_wrapper () ;

void
ts_reset_and_wait_timer_latch()
{
 TestParamsWrapper *wrapper = params_open_wrapper();

 Assert(wrapper != ((void*)0));

 ResetLatch(&wrapper->params.timer_latch);
 WaitLatchCompat(&wrapper->params.timer_latch,
     WL_LATCH_SET | WL_TIMEOUT | WL_POSTMASTER_DEATH,
     10000);

 params_close_wrapper(wrapper);
}
