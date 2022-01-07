
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_buffer {struct write_buffer* next; } ;
struct wb_list {struct write_buffer* tail; struct write_buffer* head; } ;
struct socket {struct wb_list high; struct wb_list low; } ;


 int assert (int ) ;

__attribute__((used)) static void
raise_uncomplete(struct socket * s) {
 struct wb_list *low = &s->low;
 struct write_buffer *tmp = low->head;
 low->head = tmp->next;
 if (low->head == ((void*)0)) {
  low->tail = ((void*)0);
 }


 struct wb_list *high = &s->high;
 assert(high->head == ((void*)0));

 tmp->next = ((void*)0);
 high->head = high->tail = tmp;
}
