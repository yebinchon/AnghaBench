
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int current_point; int current; int starttime; } ;


 TYPE_1__* TI ;
 int gettime () ;
 int systime (int *,int *) ;
 TYPE_1__* timer_create_timer () ;

void
skynet_timer_init(void) {
 TI = timer_create_timer();
 uint32_t current = 0;
 systime(&TI->starttime, &current);
 TI->current = current;
 TI->current_point = gettime();
}
