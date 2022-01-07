
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timezone {scalar_t__ tz_dsttime; scalar_t__ tz_minuteswest; } ;
struct timeval {int dummy; } ;


 int errno ;
 scalar_t__ settimeofday (struct timeval const*,struct timezone*) ;

int clock_reset_timewarp(void) {
        const struct timeval *tv_null = ((void*)0);
        struct timezone tz;

        tz.tz_minuteswest = 0;
        tz.tz_dsttime = 0;






        if (settimeofday(tv_null, &tz) < 0)
                return -errno;

        return 0;
}
