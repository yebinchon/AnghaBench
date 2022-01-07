
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int usec_t ;
typedef scalar_t__ time_t ;
struct tm {int dummy; } ;
struct TYPE_5__ {int utc; } ;
typedef TYPE_1__ CalendarSpec ;


 int EINVAL ;
 int USEC_PER_SEC ;
 int USEC_TIMESTAMP_FORMATTABLE_MAX ;
 int assert (TYPE_1__ const*) ;
 int assert_se (int ) ;
 int find_next (TYPE_1__ const*,struct tm*,int*) ;
 int localtime_or_gmtime_r (scalar_t__*,struct tm*,int ) ;
 scalar_t__ mktime_or_timegm (struct tm*,int ) ;

__attribute__((used)) static int calendar_spec_next_usec_impl(const CalendarSpec *spec, usec_t usec, usec_t *ret_next) {
        struct tm tm;
        time_t t;
        int r;
        usec_t tm_usec;

        assert(spec);

        if (usec > USEC_TIMESTAMP_FORMATTABLE_MAX)
                return -EINVAL;

        usec++;
        t = (time_t) (usec / USEC_PER_SEC);
        assert_se(localtime_or_gmtime_r(&t, &tm, spec->utc));
        tm_usec = usec % USEC_PER_SEC;

        r = find_next(spec, &tm, &tm_usec);
        if (r < 0)
                return r;

        t = mktime_or_timegm(&tm, spec->utc);
        if (t < 0)
                return -EINVAL;

        if (ret_next)
                *ret_next = (usec_t) t * USEC_PER_SEC + tm_usec;

        return 0;
}
