
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
typedef long long time_t ;



__attribute__((used)) static void
seconds_since_1970_to_filetime(time_t seconds, uint32 * high, uint32 * low)
{
 unsigned long long ticks;

 ticks = (seconds + 11644473600LL) * 10000000;
 *low = (uint32) ticks;
 *high = (uint32) (ticks >> 32);
}
