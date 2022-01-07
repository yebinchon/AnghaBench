
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;
struct timespec {int tv_sec; int tv_nsec; } ;
typedef int int64_t ;


 int CLOCK_MONOTONIC ;
 int clock_gettime (int ,struct timespec*) ;
 int gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static int64_t
get_time() {

 struct timespec ti;
 clock_gettime(CLOCK_MONOTONIC, &ti);
 return (int64_t)1000000000 * ti.tv_sec + ti.tv_nsec;





}
