
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;


 scalar_t__ gettimeofday (struct timeval*,int *) ;

double gettime(void)
{
 struct timeval tv;
 if(gettimeofday(&tv, ((void*)0))<0) return 0.0;
 else return (double)tv.tv_sec+((double)tv.tv_usec/1000000.);
}
