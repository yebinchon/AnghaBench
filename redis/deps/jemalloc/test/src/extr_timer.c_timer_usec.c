
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int t0; int t1; } ;
typedef TYPE_1__ timedelta_t ;
typedef int nstime_t ;


 int nstime_copy (int *,int *) ;
 int nstime_ns (int *) ;
 int nstime_subtract (int *,int *) ;

uint64_t
timer_usec(const timedelta_t *timer) {
 nstime_t delta;

 nstime_copy(&delta, &timer->t1);
 nstime_subtract(&delta, &timer->t0);
 return nstime_ns(&delta) / 1000;
}
