
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int clock_t ;
struct TYPE_3__ {int QuadPart; } ;
typedef TYPE_1__ ULARGE_INTEGER ;
struct TYPE_4__ {scalar_t__ QuadPart; } ;
typedef int FILETIME ;


 int FileTimeToUnixTime (int *,int *) ;
 int GetSystemTimeAsFileTime (int *) ;
 TYPE_2__ g_StartupTime ;

clock_t
clock(void)
{
    ULARGE_INTEGER Time;

    GetSystemTimeAsFileTime((FILETIME*)&Time);
    Time.QuadPart -= g_StartupTime.QuadPart;
    return (clock_t)FileTimeToUnixTime((FILETIME*)&Time, ((void*)0));
}
