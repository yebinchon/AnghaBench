
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int metric_units ;
 int scan_units (char*,int *,int *) ;

int scan_metric(char *s, uint64_t *n) {
    return scan_units(s, n, &metric_units);
}
