
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; int params; } ;
typedef TYPE_1__ TestParamsWrapper ;
typedef int TestParams ;


 int Assert (int ) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int memcpy (int *,int *,int) ;
 int * palloc (int) ;
 int params_close_wrapper (TYPE_1__*) ;
 TYPE_1__* params_open_wrapper () ;

TestParams *
ts_params_get()
{
 TestParamsWrapper *wrapper = params_open_wrapper();
 TestParams *res;

 Assert(wrapper != ((void*)0));

 res = palloc(sizeof(TestParams));

 SpinLockAcquire(&wrapper->mutex);

 memcpy(res, &wrapper->params, sizeof(TestParams));

 SpinLockRelease(&wrapper->mutex);

 params_close_wrapper(wrapper);

 return res;
}
