
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strm_queue_node {struct strm_queue_node* next; struct strm_queue_node* head; } ;
struct strm_queue {struct strm_queue* next; struct strm_queue* head; } ;


 int free (struct strm_queue_node*) ;

void
strm_queue_free(struct strm_queue* q)
{
  struct strm_queue_node* n = q->head;

  free(q);
  while (n) {
    struct strm_queue_node* tmp = n->next;
    free(n);
    n = tmp;
  }
}
