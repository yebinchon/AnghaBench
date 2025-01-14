
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
typedef scalar_t__ uint16_t ;


 int static_sprintf (char*,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

char* TimestampToHumanReadable(uint64_t ts)
{
 uint64_t rem = ts, divisor = 10000000000ULL;
 uint16_t data[6];
 int i;
 static char str[64];

 for (i = 0; i < 6; i++) {
  data[i] = (uint16_t) ((divisor == 0)?rem:(rem / divisor));
  rem %= divisor;
  divisor /= 100ULL;
 }
 static_sprintf(str, "%04d.%02d.%02d %02d:%02d:%02d (UTC)", data[0], data[1], data[2], data[3], data[4], data[5]);
 return str;
}
