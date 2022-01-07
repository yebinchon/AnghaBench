
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kmutex_t ;
typedef int kcondvar_t ;
typedef int clock_t ;


 int TASK_UNINTERRUPTIBLE ;
 int __cv_timedwait_common (int *,int *,int ,int ,int) ;

clock_t
__cv_timedwait_io(kcondvar_t *cvp, kmutex_t *mp, clock_t exp_time)
{
 return (__cv_timedwait_common(cvp, mp, exp_time,
     TASK_UNINTERRUPTIBLE, 1));
}
