
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct TYPE_3__ {int lt_gmtoff; } ;
typedef TYPE_1__ iso9660_ltime_t ;
typedef int iso712_t ;


 int cdio_warn (char*,int) ;
 int memset (char*,int,int) ;
 int snprintf (char*,int,char*,int,int,int,int,int,int ,int ) ;

void
iso9660_set_ltime_with_timezone(const struct tm *p_tm,
                                int time_zone,
                                        iso9660_ltime_t *pvd_date)
{
  char *_pvd_date = (char *) pvd_date;

  memset (_pvd_date, (int) '0', 16);
  pvd_date->lt_gmtoff = (iso712_t) 0;

  if (!p_tm) return;

  snprintf(_pvd_date, 17,
           "%4.4d%2.2d%2.2d" "%2.2d%2.2d%2.2d" "%2.2d",
           p_tm->tm_year + 1900, p_tm->tm_mon + 1, p_tm->tm_mday,
           p_tm->tm_hour, p_tm->tm_min, p_tm->tm_sec,
           0 );


  pvd_date->lt_gmtoff -= (time_zone / 15);
  if (pvd_date->lt_gmtoff < -48 ) {

    cdio_warn ("Converted ISO 9660 timezone %d is less than -48. Adjusted",
               (int) pvd_date->lt_gmtoff);
    pvd_date->lt_gmtoff = -48;
  } else if (pvd_date->lt_gmtoff > 52) {
    cdio_warn ("Converted ISO 9660 timezone %d is over 52. Adjusted",
               (int) pvd_date->lt_gmtoff);
    pvd_date->lt_gmtoff = 52;
  }
}
