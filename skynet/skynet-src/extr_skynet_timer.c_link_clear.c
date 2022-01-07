
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_node {int dummy; } ;
struct TYPE_2__ {struct timer_node* next; } ;
struct link_list {TYPE_1__ head; TYPE_1__* tail; } ;



__attribute__((used)) static inline struct timer_node *
link_clear(struct link_list *list) {
 struct timer_node * ret = list->head.next;
 list->head.next = 0;
 list->tail = &(list->head);

 return ret;
}
