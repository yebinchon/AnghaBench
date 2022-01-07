
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;


 int CLOCK_MONOTONIC ;
 int clock_gettime (int ,struct timespec*) ;
 int gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static uint64_t
gettime() {
 uint64_t t;

 struct timespec ti;
 clock_gettime(CLOCK_MONOTONIC, &ti);
 t = (uint64_t)ti.tv_sec * 100;
 t += ti.tv_nsec / 10000000;






 return t;
}
