
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct socket_server {int event_fd; } ;
struct socket_message {int * data; scalar_t__ ud; int id; int opaque; } ;
struct socket_lock {int dummy; } ;
struct TYPE_3__ {int * head; } ;
struct socket {scalar_t__ wb_size; scalar_t__ type; scalar_t__ warn_size; int id; int opaque; int fd; TYPE_1__ low; TYPE_1__ high; } ;


 scalar_t__ SOCKET_CLOSE ;
 scalar_t__ SOCKET_TYPE_HALFCLOSE ;
 int SOCKET_WARNING ;
 int assert (int) ;
 int force_close (struct socket_server*,struct socket*,struct socket_lock*,struct socket_message*) ;
 scalar_t__ list_uncomplete (TYPE_1__*) ;
 int raise_uncomplete (struct socket*) ;
 scalar_t__ send_buffer_empty (struct socket*) ;
 scalar_t__ send_list (struct socket_server*,struct socket*,TYPE_1__*,struct socket_lock*,struct socket_message*) ;
 int sp_write (int ,int ,struct socket*,int) ;

__attribute__((used)) static int
send_buffer_(struct socket_server *ss, struct socket *s, struct socket_lock *l, struct socket_message *result) {
 assert(!list_uncomplete(&s->low));

 if (send_list(ss,s,&s->high,l,result) == SOCKET_CLOSE) {
  return SOCKET_CLOSE;
 }
 if (s->high.head == ((void*)0)) {

  if (s->low.head != ((void*)0)) {
   if (send_list(ss,s,&s->low,l,result) == SOCKET_CLOSE) {
    return SOCKET_CLOSE;
   }

   if (list_uncomplete(&s->low)) {
    raise_uncomplete(s);
    return -1;
   }
   if (s->low.head)
    return -1;
  }

  assert(send_buffer_empty(s) && s->wb_size == 0);
  sp_write(ss->event_fd, s->fd, s, 0);

  if (s->type == SOCKET_TYPE_HALFCLOSE) {
    force_close(ss, s, l, result);
    return SOCKET_CLOSE;
  }
  if(s->warn_size > 0){
    s->warn_size = 0;
    result->opaque = s->opaque;
    result->id = s->id;
    result->ud = 0;
    result->data = ((void*)0);
    return SOCKET_WARNING;
  }
 }

 return -1;
}
