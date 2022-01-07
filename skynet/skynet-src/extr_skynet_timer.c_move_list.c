
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_node {struct timer_node* next; } ;
struct timer {int ** t; } ;


 int add_node (struct timer*,struct timer_node*) ;
 struct timer_node* link_clear (int *) ;

__attribute__((used)) static void
move_list(struct timer *T, int level, int idx) {
 struct timer_node *current = link_clear(&T->t[level][idx]);
 while (current) {
  struct timer_node *temp=current->next;
  add_node(T,current);
  current=temp;
 }
}
