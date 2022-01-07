
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct tm {int tm_isdst; } ;


 scalar_t__ _dstbias ;
 scalar_t__ _isdstime (scalar_t__) ;
 scalar_t__ _timezone ;
 int _tz_is_set ;
 int _tzset () ;
 struct tm* gmtime (scalar_t__*) ;

struct tm *
localtime(const time_t *ptime)
{
    time_t time = *ptime;
    struct tm * ptm;


    if (time < 0)
    {
        return 0;
    }


    if (!_tz_is_set)
        _tzset();




    time -= _timezone;
    ptm = gmtime(&time);

    return ptm;
}
