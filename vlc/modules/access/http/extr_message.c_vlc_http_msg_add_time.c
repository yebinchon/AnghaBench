
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct vlc_http_msg {int dummy; } ;
struct tm {size_t tm_wday; size_t tm_mon; int tm_sec; int tm_min; int tm_hour; scalar_t__ tm_year; int tm_mday; } ;


 int * gmtime_r (int const*,struct tm*) ;
 int * vlc_http_days ;
 int * vlc_http_months ;
 int vlc_http_msg_add_header (struct vlc_http_msg*,char const*,char*,int ,int ,int ,scalar_t__,int ,int ,int ) ;

int vlc_http_msg_add_time(struct vlc_http_msg *m, const char *hname,
                          const time_t *t)
{
    struct tm tm;

    if (gmtime_r(t, &tm) == ((void*)0))
        return -1;
    return vlc_http_msg_add_header(m, hname,
                                   "%s, %02d %s %04d %02d:%02d:%02d GMT",
                                   vlc_http_days[tm.tm_wday], tm.tm_mday,
                                   vlc_http_months[tm.tm_mon],
                                   1900 + tm.tm_year,
                                   tm.tm_hour, tm.tm_min, tm.tm_sec);
}
