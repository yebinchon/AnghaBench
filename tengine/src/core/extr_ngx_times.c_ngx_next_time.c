
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_hour; int tm_min; int tm_sec; int tm_mday; } ;


 int mktime (struct tm*) ;
 int ngx_libc_localtime (int,struct tm*) ;
 int ngx_time () ;

time_t
ngx_next_time(time_t when)
{
    time_t now, next;
    struct tm tm;

    now = ngx_time();

    ngx_libc_localtime(now, &tm);

    tm.tm_hour = (int) (when / 3600);
    when %= 3600;
    tm.tm_min = (int) (when / 60);
    tm.tm_sec = (int) (when % 60);

    next = mktime(&tm);

    if (next == -1) {
        return -1;
    }

    if (next - now > 0) {
        return next;
    }

    tm.tm_mday++;



    next = mktime(&tm);

    if (next != -1) {
        return next;
    }

    return -1;
}
