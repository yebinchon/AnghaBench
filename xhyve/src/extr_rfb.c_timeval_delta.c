
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef scalar_t__ int64_t ;



__attribute__((used)) static int64_t
timeval_delta(struct timeval *prev, struct timeval *now)
{
 int64_t n1, n2;
 n1 = now->tv_sec * 1000000 + now->tv_usec;
 n2 = prev->tv_sec * 1000000 + prev->tv_usec;
 return (n1 - n2);
}
