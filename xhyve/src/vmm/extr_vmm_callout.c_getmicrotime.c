
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timeval {long tv_sec; int tv_usec; } ;


 int abs_to_nanos (int ) ;
 int mach_absolute_time () ;

void getmicrotime(struct timeval *tv) {
  uint64_t ns, sns;

  ns = abs_to_nanos(mach_absolute_time());

  sns = (ns / 1000000000);
  tv->tv_sec = (long) sns;
  tv->tv_usec = (int) ((ns - sns) / 1000);
}
