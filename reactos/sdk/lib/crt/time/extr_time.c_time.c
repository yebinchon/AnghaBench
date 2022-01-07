
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int FILETIME ;


 scalar_t__ FileTimeToUnixTime (int *,int *) ;
 int GetSystemTimeAsFileTime (int *) ;

time_t _time(time_t* ptime)
{
    FILETIME SystemTime;
    time_t time = 0;

    GetSystemTimeAsFileTime(&SystemTime);
    time = (time_t)FileTimeToUnixTime(&SystemTime, ((void*)0));

    if (ptime)
    {
        *ptime = time;
    }
    return time;
}
