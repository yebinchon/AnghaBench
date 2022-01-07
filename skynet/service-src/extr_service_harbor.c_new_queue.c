
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct harbor_msg_queue {int size; void* data; scalar_t__ tail; scalar_t__ head; } ;
struct harbor_msg {int dummy; } ;


 int DEFAULT_QUEUE_SIZE ;
 void* skynet_malloc (int) ;

__attribute__((used)) static struct harbor_msg_queue *
new_queue() {
 struct harbor_msg_queue * queue = skynet_malloc(sizeof(*queue));
 queue->size = DEFAULT_QUEUE_SIZE;
 queue->head = 0;
 queue->tail = 0;
 queue->data = skynet_malloc(DEFAULT_QUEUE_SIZE * sizeof(struct harbor_msg));

 return queue;
}
