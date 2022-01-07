
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {double tv_usec; scalar_t__ tv_sec; } ;
typedef scalar_t__ TimeType ;


 int QueryPerformanceCounter (scalar_t__*) ;
 int gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static TimeType torch_Timer_realtime()
{





  struct timeval current;
  gettimeofday(&current, ((void*)0));
  return (current.tv_sec + current.tv_usec/1000000.0);

}
