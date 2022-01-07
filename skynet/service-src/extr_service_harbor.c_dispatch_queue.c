
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slave {int fd; struct harbor_msg_queue* queue; } ;
struct harbor_msg_queue {int dummy; } ;
struct harbor_msg {int buffer; int header; int size; } ;
struct harbor {int ctx; struct slave* s; } ;


 int assert (int) ;
 struct harbor_msg* pop_queue (struct harbor_msg_queue*) ;
 int release_queue (struct harbor_msg_queue*) ;
 int send_remote (int ,int,int ,int ,int *) ;
 int skynet_free (int ) ;

__attribute__((used)) static void
dispatch_queue(struct harbor *h, int id) {
 struct slave *s = &h->s[id];
 int fd = s->fd;
 assert(fd != 0);

 struct harbor_msg_queue *queue = s->queue;
 if (queue == ((void*)0))
  return;

 struct harbor_msg * m;
 while ((m = pop_queue(queue)) != ((void*)0)) {
  send_remote(h->ctx, fd, m->buffer, m->size, &m->header);
  skynet_free(m->buffer);
 }
 release_queue(queue);
 s->queue = ((void*)0);
}
