
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message_queue {int overload; } ;



int
skynet_mq_overload(struct message_queue *q) {
 if (q->overload) {
  int overload = q->overload;
  q->overload = 0;
  return overload;
 }
 return 0;
}
