
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;


 int CLOCK_REALTIME ;
 int clock_gettime (int ,struct timespec*) ;
 int gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static void
systime(uint32_t *sec, uint32_t *cs) {

 struct timespec ti;
 clock_gettime(CLOCK_REALTIME, &ti);
 *sec = (uint32_t)ti.tv_sec;
 *cs = (uint32_t)(ti.tv_nsec / 10000000);






}
