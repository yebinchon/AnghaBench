
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_node {scalar_t__ expire; } ;
struct timer {scalar_t__ time; } ;


 int SPIN_LOCK (struct timer*) ;
 int SPIN_UNLOCK (struct timer*) ;
 int add_node (struct timer*,struct timer_node*) ;
 int memcpy (struct timer_node*,void*,size_t) ;
 scalar_t__ skynet_malloc (int) ;

__attribute__((used)) static void
timer_add(struct timer *T,void *arg,size_t sz,int time) {
 struct timer_node *node = (struct timer_node *)skynet_malloc(sizeof(*node)+sz);
 memcpy(node+1,arg,sz);

 SPIN_LOCK(T);

  node->expire=time+T->time;
  add_node(T,node);

 SPIN_UNLOCK(T);
}
