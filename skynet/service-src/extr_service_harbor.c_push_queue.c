
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote_message_header {int dummy; } ;
struct harbor_msg_queue {int dummy; } ;
struct harbor_msg {size_t size; void* buffer; struct remote_message_header header; } ;


 int push_queue_msg (struct harbor_msg_queue*,struct harbor_msg*) ;

__attribute__((used)) static void
push_queue(struct harbor_msg_queue * queue, void * buffer, size_t sz, struct remote_message_header * header) {
 struct harbor_msg m;
 m.header = *header;
 m.buffer = buffer;
 m.size = sz;
 push_queue_msg(queue, &m);
}
