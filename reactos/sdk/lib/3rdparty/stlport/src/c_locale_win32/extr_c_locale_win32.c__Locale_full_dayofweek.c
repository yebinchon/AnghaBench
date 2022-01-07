
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dayofweek; } ;
typedef TYPE_1__ _Locale_time_t ;



const char * _Locale_full_dayofweek(_Locale_time_t * ltime, int day) {
  const char **names = (const char**)ltime->dayofweek;
  return names[day];
}
