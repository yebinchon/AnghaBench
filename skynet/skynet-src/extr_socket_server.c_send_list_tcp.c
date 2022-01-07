
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_buffer {scalar_t__ sz; struct write_buffer* next; int ptr; } ;
struct wb_list {int * tail; struct write_buffer* head; } ;
struct socket_server {int dummy; } ;
struct socket_message {int dummy; } ;
struct socket_lock {int dummy; } ;
struct socket {int wb_size; int fd; } ;
typedef scalar_t__ ssize_t ;




 int SOCKET_CLOSE ;
 int errno ;
 int force_close (struct socket_server*,struct socket*,struct socket_lock*,struct socket_message*) ;
 int stat_write (struct socket_server*,struct socket*,int) ;
 scalar_t__ write (int ,int ,scalar_t__) ;
 int write_buffer_free (struct socket_server*,struct write_buffer*) ;

__attribute__((used)) static int
send_list_tcp(struct socket_server *ss, struct socket *s, struct wb_list *list, struct socket_lock *l, struct socket_message *result) {
 while (list->head) {
  struct write_buffer * tmp = list->head;
  for (;;) {
   ssize_t sz = write(s->fd, tmp->ptr, tmp->sz);
   if (sz < 0) {
    switch(errno) {
    case 128:
     continue;
    case 129:
     return -1;
    }
    force_close(ss,s,l,result);
    return SOCKET_CLOSE;
   }
   stat_write(ss,s,(int)sz);
   s->wb_size -= sz;
   if (sz != tmp->sz) {
    tmp->ptr += sz;
    tmp->sz -= sz;
    return -1;
   }
   break;
  }
  list->head = tmp->next;
  write_buffer_free(ss,tmp);
 }
 list->tail = ((void*)0);

 return -1;
}
