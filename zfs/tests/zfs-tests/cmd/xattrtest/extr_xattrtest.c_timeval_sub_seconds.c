
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {double tv_sec; scalar_t__ tv_usec; } ;


 double USEC_PER_SEC ;
 int timeval_sub (struct timeval*,struct timeval*,struct timeval*) ;

__attribute__((used)) static double
timeval_sub_seconds(struct timeval *tv1, struct timeval *tv2)
{
 struct timeval delta;

 timeval_sub(&delta, tv1, tv2);
 return ((double)delta.tv_usec / USEC_PER_SEC + delta.tv_sec);
}
