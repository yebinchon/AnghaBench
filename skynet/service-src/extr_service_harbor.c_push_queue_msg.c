
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct harbor_msg_queue {int tail; int size; int head; struct harbor_msg* data; } ;
struct harbor_msg {int dummy; } ;


 int skynet_free (struct harbor_msg*) ;
 struct harbor_msg* skynet_malloc (int) ;

__attribute__((used)) static void
push_queue_msg(struct harbor_msg_queue * queue, struct harbor_msg * m) {


 if (((queue->tail + 1) % queue->size) == queue->head) {
  struct harbor_msg * new_buffer = skynet_malloc(queue->size * 2 * sizeof(struct harbor_msg));
  int i;
  for (i=0;i<queue->size-1;i++) {
   new_buffer[i] = queue->data[(i+queue->head) % queue->size];
  }
  skynet_free(queue->data);
  queue->data = new_buffer;
  queue->head = 0;
  queue->tail = queue->size - 1;
  queue->size *= 2;
 }
 struct harbor_msg * slot = &queue->data[queue->tail];
 *slot = *m;
 queue->tail = (queue->tail + 1) % queue->size;
}
