
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strm_queue_node {scalar_t__ n; struct strm_queue_node* next; } ;
struct strm_queue {struct strm_queue_node* head; } ;


 int free (struct strm_queue_node*) ;
 scalar_t__ strm_atomic_cas (struct strm_queue_node*,struct strm_queue_node*,struct strm_queue_node*) ;

void*
strm_queue_get(struct strm_queue* q)
{
  while (1) {
    struct strm_queue_node *n = q->head;
    struct strm_queue_node *next = n->next;
    if (n != q->head) continue;
    if (next == ((void*)0)) {
      return ((void*)0);
    }
    if (strm_atomic_cas(q->head, n, next)) {
      void *val = (void*)next->n;
      free(n);
      return val;
    }
  }
}
