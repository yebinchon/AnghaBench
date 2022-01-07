
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {unsigned int tv_sec; unsigned int tv_nsec; } ;


 int Sleep (unsigned int) ;
 int nanosleep (struct timespec*,int *) ;

void
systemtime_msleep(unsigned int msecs)
{

 struct timespec sleep;
 sleep.tv_sec = msecs / 1000;
 sleep.tv_nsec = (msecs % 1000)*1000000;
 nanosleep(&sleep, ((void*)0));



}
