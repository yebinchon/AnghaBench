
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_5__ {int timer_latch; int current_time; } ;
struct TYPE_6__ {TYPE_1__ params; int mutex; } ;
typedef TYPE_2__ TestParamsWrapper ;


 int Assert (int ) ;
 int SetLatch (int *) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int params_close_wrapper (TYPE_2__*) ;
 TYPE_2__* params_open_wrapper () ;

void
ts_params_set_time(int64 new_val, bool set_latch)
{
 TestParamsWrapper *wrapper = params_open_wrapper();

 Assert(wrapper != ((void*)0));

 SpinLockAcquire(&wrapper->mutex);
 wrapper->params.current_time = new_val;
 SpinLockRelease(&wrapper->mutex);

 if (set_latch)
  SetLatch(&wrapper->params.timer_latch);

 params_close_wrapper(wrapper);
}
