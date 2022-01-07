
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* decimal_point; } ;
typedef TYPE_1__ _Locale_monetary_t ;



char _Locale_mon_decimal_point(_Locale_monetary_t * lmon)
{ return lmon->decimal_point[0]; }
