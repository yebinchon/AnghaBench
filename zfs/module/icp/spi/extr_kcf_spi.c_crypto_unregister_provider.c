
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t uint_t ;
struct TYPE_11__ {scalar_t__ pd_state; scalar_t__ pd_prov_type; scalar_t__ pd_refcnt; scalar_t__ pd_irefcnt; size_t pd_mech_list_count; int pd_lock; int pd_remove_cv; TYPE_1__* pd_mechanisms; int pd_resume_cv; } ;
typedef TYPE_2__ kcf_provider_desc_t ;
typedef scalar_t__ kcf_prov_state_t ;
typedef int crypto_provider_id_t ;
typedef scalar_t__ crypto_kcf_provider_handle_t ;
struct TYPE_10__ {int cm_mech_name; } ;


 int ASSERT (int) ;
 int B_FALSE ;
 int CRYPTO_BUSY ;
 scalar_t__ CRYPTO_LOGICAL_PROVIDER ;
 scalar_t__ CRYPTO_SUCCESS ;
 scalar_t__ CRYPTO_SW_PROVIDER ;
 int CRYPTO_UNKNOWN_PROVIDER ;
 scalar_t__ KCF_PROV_BUSY ;
 scalar_t__ KCF_PROV_DISABLED ;
 scalar_t__ KCF_PROV_FREED ;
 int KCF_PROV_REFRELE (TYPE_2__*) ;
 scalar_t__ KCF_PROV_REMOVED ;
 int cv_broadcast (int *) ;
 int cv_wait (int *,int *) ;
 int delete_kstat (TYPE_2__*) ;
 int kcf_do_notify (TYPE_2__*,int ) ;
 int kcf_free_provider_desc (TYPE_2__*) ;
 TYPE_2__* kcf_prov_tab_lookup (int ) ;
 scalar_t__ kcf_prov_tab_rem_provider (int ) ;
 int kcf_remove_mech_provider (int ,TYPE_2__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int remove_provider (TYPE_2__*) ;

int
crypto_unregister_provider(crypto_kcf_provider_handle_t handle)
{
 uint_t mech_idx;
 kcf_provider_desc_t *desc;
 kcf_prov_state_t saved_state;


 if ((desc = kcf_prov_tab_lookup((crypto_provider_id_t)handle)) == ((void*)0))
  return (CRYPTO_UNKNOWN_PROVIDER);

 mutex_enter(&desc->pd_lock);




 if (desc->pd_state >= KCF_PROV_DISABLED) {
  mutex_exit(&desc->pd_lock);

  KCF_PROV_REFRELE(desc);
  return (CRYPTO_BUSY);
 }

 saved_state = desc->pd_state;
 desc->pd_state = KCF_PROV_REMOVED;

 if (saved_state == KCF_PROV_BUSY) {




  cv_broadcast(&desc->pd_resume_cv);
 }

 if (desc->pd_prov_type == CRYPTO_SW_PROVIDER) {





  if (desc->pd_refcnt > desc->pd_irefcnt + 1) {
   desc->pd_state = saved_state;
   mutex_exit(&desc->pd_lock);

   KCF_PROV_REFRELE(desc);





   return (CRYPTO_BUSY);
  }
 }
 mutex_exit(&desc->pd_lock);

 if (desc->pd_prov_type != CRYPTO_SW_PROVIDER) {
  remove_provider(desc);
 }

 if (desc->pd_prov_type != CRYPTO_LOGICAL_PROVIDER) {

  for (mech_idx = 0; mech_idx < desc->pd_mech_list_count;
      mech_idx++) {
   kcf_remove_mech_provider(
       desc->pd_mechanisms[mech_idx].cm_mech_name, desc);
  }
 }


 if (kcf_prov_tab_rem_provider((crypto_provider_id_t)handle) !=
     CRYPTO_SUCCESS) {

  KCF_PROV_REFRELE(desc);
  return (CRYPTO_UNKNOWN_PROVIDER);
 }

 delete_kstat(desc);

 if (desc->pd_prov_type == CRYPTO_SW_PROVIDER) {

  KCF_PROV_REFRELE(desc);




  mutex_enter(&desc->pd_lock);
  while (desc->pd_state != KCF_PROV_FREED)
   cv_wait(&desc->pd_remove_cv, &desc->pd_lock);
  mutex_exit(&desc->pd_lock);
 } else {




  mutex_enter(&desc->pd_lock);
  while (desc->pd_irefcnt > 0)
   cv_wait(&desc->pd_remove_cv, &desc->pd_lock);
  mutex_exit(&desc->pd_lock);
 }

 kcf_do_notify(desc, B_FALSE);

 if (desc->pd_prov_type == CRYPTO_SW_PROVIDER) {





  ASSERT(desc->pd_state == KCF_PROV_FREED &&
      desc->pd_refcnt == 0);
  kcf_free_provider_desc(desc);
 } else {
  KCF_PROV_REFRELE(desc);
 }

 return (CRYPTO_SUCCESS);
}
