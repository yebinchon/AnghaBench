
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {double tv_sec; double tv_usec; } ;



double
timeval_to_num(struct timeval* tv)
{
  double d = tv->tv_sec;

  return d+(tv->tv_usec)/1000000.0;
}
