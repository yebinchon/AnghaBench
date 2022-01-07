
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer {int dummy; } ;


 int SPIN_LOCK (struct timer*) ;
 int SPIN_UNLOCK (struct timer*) ;
 int timer_execute (struct timer*) ;
 int timer_shift (struct timer*) ;

__attribute__((used)) static void
timer_update(struct timer *T) {
 SPIN_LOCK(T);


 timer_execute(T);


 timer_shift(T);

 timer_execute(T);

 SPIN_UNLOCK(T);
}
