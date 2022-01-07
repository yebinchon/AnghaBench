
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_server {int event_fd; int recvctrl_fd; int sendctrl_fd; struct socket* slot; } ;
struct socket_message {int dummy; } ;
struct socket_lock {int dummy; } ;
struct socket {scalar_t__ type; int dw_lock; } ;


 int FREE (struct socket_server*) ;
 int MAX_SOCKET ;
 scalar_t__ SOCKET_TYPE_RESERVE ;
 int close (int ) ;
 int force_close (struct socket_server*,struct socket*,struct socket_lock*,struct socket_message*) ;
 int socket_lock_init (struct socket*,struct socket_lock*) ;
 int sp_release (int ) ;
 int spinlock_destroy (int *) ;

void
socket_server_release(struct socket_server *ss) {
 int i;
 struct socket_message dummy;
 for (i=0;i<MAX_SOCKET;i++) {
  struct socket *s = &ss->slot[i];
  struct socket_lock l;
  socket_lock_init(s, &l);
  if (s->type != SOCKET_TYPE_RESERVE) {
   force_close(ss, s, &l, &dummy);
  }
  spinlock_destroy(&s->dw_lock);
 }
 close(ss->sendctrl_fd);
 close(ss->recvctrl_fd);
 sp_release(ss->event_fd);
 FREE(ss);
}
