
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct tm {int tm_sec; int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; } ;
struct FatTime {int whole; } ;
struct TYPE_2__ {int member_0; int member_5; int member_4; int member_3; int member_2; int member_1; } ;
typedef int DWORD ;


 struct tm* localtime (int *) ;
 int time (int *) ;

DWORD get_fattime(void)
{



    time_t rawtime;
    struct tm * timeinfo;

    time(&rawtime);
    timeinfo = localtime(&rawtime);

    {
    union FatTime {
        struct {
            DWORD Second : 5;
            DWORD Minute : 6;
            DWORD Hour : 5;
            DWORD Day : 5;
            DWORD Month : 4;
            DWORD Year : 7;
        };
        DWORD whole;
    } myTime = {
        {
            timeinfo->tm_sec / 2,
            timeinfo->tm_min,
            timeinfo->tm_hour,
            timeinfo->tm_mday,
            timeinfo->tm_mon + 1,
            timeinfo->tm_year - 80,
        }
    };

    return myTime.whole;
    }
}
