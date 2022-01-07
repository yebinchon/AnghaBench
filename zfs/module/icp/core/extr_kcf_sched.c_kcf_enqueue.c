
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int an_state; struct TYPE_4__* an_prev; struct TYPE_4__* an_next; } ;
typedef TYPE_1__ kcf_areq_node_t ;
struct TYPE_5__ {scalar_t__ gs_njobs; scalar_t__ gs_maxjobs; int gs_lock; TYPE_1__* gs_last; TYPE_1__* gs_first; } ;


 int ASSERT (int ) ;
 int CRYPTO_BUSY ;
 int REQ_WAITING ;
 TYPE_3__* gswq ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static int
kcf_enqueue(kcf_areq_node_t *node)
{
 kcf_areq_node_t *tnode;

 mutex_enter(&gswq->gs_lock);

 if (gswq->gs_njobs >= gswq->gs_maxjobs) {
  mutex_exit(&gswq->gs_lock);
  return (CRYPTO_BUSY);
 }

 if (gswq->gs_last == ((void*)0)) {
  gswq->gs_first = gswq->gs_last = node;
 } else {
  ASSERT(gswq->gs_last->an_next == ((void*)0));
  tnode = gswq->gs_last;
  tnode->an_next = node;
  gswq->gs_last = node;
  node->an_prev = tnode;
 }

 gswq->gs_njobs++;


 node->an_state = REQ_WAITING;

 mutex_exit(&gswq->gs_lock);

 return (0);
}
