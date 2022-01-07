
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tm {int tm_mon; int tm_year; int tm_mday; scalar_t__ tm_sec; scalar_t__ tm_min; scalar_t__ tm_hour; } ;
typedef int __time64_t ;
struct TYPE_3__ {int Bias; } ;
typedef TYPE_1__ TIME_ZONE_INFORMATION ;
typedef scalar_t__ DWORD ;


 scalar_t__ GetTimeZoneInformation (TYPE_1__*) ;
 scalar_t__ TIME_ZONE_ID_INVALID ;
 struct tm* _gmtime64 (int*) ;
 scalar_t__* g_monthdays ;

__time64_t
mktime_worker(struct tm * ptm, int utc)
{
    struct tm *ptm2;
    __time64_t time;
    int mons, years, leapyears;
    TIME_ZONE_INFORMATION tzi;
    DWORD ret;


    if (ptm->tm_mon < 0)
    {
        mons = -ptm->tm_mon - 1;
        ptm->tm_year -= 1 + mons / 12;
        ptm->tm_mon = 11 - (mons % 12);
    }
    else if (ptm->tm_mon > 11)
    {
        mons = ptm->tm_mon;
        ptm->tm_year += (mons / 12);
        ptm->tm_mon = mons % 12;
    }


    if (ptm->tm_year < 70 || ptm->tm_year > 139)
    {
        return -1;
    }

    years = ptm->tm_year - 70;


    leapyears = (years + 1) / 4;


    time = years * 365 + leapyears;


    time += g_monthdays[ptm->tm_mon];


    if (((years + 2) % 4) == 0)
    {
        if (ptm->tm_mon > 2)
        {
            time++;
        }
    }

    time += ptm->tm_mday - 1;

    time *= 24;
    time += ptm->tm_hour;

    time *= 60;
    time += ptm->tm_min;

    time *= 60;
    time += ptm->tm_sec;

    if (time < 0)
    {
        return -1;
    }


    ptm2 = _gmtime64(&time);
    if (!ptm2)
    {
        return -1;
    }
    *ptm = *ptm2;


    ret = GetTimeZoneInformation(&tzi);
    if (ret != TIME_ZONE_ID_INVALID)
    {
        time += tzi.Bias * 60;
    }

    return time;
}
