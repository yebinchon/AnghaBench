
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct harbor_msg_queue {struct harbor_msg_queue* data; } ;
struct harbor_msg {struct harbor_msg_queue* buffer; } ;


 struct harbor_msg* pop_queue (struct harbor_msg_queue*) ;
 int skynet_free (struct harbor_msg_queue*) ;

__attribute__((used)) static void
release_queue(struct harbor_msg_queue *queue) {
 if (queue == ((void*)0))
  return;
 struct harbor_msg * m;
 while ((m=pop_queue(queue)) != ((void*)0)) {
  skynet_free(m->buffer);
 }
 skynet_free(queue->data);
 skynet_free(queue);
}
