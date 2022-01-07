
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tm {int tm_sec; int tm_min; int tm_hour; int tm_mday; scalar_t__ tm_mon; int tm_year; } ;
struct TYPE_4__ {int dt_gmtoff; int dt_second; int dt_minute; int dt_hour; int dt_day; scalar_t__ dt_month; int dt_year; } ;
typedef TYPE_1__ iso9660_dtime_t ;


 int cdio_warn (char*,int) ;
 int memset (TYPE_1__*,int ,int) ;

void
iso9660_set_dtime_with_timezone (const struct tm *p_tm,
                                 int time_zone,
                                         iso9660_dtime_t *p_idr_date)
{
  memset (p_idr_date, 0, 7);

  if (!p_tm) return;

  p_idr_date->dt_year = p_tm->tm_year;
  p_idr_date->dt_month = p_tm->tm_mon + 1;
  p_idr_date->dt_day = p_tm->tm_mday;
  p_idr_date->dt_hour = p_tm->tm_hour;
  p_idr_date->dt_minute = p_tm->tm_min;
  p_idr_date->dt_second = p_tm->tm_sec;



  p_idr_date->dt_gmtoff = time_zone / 15;

  if (p_idr_date->dt_gmtoff < -48 ) {

    cdio_warn ("Converted ISO 9660 timezone %d is less than -48. Adjusted",
               p_idr_date->dt_gmtoff);
    p_idr_date->dt_gmtoff = -48;
  } else if (p_idr_date->dt_gmtoff > 52) {
    cdio_warn ("Converted ISO 9660 timezone %d is over 52. Adjusted",
               p_idr_date->dt_gmtoff);
    p_idr_date->dt_gmtoff = 52;
  }
}
