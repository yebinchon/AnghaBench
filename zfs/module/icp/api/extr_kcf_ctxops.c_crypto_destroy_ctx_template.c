
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ct_size; struct TYPE_4__* ct_prov_tmpl; } ;
typedef TYPE_1__ kcf_ctx_template_t ;
typedef scalar_t__ crypto_ctx_template_t ;


 int ASSERT (int ) ;
 int bzero (TYPE_1__*,int) ;
 int kmem_free (TYPE_1__*,int) ;

void
crypto_destroy_ctx_template(crypto_ctx_template_t tmpl)
{
 kcf_ctx_template_t *ctx_tmpl = (kcf_ctx_template_t *)tmpl;

 if (ctx_tmpl == ((void*)0))
  return;

 ASSERT(ctx_tmpl->ct_prov_tmpl != ((void*)0));

 bzero(ctx_tmpl->ct_prov_tmpl, ctx_tmpl->ct_size);
 kmem_free(ctx_tmpl->ct_prov_tmpl, ctx_tmpl->ct_size);
 kmem_free(ctx_tmpl, sizeof (kcf_ctx_template_t));
}
