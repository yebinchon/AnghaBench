
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {double tv_sec; double tv_usec; } ;


 double floor (double) ;

void
num_to_timeval(double d, struct timeval* tv)
{
  double sec = floor(d);
  tv->tv_sec = sec;
  tv->tv_usec = (d-sec)*1000000;
}
