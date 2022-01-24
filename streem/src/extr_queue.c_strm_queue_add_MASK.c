#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct strm_queue_node {struct strm_queue_node* next; void* n; } ;
struct strm_queue {struct strm_queue_node* tail; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct strm_queue_node*,struct strm_queue_node*,struct strm_queue_node*) ; 

int
FUNC2(struct strm_queue* q, void* val)
{
  struct strm_queue_node *node = (struct strm_queue_node*)FUNC0(sizeof(struct strm_queue_node));

  node->n = val; 
  node->next = NULL;
  while (1) {
    struct strm_queue_node *n = q->tail;
    struct strm_queue_node *next = n->next;
    if (n != q->tail) continue;
    if (next == NULL) {
      if (FUNC1(n->next, next, node)) {
        FUNC1(q->tail, n, node);
        return 1;
      }
    }
    else {
      FUNC1(q->tail, n, next);
    }
  }
}