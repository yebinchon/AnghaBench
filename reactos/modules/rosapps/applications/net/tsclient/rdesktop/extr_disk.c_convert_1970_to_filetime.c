
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint32 ;
typedef scalar_t__ time_t ;



__attribute__((used)) static time_t
convert_1970_to_filetime(uint32 high, uint32 low)
{
 unsigned long long ticks;
 time_t val;

 ticks = low + (((unsigned long long) high) << 32);
 ticks /= 10000000;
 ticks -= 11644473600LL;

 val = (time_t) ticks;
 return (val);

}
