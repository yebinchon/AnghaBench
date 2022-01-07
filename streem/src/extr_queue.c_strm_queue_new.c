
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strm_queue_node {int * next; } ;
struct strm_queue {struct strm_queue_node* head; struct strm_queue_node* tail; } ;


 scalar_t__ malloc (int) ;

struct strm_queue*
strm_queue_new()
{
  struct strm_queue* q;

  q = (struct strm_queue*)malloc(sizeof(struct strm_queue));
  if (q == ((void*)0)) {
    return ((void*)0);
  }
  q->head = (struct strm_queue_node*)malloc(sizeof(struct strm_queue_node));
  q->tail = q->head;
  q->head->next = ((void*)0);
  return q;
}
