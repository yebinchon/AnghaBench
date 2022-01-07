
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct time {long tz; long sec; } ;



__attribute__((used)) static void
parse_timezone(struct time *time, const char *zone)
{
 long tz;

 tz = ('0' - zone[1]) * 60 * 60 * 10;
 tz += ('0' - zone[2]) * 60 * 60;
 tz += ('0' - zone[3]) * 60 * 10;
 tz += ('0' - zone[4]) * 60;

 if (zone[0] == '-')
  tz = -tz;

 time->tz = tz;
 time->sec -= tz;
}
