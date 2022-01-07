
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int pd_flags; } ;
typedef TYPE_1__ kcf_provider_desc_t ;
typedef int kcf_prov_tried_t ;
struct TYPE_14__ {TYPE_1__* pm_prov_desc; struct TYPE_14__* pm_next; } ;
typedef TYPE_2__ kcf_prov_mech_desc_t ;
typedef size_t kcf_ops_class_t ;
struct TYPE_15__ {int met_size; TYPE_4__* met_tab; } ;
typedef TYPE_3__ kcf_mech_entry_tab_t ;
struct TYPE_16__ {size_t me_threshold; scalar_t__ me_num_hwprov; int me_mutex; TYPE_2__* me_sw_prov; TYPE_2__* me_hw_prov_chain; } ;
typedef TYPE_4__ kcf_mech_entry_t ;
typedef int crypto_mech_type_t ;
typedef int crypto_func_group_t ;
typedef scalar_t__ boolean_t ;


 int ASSERT (int) ;
 int CRYPTO_MECHANISM_INVALID ;
 int CRYPTO_MECH_NOT_SUPPORTED ;
 int INT_MAX ;
 int IS_FG_SUPPORTED (TYPE_2__*,int ) ;
 scalar_t__ IS_PROVIDER_TRIED (TYPE_1__*,int *) ;
 size_t KCF_FIRST_OPSCLASS ;
 int KCF_IS_PROV_USABLE (TYPE_1__*) ;
 size_t KCF_LAST_OPSCLASS ;
 size_t KCF_MECH2CLASS (int ) ;
 int KCF_MECH2INDEX (int ) ;
 int KCF_PROV_LOAD (TYPE_1__*) ;
 int KCF_PROV_REFHOLD (TYPE_1__*) ;
 int KCF_PROV_RESTRICTED ;
 TYPE_3__* kcf_mech_tabs_tab ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

kcf_provider_desc_t *
kcf_get_mech_provider(crypto_mech_type_t mech_type, kcf_mech_entry_t **mepp,
    int *error, kcf_prov_tried_t *triedl, crypto_func_group_t fg,
    boolean_t call_restrict, size_t data_size)
{
 kcf_provider_desc_t *pd = ((void*)0), *gpd = ((void*)0);
 kcf_prov_mech_desc_t *prov_chain, *mdesc;
 int len, gqlen = INT_MAX;
 kcf_ops_class_t class;
 int index;
 kcf_mech_entry_t *me;
 kcf_mech_entry_tab_t *me_tab;

 class = KCF_MECH2CLASS(mech_type);
 if ((class < KCF_FIRST_OPSCLASS) || (class > KCF_LAST_OPSCLASS)) {
  *error = CRYPTO_MECHANISM_INVALID;
  return (((void*)0));
 }

 me_tab = &kcf_mech_tabs_tab[class];
 index = KCF_MECH2INDEX(mech_type);
 if ((index < 0) || (index >= me_tab->met_size)) {
  *error = CRYPTO_MECHANISM_INVALID;
  return (((void*)0));
 }

 me = &((me_tab->met_tab)[index]);
 if (mepp != ((void*)0))
  *mepp = me;

 mutex_enter(&me->me_mutex);

 prov_chain = me->me_hw_prov_chain;






 if ((prov_chain != ((void*)0)) &&
     ((data_size == 0) || (me->me_threshold == 0) ||
     (data_size >= me->me_threshold) ||
     ((mdesc = me->me_sw_prov) == ((void*)0)) ||
     (!IS_FG_SUPPORTED(mdesc, fg)) ||
     (!KCF_IS_PROV_USABLE(mdesc->pm_prov_desc)))) {
  ASSERT(me->me_num_hwprov > 0);






  while (prov_chain != ((void*)0)) {
   pd = prov_chain->pm_prov_desc;

   if (!IS_FG_SUPPORTED(prov_chain, fg) ||
       !KCF_IS_PROV_USABLE(pd) ||
       IS_PROVIDER_TRIED(pd, triedl) ||
       (call_restrict &&
       (pd->pd_flags & KCF_PROV_RESTRICTED))) {
    prov_chain = prov_chain->pm_next;
    continue;
   }

   if ((len = KCF_PROV_LOAD(pd)) < gqlen) {
    gqlen = len;
    gpd = pd;
   }

   prov_chain = prov_chain->pm_next;
  }

  pd = gpd;
 }


 if (pd == ((void*)0) && (mdesc = me->me_sw_prov) != ((void*)0)) {
  pd = mdesc->pm_prov_desc;
  if (!IS_FG_SUPPORTED(mdesc, fg) ||
      !KCF_IS_PROV_USABLE(pd) ||
      IS_PROVIDER_TRIED(pd, triedl) ||
      (call_restrict && (pd->pd_flags & KCF_PROV_RESTRICTED)))
   pd = ((void*)0);
 }

 if (pd == ((void*)0)) {






  if (triedl == ((void*)0))
   *error = CRYPTO_MECH_NOT_SUPPORTED;
 } else
  KCF_PROV_REFHOLD(pd);

 mutex_exit(&me->me_mutex);
 return (pd);
}
