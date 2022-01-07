
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ month; } ;
typedef TYPE_1__ _Locale_time_t ;



const char * _Locale_full_monthname(_Locale_time_t * ltime, int month) {
  const char **names = (const char**)ltime->month;
  return names[month];
}
