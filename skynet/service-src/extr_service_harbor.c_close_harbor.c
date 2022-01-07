
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slave {int * queue; scalar_t__ fd; int status; } ;
struct harbor {int ctx; struct slave* s; } ;


 int STATUS_DOWN ;
 int release_queue (int *) ;
 int skynet_socket_close (int ,scalar_t__) ;

__attribute__((used)) static void
close_harbor(struct harbor *h, int id) {
 struct slave *s = &h->s[id];
 s->status = STATUS_DOWN;
 if (s->fd) {
  skynet_socket_close(h->ctx, s->fd);
 }
 if (s->queue) {
  release_queue(s->queue);
  s->queue = ((void*)0);
 }
}
