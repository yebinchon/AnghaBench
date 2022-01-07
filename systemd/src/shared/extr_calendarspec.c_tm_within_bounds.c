
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;


 int ERANGE ;
 scalar_t__ MAX_YEAR ;
 int assert (struct tm*) ;
 scalar_t__ mktime_or_timegm (struct tm*,int) ;
 int negative_errno () ;

__attribute__((used)) static int tm_within_bounds(struct tm *tm, bool utc) {
        struct tm t;
        assert(tm);






        if (tm->tm_year + 1900 > MAX_YEAR)
                return -ERANGE;

        t = *tm;
        if (mktime_or_timegm(&t, utc) < 0)
                return negative_errno();


        bool good = t.tm_year == tm->tm_year &&
                    t.tm_mon == tm->tm_mon &&
                    t.tm_mday == tm->tm_mday &&
                    t.tm_hour == tm->tm_hour &&
                    t.tm_min == tm->tm_min &&
                    t.tm_sec == tm->tm_sec;
        if (!good)
                *tm = t;
        return good;
}
