
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int kcf_provider_desc_t ;
struct TYPE_5__ {int * pm_prov_desc; struct TYPE_5__* pm_next; } ;
typedef TYPE_1__ kcf_prov_mech_desc_t ;
struct TYPE_6__ {scalar_t__ me_num_hwprov; TYPE_1__* me_hw_prov_chain; } ;
typedef TYPE_2__ kcf_mech_entry_t ;
typedef int crypto_func_group_t ;
typedef int boolean_t ;


 int ASSERT (int) ;
 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ IS_FG_SUPPORTED (TYPE_1__*,int ) ;

__attribute__((used)) static boolean_t
is_valid_provider_for_mech(kcf_provider_desc_t *pd, kcf_mech_entry_t *me,
    crypto_func_group_t fg)
{
 kcf_prov_mech_desc_t *prov_chain;

 prov_chain = me->me_hw_prov_chain;
 if (prov_chain != ((void*)0)) {
  ASSERT(me->me_num_hwprov > 0);
  for (; prov_chain != ((void*)0); prov_chain = prov_chain->pm_next) {
   if (prov_chain->pm_prov_desc == pd &&
       IS_FG_SUPPORTED(prov_chain, fg)) {
    return (B_TRUE);
   }
  }
 }
 return (B_FALSE);
}
