
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {struct TYPE_14__* pl_next; TYPE_2__* pl_provider; } ;
typedef TYPE_1__ kcf_provider_list_t ;
struct TYPE_15__ {scalar_t__ pd_prov_type; int pd_flags; scalar_t__ pd_state; int pd_lock; TYPE_1__* pd_provider_list; } ;
typedef TYPE_2__ kcf_provider_desc_t ;
typedef size_t kcf_ops_class_t ;
struct TYPE_16__ {int met_size; TYPE_4__* met_tab; } ;
typedef TYPE_3__ kcf_mech_entry_tab_t ;
struct TYPE_17__ {int me_mutex; } ;
typedef TYPE_4__ kcf_mech_entry_t ;
typedef int crypto_mech_type_t ;
typedef int crypto_func_group_t ;
typedef scalar_t__ boolean_t ;


 int ASSERT (int) ;
 int CRYPTO_DEVICE_ERROR ;
 scalar_t__ CRYPTO_LOGICAL_PROVIDER ;
 int CRYPTO_MECHANISM_INVALID ;
 int CRYPTO_MECH_INVALID ;
 int CRYPTO_SUCCESS ;
 int INT_MAX ;
 size_t KCF_FIRST_OPSCLASS ;
 int KCF_INVALID_INDX ;
 int KCF_IS_PROV_USABLE (TYPE_2__*) ;
 size_t KCF_LAST_OPSCLASS ;
 size_t KCF_MECH2CLASS (int ) ;
 int KCF_MECH2INDEX (int ) ;
 scalar_t__ KCF_PROV_BUSY ;
 int KCF_PROV_LOAD (TYPE_2__*) ;
 scalar_t__ KCF_PROV_READY ;
 int KCF_PROV_REFHOLD (TYPE_2__*) ;
 int KCF_PROV_RESTRICTED ;
 int KCF_TO_PROV_MECH_INDX (TYPE_2__*,int ) ;
 int is_valid_provider_for_mech (TYPE_2__*,TYPE_4__*,int ) ;
 TYPE_3__* kcf_mech_tabs_tab ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

int
kcf_get_hardware_provider(crypto_mech_type_t mech_type_1,
    crypto_mech_type_t mech_type_2, boolean_t call_restrict,
    kcf_provider_desc_t *old, kcf_provider_desc_t **new, crypto_func_group_t fg)
{
 kcf_provider_desc_t *provider, *real_pd = old;
 kcf_provider_desc_t *gpd = ((void*)0);
 kcf_provider_desc_t *bpd = ((void*)0);
 kcf_provider_list_t *p;
 kcf_ops_class_t class;
 kcf_mech_entry_t *me;
 kcf_mech_entry_tab_t *me_tab;
 int index, len, gqlen = INT_MAX, rv = CRYPTO_SUCCESS;


 class = KCF_MECH2CLASS(mech_type_1);
 if ((class < KCF_FIRST_OPSCLASS) || (class > KCF_LAST_OPSCLASS)) {
  return (CRYPTO_MECHANISM_INVALID);
 }

 me_tab = &kcf_mech_tabs_tab[class];
 index = KCF_MECH2INDEX(mech_type_1);
 if ((index < 0) || (index >= me_tab->met_size)) {
  return (CRYPTO_MECHANISM_INVALID);
 }

 me = &((me_tab->met_tab)[index]);
 mutex_enter(&me->me_mutex);







 if (old->pd_prov_type == CRYPTO_LOGICAL_PROVIDER) {
  if (old->pd_provider_list == ((void*)0)) {
   real_pd = ((void*)0);
   rv = CRYPTO_DEVICE_ERROR;
   goto out;
  }




  mutex_enter(&old->pd_lock);
  p = old->pd_provider_list;
  while (p != ((void*)0)) {
   provider = p->pl_provider;

   ASSERT(provider->pd_prov_type !=
       CRYPTO_LOGICAL_PROVIDER);

   if (call_restrict &&
       (provider->pd_flags & KCF_PROV_RESTRICTED)) {
    p = p->pl_next;
    continue;
   }

   if (!is_valid_provider_for_mech(provider, me, fg)) {
    p = p->pl_next;
    continue;
   }


   if (mech_type_2 != CRYPTO_MECH_INVALID) {
    int i;

    i = KCF_TO_PROV_MECH_INDX(provider,
        mech_type_2);
    if (i == KCF_INVALID_INDX) {
     p = p->pl_next;
     continue;
    }
   }

   if (provider->pd_state != KCF_PROV_READY) {

    if (provider->pd_state == KCF_PROV_BUSY)
     bpd = provider;
    p = p->pl_next;
    continue;
   }

   len = KCF_PROV_LOAD(provider);
   if (len < gqlen) {
    gqlen = len;
    gpd = provider;
   }

   p = p->pl_next;
  }

  if (gpd != ((void*)0)) {
   real_pd = gpd;
   KCF_PROV_REFHOLD(real_pd);
  } else if (bpd != ((void*)0)) {
   real_pd = bpd;
   KCF_PROV_REFHOLD(real_pd);
  } else {

   real_pd = ((void*)0);
   rv = CRYPTO_MECHANISM_INVALID;
  }
  mutex_exit(&old->pd_lock);

 } else {
  if (!KCF_IS_PROV_USABLE(old) ||
      (call_restrict && (old->pd_flags & KCF_PROV_RESTRICTED))) {
   real_pd = ((void*)0);
   rv = CRYPTO_DEVICE_ERROR;
   goto out;
  }

  if (!is_valid_provider_for_mech(old, me, fg)) {
   real_pd = ((void*)0);
   rv = CRYPTO_MECHANISM_INVALID;
   goto out;
  }

  KCF_PROV_REFHOLD(real_pd);
 }
out:
 mutex_exit(&me->me_mutex);
 *new = real_pd;
 return (rv);
}
