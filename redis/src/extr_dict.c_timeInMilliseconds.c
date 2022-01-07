
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;


 int gettimeofday (struct timeval*,int *) ;

long long timeInMilliseconds(void) {
    struct timeval tv;

    gettimeofday(&tv,((void*)0));
    return (((long long)tv.tv_sec)*1000)+(tv.tv_usec/1000);
}
