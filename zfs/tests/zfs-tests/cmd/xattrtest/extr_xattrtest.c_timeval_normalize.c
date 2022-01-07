
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef scalar_t__ suseconds_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;


 scalar_t__ USEC_PER_SEC ;

__attribute__((used)) static void
timeval_normalize(struct timeval *tv, time_t sec, suseconds_t usec)
{
 while (usec >= USEC_PER_SEC) {
  usec -= USEC_PER_SEC;
  sec++;
 }

 while (usec < 0) {
  usec += USEC_PER_SEC;
  sec--;
 }

 tv->tv_sec = sec;
 tv->tv_usec = usec;
}
