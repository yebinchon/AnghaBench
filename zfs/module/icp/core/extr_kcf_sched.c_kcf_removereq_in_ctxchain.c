
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int kc_in_use_lock; TYPE_2__* kc_req_chain_last; TYPE_2__* kc_req_chain_first; } ;
typedef TYPE_1__ kcf_context_t ;
struct TYPE_6__ {struct TYPE_6__* an_ctxchain_next; } ;
typedef TYPE_2__ kcf_areq_node_t ;


 int ASSERT (int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
kcf_removereq_in_ctxchain(kcf_context_t *ictx, kcf_areq_node_t *areq)
{
 kcf_areq_node_t *cur, *prev;




 ASSERT(ictx != ((void*)0));
 mutex_enter(&ictx->kc_in_use_lock);
 prev = cur = ictx->kc_req_chain_first;

 while (cur != ((void*)0)) {
  if (cur == areq) {
   if (prev == cur) {
    if ((ictx->kc_req_chain_first =
        cur->an_ctxchain_next) == ((void*)0))
     ictx->kc_req_chain_last = ((void*)0);
   } else {
    if (cur == ictx->kc_req_chain_last)
     ictx->kc_req_chain_last = prev;
    prev->an_ctxchain_next = cur->an_ctxchain_next;
   }

   break;
  }
  prev = cur;
  cur = cur->an_ctxchain_next;
 }
 mutex_exit(&ictx->kc_in_use_lock);
}
