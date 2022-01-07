
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int an_state; struct TYPE_4__* an_next; struct TYPE_4__* an_prev; } ;
typedef TYPE_1__ kcf_areq_node_t ;
struct TYPE_5__ {TYPE_1__* gs_first; TYPE_1__* gs_last; } ;


 int REQ_CANCELED ;
 TYPE_3__* gswq ;

void
kcf_remove_node(kcf_areq_node_t *node)
{
 kcf_areq_node_t *nextp = node->an_next;
 kcf_areq_node_t *prevp = node->an_prev;

 if (nextp != ((void*)0))
  nextp->an_prev = prevp;
 else
  gswq->gs_last = prevp;

 if (prevp != ((void*)0))
  prevp->an_next = nextp;
 else
  gswq->gs_first = nextp;

 node->an_state = REQ_CANCELED;
}
