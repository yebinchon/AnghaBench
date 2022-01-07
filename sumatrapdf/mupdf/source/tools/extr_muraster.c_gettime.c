
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;


 int gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static int gettime(void)
{
 static struct timeval first;
 static int once = 1;
 struct timeval now;
 if (once)
 {
  gettimeofday(&first, ((void*)0));
  once = 0;
 }
 gettimeofday(&now, ((void*)0));
 return (now.tv_sec - first.tv_sec) * 1000 + (now.tv_usec - first.tv_usec) / 1000;
}
