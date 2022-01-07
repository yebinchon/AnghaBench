
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_node {int dummy; } ;
struct timer {int time; TYPE_2__* near; } ;
struct TYPE_3__ {scalar_t__ next; } ;
struct TYPE_4__ {TYPE_1__ head; } ;


 int SPIN_LOCK (struct timer*) ;
 int SPIN_UNLOCK (struct timer*) ;
 int TIME_NEAR_MASK ;
 int dispatch_list (struct timer_node*) ;
 struct timer_node* link_clear (TYPE_2__*) ;

__attribute__((used)) static inline void
timer_execute(struct timer *T) {
 int idx = T->time & TIME_NEAR_MASK;

 while (T->near[idx].head.next) {
  struct timer_node *current = link_clear(&T->near[idx]);
  SPIN_UNLOCK(T);

  dispatch_list(current);
  SPIN_LOCK(T);
 }
}
