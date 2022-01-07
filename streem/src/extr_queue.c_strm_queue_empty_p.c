
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strm_queue {scalar_t__ head; scalar_t__ tail; } ;



int
strm_queue_empty_p(struct strm_queue* q)
{
  if (q->head == q->tail) return 1;
  return 0;
}
