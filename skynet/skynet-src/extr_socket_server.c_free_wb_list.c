
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_buffer {struct write_buffer* next; } ;
struct wb_list {int * tail; struct write_buffer* head; } ;
struct socket_server {int dummy; } ;


 int write_buffer_free (struct socket_server*,struct write_buffer*) ;

__attribute__((used)) static void
free_wb_list(struct socket_server *ss, struct wb_list *list) {
 struct write_buffer *wb = list->head;
 while (wb) {
  struct write_buffer *tmp = wb;
  wb = wb->next;
  write_buffer_free(ss, tmp);
 }
 list->head = ((void*)0);
 list->tail = ((void*)0);
}
