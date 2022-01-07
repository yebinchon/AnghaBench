
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union sockaddr_all {int s; } ;
struct write_buffer {struct write_buffer* next; scalar_t__ sz; int ptr; int udp_address; } ;
struct wb_list {int * tail; struct write_buffer* head; } ;
struct socket_server {int dummy; } ;
struct socket_message {int dummy; } ;
struct socket {int id; int wb_size; int fd; } ;
typedef scalar_t__ socklen_t ;




 int drop_udp (struct socket_server*,struct socket*,struct wb_list*,struct write_buffer*) ;
 int errno ;
 int fprintf (int ,char*,int,...) ;
 int sendto (int ,int ,scalar_t__,int ,int *,scalar_t__) ;
 int stat_write (struct socket_server*,struct socket*,scalar_t__) ;
 int stderr ;
 char* strerror (int) ;
 scalar_t__ udp_socket_address (struct socket*,int ,union sockaddr_all*) ;
 int write_buffer_free (struct socket_server*,struct write_buffer*) ;

__attribute__((used)) static int
send_list_udp(struct socket_server *ss, struct socket *s, struct wb_list *list, struct socket_message *result) {
 while (list->head) {
  struct write_buffer * tmp = list->head;
  union sockaddr_all sa;
  socklen_t sasz = udp_socket_address(s, tmp->udp_address, &sa);
  if (sasz == 0) {
   fprintf(stderr, "socket-server : udp (%d) type mismatch.\n", s->id);
   drop_udp(ss, s, list, tmp);
   return -1;
  }
  int err = sendto(s->fd, tmp->ptr, tmp->sz, 0, &sa.s, sasz);
  if (err < 0) {
   switch(errno) {
   case 128:
   case 129:
    return -1;
   }
   fprintf(stderr, "socket-server : udp (%d) sendto error %s.\n",s->id, strerror(errno));
   drop_udp(ss, s, list, tmp);
   return -1;
  }
  stat_write(ss,s,tmp->sz);
  s->wb_size -= tmp->sz;
  list->head = tmp->next;
  write_buffer_free(ss,tmp);
 }
 list->tail = ((void*)0);

 return -1;
}
