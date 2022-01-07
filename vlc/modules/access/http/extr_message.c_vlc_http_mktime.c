
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {char tm_mday; int tm_year; int tm_hour; int tm_min; int tm_sec; int tm_mon; } ;


 int EINVAL ;
 int errno ;
 int sscanf (char const*,char*,char*,char*,int*,int*,int*,int*) ;
 int strcmp (char*,int ) ;
 int timegm (struct tm*) ;
 int * vlc_http_months ;

__attribute__((used)) static time_t vlc_http_mktime(const char *str)
{
    struct tm tm;
    char mon[4];


    if (sscanf(str, "%*c%*c%*c, %2d %3s %4d %2d:%2d:%2d", &tm.tm_mday, mon,
               &tm.tm_year, &tm.tm_hour, &tm.tm_min, &tm.tm_sec) == 6

     || sscanf(str, "%*3s %3s %2d %2d:%2d:%2d %4d", mon, &tm.tm_mday,
               &tm.tm_hour, &tm.tm_min, &tm.tm_sec, &tm.tm_year) == 6)
        tm.tm_year -= 1900;

    else if (sscanf(str, "%*[^,], %2d-%3s-%2d %2d:%2d:%2d", &tm.tm_mday, mon,
                    &tm.tm_year, &tm.tm_hour, &tm.tm_min, &tm.tm_sec) == 6)
    {
        if (tm.tm_year <= 75)
            tm.tm_year += 100;
    }
    else
        goto error;

    for (tm.tm_mon = 0; tm.tm_mon < 12; tm.tm_mon++)
        if (!strcmp(mon, vlc_http_months[tm.tm_mon]))
            return timegm(&tm);
error:
    errno = EINVAL;
    return -1;
}
