
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_buffer {int * next; scalar_t__ sz; } ;
struct wb_list {int * tail; int * head; } ;
struct socket_server {int dummy; } ;
struct socket {int wb_size; } ;


 int write_buffer_free (struct socket_server*,struct write_buffer*) ;

__attribute__((used)) static void
drop_udp(struct socket_server *ss, struct socket *s, struct wb_list *list, struct write_buffer *tmp) {
 s->wb_size -= tmp->sz;
 list->head = tmp->next;
 if (list->head == ((void*)0))
  list->tail = ((void*)0);
 write_buffer_free(ss,tmp);
}
