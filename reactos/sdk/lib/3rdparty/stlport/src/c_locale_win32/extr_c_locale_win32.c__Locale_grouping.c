
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* grouping; } ;
typedef TYPE_1__ _Locale_numeric_t ;



const char* _Locale_grouping(_Locale_numeric_t * lnum) {
  if (!lnum->grouping) return "";
  else return lnum->grouping;
}
