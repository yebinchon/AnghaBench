
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timespec {int tv_nsec; } ;


 int CLOCK_MONOTONIC ;
 int clock_gettime (int ,struct timespec*) ;

__attribute__((used)) static uint32_t get_current_time_msec(void) {
 struct timespec now;
 clock_gettime(CLOCK_MONOTONIC, &now);
 return now.tv_nsec / 1000;
}
