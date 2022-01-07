
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timezone {int dummy; } ;
struct timeval {long tv_sec; long tv_usec; } ;
typedef int __int64 ;
struct TYPE_3__ {int member_0; int member_1; int member_3; int member_6; int member_5; int member_4; int member_2; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef int LPFILETIME ;


 int EINVAL ;
 int GetSystemTimeAsFileTime (int ) ;
 int SystemTimeToFileTime (TYPE_1__*,int ) ;
 int errno ;

int gettimeofday(struct timeval *tv, struct timezone *tz)
{
    static __int64 Adjustment;
 __int64 now = 0;

    if (!Adjustment)
    {
  SYSTEMTIME st = {1970,1,0,1,0,0,0};
  SystemTimeToFileTime(&st, (LPFILETIME)&Adjustment);
    }

    if (tz)
    {
  errno = EINVAL;
 return -1;
    }

 GetSystemTimeAsFileTime((LPFILETIME)&now);
 now -= Adjustment;

 tv->tv_sec = (long)(now / 10000000);
 tv->tv_usec = (long)((now % 10000000) / 10);

    return 0;
}
