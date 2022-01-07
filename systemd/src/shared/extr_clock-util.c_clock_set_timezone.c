
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_gmtoff; } ;
struct timezone {int tz_minuteswest; scalar_t__ tz_dsttime; } ;
struct timeval {int dummy; } ;
struct timespec {int tv_sec; } ;


 int CLOCK_REALTIME ;
 int assert_se (int) ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 int localtime_r (int *,struct tm*) ;
 int negative_errno () ;
 scalar_t__ settimeofday (struct timeval const*,struct timezone*) ;

int clock_set_timezone(int *min) {
        const struct timeval *tv_null = ((void*)0);
        struct timespec ts;
        struct tm tm;
        int minutesdelta;
        struct timezone tz;

        assert_se(clock_gettime(CLOCK_REALTIME, &ts) == 0);
        assert_se(localtime_r(&ts.tv_sec, &tm));
        minutesdelta = tm.tm_gmtoff / 60;

        tz.tz_minuteswest = -minutesdelta;
        tz.tz_dsttime = 0;







        if (settimeofday(tv_null, &tz) < 0)
                return negative_errno();

        if (min)
                *min = minutesdelta;
        return 0;
}
