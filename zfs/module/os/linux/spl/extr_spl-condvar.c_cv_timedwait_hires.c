
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kmutex_t ;
typedef int kcondvar_t ;
typedef int hrtime_t ;
typedef int clock_t ;


 int TASK_UNINTERRUPTIBLE ;
 int cv_timedwait_hires_common (int *,int *,int ,int ,int,int ) ;

clock_t
cv_timedwait_hires(kcondvar_t *cvp, kmutex_t *mp, hrtime_t tim, hrtime_t res,
    int flag)
{
 return (cv_timedwait_hires_common(cvp, mp, tim, res, flag,
     TASK_UNINTERRUPTIBLE));
}
