
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* decimal_point; } ;
typedef TYPE_1__ _Locale_numeric_t ;



char _Locale_decimal_point(_Locale_numeric_t* lnum)
{ return lnum->decimal_point[0]; }
