
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hrtime_t ;


 int NANOSEC ;
 int sprintf (char*,char*,int,...) ;

void
print_time(hrtime_t t, char *timebuf)
{
 hrtime_t s = t / NANOSEC;
 hrtime_t m = s / 60;
 hrtime_t h = m / 60;
 hrtime_t d = h / 24;

 s -= m * 60;
 m -= h * 60;
 h -= d * 24;

 timebuf[0] = '\0';

 if (d)
  (void) sprintf(timebuf,
      "%llud%02lluh%02llum%02llus", d, h, m, s);
 else if (h)
  (void) sprintf(timebuf, "%lluh%02llum%02llus", h, m, s);
 else if (m)
  (void) sprintf(timebuf, "%llum%02llus", m, s);
 else
  (void) sprintf(timebuf, "%llus", s);
}
