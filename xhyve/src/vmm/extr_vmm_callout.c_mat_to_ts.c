
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timespec {int tv_sec; int tv_nsec; } ;


 int abs_to_nanos (int) ;

__attribute__((used)) static inline void mat_to_ts(uint64_t mat, struct timespec *ts) {
  uint64_t ns;

  ns = abs_to_nanos(mat);

  ts->tv_sec = (ns / 1000000000);
  ts->tv_nsec = (ns % 1000000000);
}
