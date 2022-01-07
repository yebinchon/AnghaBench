
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int kcf_provider_desc_t ;
struct TYPE_10__ {int me_gen_swprov; } ;
typedef TYPE_1__ kcf_mech_entry_t ;
struct TYPE_11__ {int ct_generation; int ct_size; int ct_prov_tmpl; } ;
typedef TYPE_2__ kcf_ctx_template_t ;
struct TYPE_12__ {int cm_param_len; int cm_param; int cm_type; } ;
typedef TYPE_3__ crypto_mechanism_t ;
typedef int crypto_key_t ;
typedef TYPE_2__* crypto_ctx_template_t ;


 int B_TRUE ;
 int CRYPTO_ARGUMENTS_BAD ;
 int CRYPTO_HOST_MEMORY ;
 int CRYPTO_MECHANISM_INVALID ;
 int CRYPTO_SUCCESS ;
 int KCF_PROV_CREATE_CTX_TEMPLATE (int *,TYPE_3__*,int *,int *,int *,int ) ;
 int KCF_PROV_REFRELE (int *) ;
 int KCF_RHNDL (int) ;
 int KCF_TO_PROV_MECHNUM (int *,int ) ;
 int kcf_get_sw_prov (int ,int **,TYPE_1__**,int ) ;
 scalar_t__ kmem_alloc (int,int) ;
 int kmem_free (TYPE_2__*,int) ;

int
crypto_create_ctx_template(crypto_mechanism_t *mech, crypto_key_t *key,
    crypto_ctx_template_t *ptmpl, int kmflag)
{
 int error;
 kcf_mech_entry_t *me;
 kcf_provider_desc_t *pd;
 kcf_ctx_template_t *ctx_tmpl;
 crypto_mechanism_t prov_mech;



 if (ptmpl == ((void*)0))
  return (CRYPTO_ARGUMENTS_BAD);

 if (mech == ((void*)0))
  return (CRYPTO_MECHANISM_INVALID);

 error = kcf_get_sw_prov(mech->cm_type, &pd, &me, B_TRUE);
 if (error != CRYPTO_SUCCESS)
  return (error);

 if ((ctx_tmpl = (kcf_ctx_template_t *)kmem_alloc(
     sizeof (kcf_ctx_template_t), kmflag)) == ((void*)0)) {
  KCF_PROV_REFRELE(pd);
  return (CRYPTO_HOST_MEMORY);
 }


 prov_mech.cm_type = KCF_TO_PROV_MECHNUM(pd, mech->cm_type);
 prov_mech.cm_param = mech->cm_param;
 prov_mech.cm_param_len = mech->cm_param_len;

 error = KCF_PROV_CREATE_CTX_TEMPLATE(pd, &prov_mech, key,
     &(ctx_tmpl->ct_prov_tmpl), &(ctx_tmpl->ct_size), KCF_RHNDL(kmflag));

 if (error == CRYPTO_SUCCESS) {
  ctx_tmpl->ct_generation = me->me_gen_swprov;
  *ptmpl = ctx_tmpl;
 } else {
  kmem_free(ctx_tmpl, sizeof (kcf_ctx_template_t));
 }
 KCF_PROV_REFRELE(pd);

 return (error);
}
