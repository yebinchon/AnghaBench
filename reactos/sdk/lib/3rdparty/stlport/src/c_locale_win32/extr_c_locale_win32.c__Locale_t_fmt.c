
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* time_format; } ;
typedef TYPE_1__ _Locale_time_t ;



const char* _Locale_t_fmt(_Locale_time_t* ltime)
{ return ltime->time_format; }
