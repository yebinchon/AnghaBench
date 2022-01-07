
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timeval {double tv_sec; double tv_usec; } ;
struct TYPE_6__ {double QuadPart; } ;
struct TYPE_5__ {scalar_t__ QuadPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;


 int QueryPerformanceCounter (TYPE_1__*) ;
 int QueryPerformanceFrequency (TYPE_2__*) ;
 int gettimeofday (struct timeval*,int *) ;
 TYPE_2__ ticksPerSecond ;

__attribute__((used)) static double real_time()
{
  struct timeval current;
  gettimeofday(&current, ((void*)0));
  return (current.tv_sec + current.tv_usec/1000000.0);

}
