
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int pd_lock; } ;
typedef TYPE_1__ kcf_provider_desc_t ;
struct TYPE_15__ {int cc_flags; int * cc_provider_private; } ;
struct TYPE_14__ {TYPE_1__* kc_sw_prov_desc; TYPE_1__* kc_prov_desc; struct TYPE_14__* kc_secondctx; TYPE_3__ kc_glbl_ctx; } ;
typedef TYPE_2__ kcf_context_t ;
typedef TYPE_3__ crypto_ctx_t ;


 int CRYPTO_INIT_OPSTATE ;
 int KCF_CONTEXT_REFRELE (TYPE_2__*) ;
 int KCF_IS_PROV_REMOVED (TYPE_1__*) ;
 int KCF_PROV_FREE_CONTEXT (TYPE_1__*,TYPE_3__*) ;
 int KCF_PROV_IREFHOLD (TYPE_1__*) ;
 int KCF_PROV_IREFRELE (TYPE_1__*) ;
 int KCF_PROV_REFRELE (TYPE_1__*) ;
 int kcf_context_cache ;
 int kmem_cache_free (int ,TYPE_2__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
kcf_free_context(kcf_context_t *kcf_ctx)
{
 kcf_provider_desc_t *pd = kcf_ctx->kc_prov_desc;
 crypto_ctx_t *gctx = &kcf_ctx->kc_glbl_ctx;
 kcf_context_t *kcf_secondctx = kcf_ctx->kc_secondctx;



 if (kcf_secondctx != ((void*)0))
  KCF_CONTEXT_REFRELE(kcf_secondctx);

 if (gctx->cc_provider_private != ((void*)0)) {
  mutex_enter(&pd->pd_lock);
  if (!KCF_IS_PROV_REMOVED(pd)) {





   KCF_PROV_IREFHOLD(pd);
   mutex_exit(&pd->pd_lock);
   (void) KCF_PROV_FREE_CONTEXT(pd, gctx);
   KCF_PROV_IREFRELE(pd);
  } else {
   mutex_exit(&pd->pd_lock);
  }
 }


 KCF_PROV_REFRELE(kcf_ctx->kc_prov_desc);


 if ((gctx->cc_flags & CRYPTO_INIT_OPSTATE) &&
     kcf_ctx->kc_sw_prov_desc != ((void*)0)) {
  KCF_PROV_REFRELE(kcf_ctx->kc_sw_prov_desc);
 }

 kmem_cache_free(kcf_context_cache, kcf_ctx);
}
