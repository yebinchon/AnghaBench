
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_server {int event_index; int event_n; struct event* ev; } ;
struct socket_message {int id; } ;
struct socket {scalar_t__ type; int id; } ;
struct event {struct socket* s; } ;


 int SOCKET_CLOSE ;
 int SOCKET_ERR ;
 scalar_t__ SOCKET_TYPE_INVALID ;

__attribute__((used)) static inline void
clear_closed_event(struct socket_server *ss, struct socket_message * result, int type) {
 if (type == SOCKET_CLOSE || type == SOCKET_ERR) {
  int id = result->id;
  int i;
  for (i=ss->event_index; i<ss->event_n; i++) {
   struct event *e = &ss->ev[i];
   struct socket *s = e->s;
   if (s) {
    if (s->type == SOCKET_TYPE_INVALID && s->id == id) {
     e->s = ((void*)0);
     break;
    }
   }
  }
 }
}
