
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int binary_units ;
 char* format_units (long double,int *,int) ;

char *format_binary(long double n) {
    return format_units(n, &binary_units, 2);
}
