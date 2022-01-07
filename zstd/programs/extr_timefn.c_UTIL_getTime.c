
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UTIL_time_t ;


 scalar_t__ TIME_UTC ;
 int UTIL_TIME_INITIALIZER ;
 int abort () ;
 int perror (char*) ;
 scalar_t__ timespec_get (int *,scalar_t__) ;

UTIL_time_t UTIL_getTime(void)
{


    UTIL_time_t time = UTIL_TIME_INITIALIZER;
    if (timespec_get(&time, TIME_UTC) != TIME_UTC) {
        perror("timefn::timespec_get");
        abort();
    }
    return time;
}
