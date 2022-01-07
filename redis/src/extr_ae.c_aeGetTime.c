
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_sec; int tv_usec; } ;


 int gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static void aeGetTime(long *seconds, long *milliseconds)
{
    struct timeval tv;

    gettimeofday(&tv, ((void*)0));
    *seconds = tv.tv_sec;
    *milliseconds = tv.tv_usec/1000;
}
