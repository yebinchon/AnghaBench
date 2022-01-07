
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* format_units (long double,int *,int) ;
 int metric_units ;

char *format_metric(long double n) {
    return format_units(n, &metric_units, 2);
}
