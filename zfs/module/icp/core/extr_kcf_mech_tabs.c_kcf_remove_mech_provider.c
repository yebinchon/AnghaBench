
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int pd_prov_type; } ;
typedef TYPE_1__ kcf_provider_desc_t ;
struct TYPE_11__ {scalar_t__ ml_kcf_mechid; TYPE_1__* pm_prov_desc; struct TYPE_11__* pm_next; struct TYPE_11__* ml_next; struct TYPE_11__* pm_mi_list; } ;
typedef TYPE_2__ kcf_prov_mech_desc_t ;
struct TYPE_12__ {int me_mutex; TYPE_2__* me_sw_prov; TYPE_2__* me_hw_prov_chain; int me_num_hwprov; } ;
typedef TYPE_3__ kcf_mech_entry_t ;
typedef scalar_t__ crypto_mech_type_t ;
typedef TYPE_2__ crypto_mech_info_list_t ;


 int ASSERT (int) ;

 int CRYPTO_LOGICAL_PROVIDER ;
 scalar_t__ CRYPTO_MECH_INVALID ;

 int KCF_PROV_IREFRELE (TYPE_1__*) ;
 int KCF_PROV_REFRELE (TYPE_1__*) ;
 scalar_t__ KCF_SUCCESS ;
 scalar_t__ kcf_get_mech_entry (scalar_t__,TYPE_3__**) ;
 scalar_t__ kcf_mech_hash_find (char*) ;
 int kmem_free (TYPE_2__*,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
kcf_remove_mech_provider(char *mech_name, kcf_provider_desc_t *prov_desc)
{
 crypto_mech_type_t mech_type;
 kcf_prov_mech_desc_t *prov_mech = ((void*)0), *prov_chain;
 kcf_prov_mech_desc_t **prev_entry_next;
 kcf_mech_entry_t *mech_entry;
 crypto_mech_info_list_t *mil, *mil2, *next, **prev_next;

 ASSERT(prov_desc->pd_prov_type != CRYPTO_LOGICAL_PROVIDER);


 if ((mech_type = kcf_mech_hash_find(mech_name)) ==
     CRYPTO_MECH_INVALID) {




  return;
 }


 if (kcf_get_mech_entry(mech_type, &mech_entry) != KCF_SUCCESS) {




  return;
 }

 mutex_enter(&mech_entry->me_mutex);

 switch (prov_desc->pd_prov_type) {

 case 129:

  prev_entry_next = &mech_entry->me_hw_prov_chain;
  prov_mech = mech_entry->me_hw_prov_chain;
  while (prov_mech != ((void*)0) &&
      prov_mech->pm_prov_desc != prov_desc) {
   prev_entry_next = &prov_mech->pm_next;
   prov_mech = prov_mech->pm_next;
  }

  if (prov_mech == ((void*)0)) {

   mutex_exit(&mech_entry->me_mutex);
   return;
  }


  *prev_entry_next = prov_mech->pm_next;
  ASSERT(mech_entry->me_num_hwprov > 0);
  mech_entry->me_num_hwprov--;
  break;

 case 128:
  if (mech_entry->me_sw_prov == ((void*)0) ||
      mech_entry->me_sw_prov->pm_prov_desc != prov_desc) {

   mutex_exit(&mech_entry->me_mutex);
   return;
  }
  prov_mech = mech_entry->me_sw_prov;
  mech_entry->me_sw_prov = ((void*)0);
  break;
 default:

  mutex_exit(&mech_entry->me_mutex);
  return;
 }

 mutex_exit(&mech_entry->me_mutex);


 mil = prov_mech->pm_mi_list;
 while (mil != ((void*)0)) {
  next = mil->ml_next;
  if (kcf_get_mech_entry(mil->ml_kcf_mechid,
      &mech_entry) != KCF_SUCCESS) {
   mil = next;
   continue;
  }

  mutex_enter(&mech_entry->me_mutex);
  if (prov_desc->pd_prov_type == 129)
   prov_chain = mech_entry->me_hw_prov_chain;
  else
   prov_chain = mech_entry->me_sw_prov;

  while (prov_chain != ((void*)0)) {
   if (prov_chain->pm_prov_desc == prov_desc) {
    prev_next = &prov_chain->pm_mi_list;
    mil2 = prov_chain->pm_mi_list;
    while (mil2 != ((void*)0) &&
        mil2->ml_kcf_mechid != mech_type) {
     prev_next = &mil2->ml_next;
     mil2 = mil2->ml_next;
    }
    if (mil2 != ((void*)0)) {
     *prev_next = mil2->ml_next;
     kmem_free(mil2, sizeof (*mil2));
    }
    break;
   }
   prov_chain = prov_chain->pm_next;
  }

  mutex_exit(&mech_entry->me_mutex);
  kmem_free(mil, sizeof (crypto_mech_info_list_t));
  mil = next;
 }


 KCF_PROV_REFRELE(prov_mech->pm_prov_desc);
 KCF_PROV_IREFRELE(prov_mech->pm_prov_desc);
 kmem_free(prov_mech, sizeof (kcf_prov_mech_desc_t));
}
