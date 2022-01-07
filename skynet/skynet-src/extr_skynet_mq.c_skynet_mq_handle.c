
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct message_queue {int handle; } ;



uint32_t
skynet_mq_handle(struct message_queue *q) {
 return q->handle;
}
