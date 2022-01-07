
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef int int64_t ;


 scalar_t__ GetTickCount () ;
 int gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static int64_t get_current_time(void)
{



 struct timeval now;
 gettimeofday(&now, ((void*)0));
 return (int64_t)now.tv_sec*1000 + now.tv_usec/1000;

}
