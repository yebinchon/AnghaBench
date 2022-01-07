
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* format_units (long double,int *,int ) ;
 int time_units_s ;

char *format_time_s(long double n) {
    return format_units(n, &time_units_s, 0);
}
