
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int scan_units (char*,int *,int *) ;
 int time_units_s ;

int scan_time(char *s, uint64_t *n) {
    return scan_units(s, n, &time_units_s);
}
