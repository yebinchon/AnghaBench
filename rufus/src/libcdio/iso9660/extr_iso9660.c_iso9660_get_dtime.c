
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct tm {scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; int tm_isdst; scalar_t__ tm_zone; } ;
struct TYPE_3__ {scalar_t__ dt_year; scalar_t__ dt_month; scalar_t__ dt_day; scalar_t__ dt_hour; scalar_t__ dt_minute; scalar_t__ dt_second; int dt_gmtoff; } ;
typedef TYPE_1__ iso9660_dtime_t ;


 int gmtime_r (int *,struct tm*) ;
 int localtime_r (int *,struct tm*) ;
 int memcpy (struct tm*,struct tm*,int) ;
 int memset (struct tm*,int ,int) ;
 int timegm (struct tm*) ;

bool
iso9660_get_dtime (const iso9660_dtime_t *idr_date, bool b_localtime,
                           struct tm *p_tm)
{
  if (!idr_date) return 0;
  if ( 0 == idr_date->dt_year && 0 == idr_date->dt_month &&
       0 == idr_date->dt_day && 0 == idr_date->dt_hour &&
       0 == idr_date->dt_minute && 0 == idr_date->dt_second ) {
    time_t t = 0;
    struct tm temp_tm;
    localtime_r(&t, &temp_tm);

    memcpy(p_tm, &temp_tm, sizeof(struct tm));
    return 1;
  }

  memset(p_tm, 0, sizeof(struct tm));

  p_tm->tm_year = idr_date->dt_year;
  p_tm->tm_mon = idr_date->dt_month - 1;
  p_tm->tm_mday = idr_date->dt_day;
  p_tm->tm_hour = idr_date->dt_hour;
  p_tm->tm_min = idr_date->dt_minute;
  p_tm->tm_sec = idr_date->dt_second - idr_date->dt_gmtoff * (15 * 60);
  p_tm->tm_isdst = -1;
  {
    time_t t = 0;
    struct tm temp_tm;

    t = timegm(p_tm);

    if (b_localtime)
      localtime_r(&t, &temp_tm);
    else
      gmtime_r(&t, &temp_tm);

    memcpy(p_tm, &temp_tm, sizeof(struct tm));
  }


  return 1;
}
