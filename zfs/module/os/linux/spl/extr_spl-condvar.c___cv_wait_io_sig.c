
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kmutex_t ;
typedef int kcondvar_t ;


 int TASK_INTERRUPTIBLE ;
 int current ;
 int cv_wait_common (int *,int *,int ,int) ;
 scalar_t__ signal_pending (int ) ;

int
__cv_wait_io_sig(kcondvar_t *cvp, kmutex_t *mp)
{
 cv_wait_common(cvp, mp, TASK_INTERRUPTIBLE, 1);

 return (signal_pending(current) ? 0 : 1);
}
