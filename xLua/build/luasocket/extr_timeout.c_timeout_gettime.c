
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timezone {int dummy; } ;
struct timeval {double tv_sec; double tv_usec; } ;


 int gettimeofday (struct timeval*,struct timezone*) ;

double timeout_gettime(void) {
    struct timeval v;
    gettimeofday(&v, (struct timezone *) ((void*)0));

    return v.tv_sec + v.tv_usec/1.0e6;
}
