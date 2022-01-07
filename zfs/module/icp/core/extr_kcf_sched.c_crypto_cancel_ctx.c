
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kc_in_use_lock; int * kc_req_chain_first; } ;
typedef TYPE_1__ kcf_context_t ;
typedef int kcf_areq_node_t ;
struct TYPE_5__ {scalar_t__ cc_framework_private; } ;
typedef TYPE_2__ crypto_ctx_t ;
typedef int * crypto_context_t ;


 int GET_REQID (int *) ;
 int KCF_AREQ_REFHOLD (int *) ;
 int KCF_AREQ_REFRELE (int *) ;
 int KCF_CONTEXT_REFRELE (TYPE_1__*) ;
 int crypto_cancel_req (int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
crypto_cancel_ctx(crypto_context_t ctx)
{
 kcf_context_t *ictx;
 kcf_areq_node_t *areq;

 if (ctx == ((void*)0))
  return;

 ictx = (kcf_context_t *)((crypto_ctx_t *)ctx)->cc_framework_private;

 mutex_enter(&ictx->kc_in_use_lock);


 while ((areq = ictx->kc_req_chain_first) != ((void*)0)) {






  KCF_AREQ_REFHOLD(areq);
  mutex_exit(&ictx->kc_in_use_lock);

  crypto_cancel_req(GET_REQID(areq));
  KCF_AREQ_REFRELE(areq);

  mutex_enter(&ictx->kc_in_use_lock);
 }

 mutex_exit(&ictx->kc_in_use_lock);
 KCF_CONTEXT_REFRELE(ictx);
}
