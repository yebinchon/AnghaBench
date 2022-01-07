
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_node {struct timer_node* next; } ;
struct link_list {struct timer_node* tail; } ;



__attribute__((used)) static inline void
link(struct link_list *list,struct timer_node *node) {
 list->tail->next = node;
 list->tail = node;
 node->next=0;
}
