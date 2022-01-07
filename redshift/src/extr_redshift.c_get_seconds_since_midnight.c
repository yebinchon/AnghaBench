
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_sec; int tm_min; int tm_hour; } ;


 int localtime_r (int *,struct tm*) ;

__attribute__((used)) static int
get_seconds_since_midnight(double timestamp)
{
 time_t t = (time_t)timestamp;
 struct tm tm;
 localtime_r(&t, &tm);
 return tm.tm_sec + tm.tm_min * 60 + tm.tm_hour * 3600;
}
