
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_message {int dummy; } ;
struct message_queue {int cap; int head; int tail; struct skynet_message* queue; } ;


 int skynet_free (struct skynet_message*) ;
 struct skynet_message* skynet_malloc (int) ;

__attribute__((used)) static void
expand_queue(struct message_queue *q) {
 struct skynet_message *new_queue = skynet_malloc(sizeof(struct skynet_message) * q->cap * 2);
 int i;
 for (i=0;i<q->cap;i++) {
  new_queue[i] = q->queue[(q->head + i) % q->cap];
 }
 q->head = 0;
 q->tail = q->cap;
 q->cap *= 2;

 skynet_free(q->queue);
 q->queue = new_queue;
}
