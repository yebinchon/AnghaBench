
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int kcf_req_params_t ;
typedef int kcf_provider_desc_t ;
struct TYPE_7__ {int kc_in_use_lock; TYPE_2__* kc_req_chain_last; TYPE_2__* kc_req_chain_first; } ;
typedef TYPE_1__ kcf_context_t ;
struct TYPE_8__ {int an_refcnt; struct TYPE_8__* an_ctxchain_next; int an_is_my_turn; int * an_idprev; int an_idnext; int * an_tried_plist; int * an_provider; int * an_prev; int an_next; int an_isdual; TYPE_1__* an_context; int an_params; int an_reqarg; int an_state; } ;
typedef TYPE_2__ kcf_areq_node_t ;
typedef int crypto_call_req_t ;
typedef int boolean_t ;


 int ASSERT (int ) ;
 int B_FALSE ;
 int B_TRUE ;
 int KCF_CONTEXT_REFHOLD (TYPE_1__*) ;
 int KCF_PROV_REFHOLD (int *) ;
 int KM_NOSLEEP ;
 int REQ_ALLOCATED ;
 int kcf_areq_cache ;
 TYPE_2__* kmem_cache_alloc (int ,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static kcf_areq_node_t *
kcf_areqnode_alloc(kcf_provider_desc_t *pd, kcf_context_t *ictx,
    crypto_call_req_t *crq, kcf_req_params_t *req, boolean_t isdual)
{
 kcf_areq_node_t *arptr, *areq;

 ASSERT(crq != ((void*)0));
 arptr = kmem_cache_alloc(kcf_areq_cache, KM_NOSLEEP);
 if (arptr == ((void*)0))
  return (((void*)0));

 arptr->an_state = REQ_ALLOCATED;
 arptr->an_reqarg = *crq;
 arptr->an_params = *req;
 arptr->an_context = ictx;
 arptr->an_isdual = isdual;

 arptr->an_next = arptr->an_prev = ((void*)0);
 KCF_PROV_REFHOLD(pd);
 arptr->an_provider = pd;
 arptr->an_tried_plist = ((void*)0);
 arptr->an_refcnt = 1;
 arptr->an_idnext = arptr->an_idprev = ((void*)0);





 if (ictx == ((void*)0))
  return (arptr);

 KCF_CONTEXT_REFHOLD(ictx);



 mutex_enter(&ictx->kc_in_use_lock);
 arptr->an_ctxchain_next = ((void*)0);
 if ((areq = ictx->kc_req_chain_last) == ((void*)0)) {
  arptr->an_is_my_turn = B_TRUE;
  ictx->kc_req_chain_last =
      ictx->kc_req_chain_first = arptr;
 } else {
  ASSERT(ictx->kc_req_chain_first != ((void*)0));
  arptr->an_is_my_turn = B_FALSE;

  areq->an_ctxchain_next = arptr;
  ictx->kc_req_chain_last = arptr;
 }
 mutex_exit(&ictx->kc_in_use_lock);

 return (arptr);
}
