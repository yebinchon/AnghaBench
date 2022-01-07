
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct bintime {int sec; int frac; } ;


 int abs_to_nanos (int ) ;
 int mach_absolute_time () ;

void binuptime(struct bintime *bt) {
  uint64_t ns;

  ns = abs_to_nanos(mach_absolute_time());

  bt->sec = (ns / 1000000000);
  bt->frac = (((ns % 1000000000) * (((uint64_t) 1 << 63) / 500000000)));
}
