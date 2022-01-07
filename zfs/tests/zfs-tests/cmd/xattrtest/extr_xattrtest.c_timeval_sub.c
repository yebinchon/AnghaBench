
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;


 int timeval_normalize (struct timeval*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
timeval_sub(struct timeval *delta, struct timeval *tv1, struct timeval *tv2)
{
 timeval_normalize(delta,
     tv1->tv_sec - tv2->tv_sec,
     tv1->tv_usec - tv2->tv_usec);
}
