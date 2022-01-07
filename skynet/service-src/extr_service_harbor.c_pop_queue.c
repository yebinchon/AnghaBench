
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct harbor_msg_queue {size_t head; size_t tail; int size; struct harbor_msg* data; } ;
struct harbor_msg {int dummy; } ;



__attribute__((used)) static struct harbor_msg *
pop_queue(struct harbor_msg_queue * queue) {
 if (queue->head == queue->tail) {
  return ((void*)0);
 }
 struct harbor_msg * slot = &queue->data[queue->head];
 queue->head = (queue->head + 1) % queue->size;
 return slot;
}
