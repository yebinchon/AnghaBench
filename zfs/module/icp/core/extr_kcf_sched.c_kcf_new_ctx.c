
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int pd_prov_handle; } ;
typedef TYPE_1__ kcf_provider_desc_t ;
struct TYPE_10__ {int * cc_opstate; scalar_t__ cc_flags; void* cc_framework_private; int * cc_provider_private; int cc_session; int cc_provider; } ;
struct TYPE_9__ {int kc_refcnt; TYPE_3__ kc_glbl_ctx; int * kc_mech; int * kc_sw_prov_desc; TYPE_1__* kc_prov_desc; int * kc_secondctx; int * kc_req_chain_last; int * kc_req_chain_first; } ;
typedef TYPE_2__ kcf_context_t ;
typedef int crypto_session_id_t ;
typedef TYPE_3__ crypto_ctx_t ;
typedef int crypto_call_req_t ;


 int KCF_PROV_REFHOLD (TYPE_1__*) ;
 int KM_NOSLEEP ;
 int KM_SLEEP ;
 int kcf_context_cache ;
 TYPE_2__* kmem_cache_alloc (int ,int ) ;

crypto_ctx_t *
kcf_new_ctx(crypto_call_req_t *crq, kcf_provider_desc_t *pd,
    crypto_session_id_t sid)
{
 crypto_ctx_t *ctx;
 kcf_context_t *kcf_ctx;

 kcf_ctx = kmem_cache_alloc(kcf_context_cache,
     (crq == ((void*)0)) ? KM_SLEEP : KM_NOSLEEP);
 if (kcf_ctx == ((void*)0))
  return (((void*)0));


 kcf_ctx->kc_refcnt = 1;
 kcf_ctx->kc_req_chain_first = ((void*)0);
 kcf_ctx->kc_req_chain_last = ((void*)0);
 kcf_ctx->kc_secondctx = ((void*)0);
 KCF_PROV_REFHOLD(pd);
 kcf_ctx->kc_prov_desc = pd;
 kcf_ctx->kc_sw_prov_desc = ((void*)0);
 kcf_ctx->kc_mech = ((void*)0);

 ctx = &kcf_ctx->kc_glbl_ctx;
 ctx->cc_provider = pd->pd_prov_handle;
 ctx->cc_session = sid;
 ctx->cc_provider_private = ((void*)0);
 ctx->cc_framework_private = (void *)kcf_ctx;
 ctx->cc_flags = 0;
 ctx->cc_opstate = ((void*)0);

 return (ctx);
}
