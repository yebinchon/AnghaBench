
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kmutex_t ;
typedef int kcondvar_t ;
typedef int hrtime_t ;
typedef int clock_t ;


 int CALLOUT_FLAG_ABSOLUTE ;
 int __cv_timedwait_hires (int *,int *,int ,int ,int) ;
 scalar_t__ gethrtime () ;

__attribute__((used)) static clock_t
cv_timedwait_hires_common(kcondvar_t *cvp, kmutex_t *mp, hrtime_t tim,
    hrtime_t res, int flag, int state)
{
 if (!(flag & CALLOUT_FLAG_ABSOLUTE))
  tim += gethrtime();

 return (__cv_timedwait_hires(cvp, mp, tim, res, state));
}
