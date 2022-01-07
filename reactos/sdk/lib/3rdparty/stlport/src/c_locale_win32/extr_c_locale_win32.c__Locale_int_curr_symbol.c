
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* int_curr_symbol; } ;
typedef TYPE_1__ _Locale_monetary_t ;



const char* _Locale_int_curr_symbol(_Locale_monetary_t * lmon)
{ return lmon->int_curr_symbol; }
