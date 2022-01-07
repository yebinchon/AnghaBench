
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct tm {int tm_isdst; int tm_sec; int tm_gmtoff; scalar_t__ tm_zone; } ;
struct TYPE_3__ {int lt_gmtoff; } ;
typedef TYPE_1__ iso9660_ltime_t ;


 int localtime_r (int *,struct tm*) ;
 int lt_day ;
 int lt_hour ;
 int lt_minute ;
 int lt_month ;
 int lt_second ;
 int lt_year ;
 int memcpy (struct tm*,struct tm*,int) ;
 int memset (struct tm*,int ,int) ;
 int mktime (struct tm*) ;
 int set_ltime_field (int ,int ,int) ;
 int tm_hour ;
 int tm_mday ;
 int tm_min ;
 int tm_mon ;
 int tm_sec ;
 int tm_year ;

bool
iso9660_get_ltime (const iso9660_ltime_t *p_ldate,
                           struct tm *p_tm)
{
  if (!p_tm) return 0;
  memset(p_tm, 0, sizeof(struct tm));
  set_ltime_field(tm_year, lt_year, -1900);
  set_ltime_field(tm_mon, lt_month, -1);
  set_ltime_field(tm_mday, lt_day, 0);
  set_ltime_field(tm_hour, lt_hour, 0);
  set_ltime_field(tm_min, lt_minute, 0);
  set_ltime_field(tm_sec, lt_second, 0);
  p_tm->tm_isdst= -1;

  p_tm->tm_sec += p_ldate->lt_gmtoff * (15 * 60);
  {
    time_t t;
    struct tm temp_tm;

    t = mktime(p_tm);

    localtime_r(&t, &temp_tm);

    memcpy(p_tm, &temp_tm, sizeof(struct tm));
  }
  p_tm->tm_isdst= -1;



  return 1;
}
