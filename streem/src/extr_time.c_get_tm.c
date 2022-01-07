
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 int gmtime_r (int*,struct tm*) ;

__attribute__((used)) static void
get_tm(time_t t, int utc_offset, struct tm* tm)
{
  t += utc_offset;
  gmtime_r(&t, tm);
}
