
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ write (int,char*,int) ;

void print_backtrace (void) {
  if (write (1, "No libexec. Backtrace disabled\n", 32) < 0) {

  }
}
