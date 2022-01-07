
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_4__ {scalar_t__ pd_state; scalar_t__ pd_prov_type; int pd_lock; int pd_resume_cv; } ;
typedef TYPE_1__ kcf_provider_desc_t ;
typedef int crypto_provider_id_t ;
typedef scalar_t__ crypto_kcf_provider_handle_t ;


 int CE_WARN ;
 scalar_t__ CRYPTO_LOGICAL_PROVIDER ;






 int KCF_PROV_REFRELE (TYPE_1__*) ;
 scalar_t__ KCF_PROV_VERIFICATION_FAILED ;
 int cmn_err (int ,char*,scalar_t__) ;
 int cv_broadcast (int *) ;
 TYPE_1__* kcf_prov_tab_lookup (int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
crypto_provider_notification(crypto_kcf_provider_handle_t handle, uint_t state)
{
 kcf_provider_desc_t *pd;


 if ((pd = kcf_prov_tab_lookup((crypto_provider_id_t)handle)) == ((void*)0))
  return;

 mutex_enter(&pd->pd_lock);

 if (pd->pd_state <= KCF_PROV_VERIFICATION_FAILED)
  goto out;

 if (pd->pd_prov_type == CRYPTO_LOGICAL_PROVIDER) {
  cmn_err(CE_WARN, "crypto_provider_notification: "
      "logical provider (%x) ignored\n", handle);
  goto out;
 }
 switch (state) {
 case 131:
  switch (pd->pd_state) {
  case 130:
   pd->pd_state = 128;




   cv_broadcast(&pd->pd_resume_cv);
   break;

  case 129:




   pd->pd_state = 128;
   break;
  default:
   break;
  }
  break;

 case 133:
  switch (pd->pd_state) {
  case 128:
   pd->pd_state = 130;
   break;
  default:
   break;
  }
  break;

 case 132:





  switch (pd->pd_state) {
  case 128:
   pd->pd_state = 129;
   break;

  case 130:
   pd->pd_state = 129;




   cv_broadcast(&pd->pd_resume_cv);
   break;
  default:
   break;
  }
  break;
 default:
  break;
 }
out:
 mutex_exit(&pd->pd_lock);
 KCF_PROV_REFRELE(pd);
}
