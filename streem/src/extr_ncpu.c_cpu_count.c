
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _SC_NPROCESSORS_ONLN ;
 scalar_t__ sysconf (int ) ;

int
cpu_count()
{
  return (int)sysconf(_SC_NPROCESSORS_ONLN);
}
