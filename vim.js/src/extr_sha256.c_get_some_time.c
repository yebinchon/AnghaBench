
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;


 int gettimeofday (struct timeval*,int *) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static unsigned int
get_some_time()
{







    return (unsigned int)time(((void*)0));

}
