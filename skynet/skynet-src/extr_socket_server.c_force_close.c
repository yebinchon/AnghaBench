
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_server {int event_fd; } ;
struct socket_sendbuffer {scalar_t__ sz; int type; int id; int * buffer; } ;
struct socket_message {int opaque; int * data; scalar_t__ ud; int id; } ;
struct socket_lock {int dummy; } ;
struct socket {scalar_t__ type; scalar_t__ dw_size; int * dw_buffer; int id; int fd; int low; int high; int opaque; } ;


 int SOCKET_BUFFER_MEMORY ;
 int SOCKET_BUFFER_OBJECT ;
 scalar_t__ SOCKET_TYPE_BIND ;
 scalar_t__ SOCKET_TYPE_INVALID ;
 scalar_t__ SOCKET_TYPE_PACCEPT ;
 scalar_t__ SOCKET_TYPE_PLISTEN ;
 scalar_t__ SOCKET_TYPE_RESERVE ;
 scalar_t__ USEROBJECT ;
 int assert (int) ;
 scalar_t__ close (int ) ;
 int free_buffer (struct socket_server*,struct socket_sendbuffer*) ;
 int free_wb_list (struct socket_server*,int *) ;
 int perror (char*) ;
 int socket_lock (struct socket_lock*) ;
 int socket_unlock (struct socket_lock*) ;
 int sp_del (int ,int ) ;

__attribute__((used)) static void
force_close(struct socket_server *ss, struct socket *s, struct socket_lock *l, struct socket_message *result) {
 result->id = s->id;
 result->ud = 0;
 result->data = ((void*)0);
 result->opaque = s->opaque;
 if (s->type == SOCKET_TYPE_INVALID) {
  return;
 }
 assert(s->type != SOCKET_TYPE_RESERVE);
 free_wb_list(ss,&s->high);
 free_wb_list(ss,&s->low);
 if (s->type != SOCKET_TYPE_PACCEPT && s->type != SOCKET_TYPE_PLISTEN) {
  sp_del(ss->event_fd, s->fd);
 }
 socket_lock(l);
 if (s->type != SOCKET_TYPE_BIND) {
  if (close(s->fd) < 0) {
   perror("close socket:");
  }
 }
 s->type = SOCKET_TYPE_INVALID;
 if (s->dw_buffer) {
  struct socket_sendbuffer tmp;
  tmp.buffer = s->dw_buffer;
  tmp.sz = s->dw_size;
  tmp.id = s->id;
  tmp.type = (tmp.sz == USEROBJECT) ? SOCKET_BUFFER_OBJECT : SOCKET_BUFFER_MEMORY;
  free_buffer(ss, &tmp);
  s->dw_buffer = ((void*)0);
 }
 socket_unlock(l);
}
