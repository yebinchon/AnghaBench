
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_gmtoff; scalar_t__ tm_isdst; } ;
typedef int iso9660_ltime_t ;


 int iso9660_set_ltime_with_timezone (struct tm const*,int,int *) ;

void
iso9660_set_ltime(const struct tm *p_tm, iso9660_ltime_t *pvd_date)
{
  int time_zone = 0;
  if (p_tm) {




    time_zone = (p_tm->tm_isdst > 0) ? -60 : 0;

  }
  iso9660_set_ltime_with_timezone (p_tm, time_zone, pvd_date);
}
