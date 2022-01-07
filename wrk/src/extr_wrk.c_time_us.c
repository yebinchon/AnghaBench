
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;


 int gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static uint64_t time_us() {
    struct timeval t;
    gettimeofday(&t, ((void*)0));
    return (t.tv_sec * 1000000) + t.tv_usec;
}
