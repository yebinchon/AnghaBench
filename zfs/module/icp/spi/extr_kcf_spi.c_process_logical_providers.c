
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int pd_flags; } ;
typedef TYPE_1__ kcf_provider_desc_t ;
struct TYPE_10__ {int pi_logical_provider_count; scalar_t__* pi_logical_providers; } ;
typedef TYPE_2__ crypto_provider_info_t ;
typedef scalar_t__ crypto_provider_id_t ;


 int KCF_LPROV_MEMBER ;
 int KCF_PROV_REFRELE (TYPE_1__*) ;
 int add_provider_to_array (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* kcf_prov_tab_lookup (scalar_t__) ;

__attribute__((used)) static void
process_logical_providers(crypto_provider_info_t *info, kcf_provider_desc_t *hp)
{
 kcf_provider_desc_t *lp;
 crypto_provider_id_t handle;
 int count = info->pi_logical_provider_count;
 int i;


 for (i = 0; i < count; i++) {
  handle = info->pi_logical_providers[i];
  lp = kcf_prov_tab_lookup((crypto_provider_id_t)handle);
  if (lp == ((void*)0)) {
   continue;
  }
  add_provider_to_array(hp, lp);
  hp->pd_flags |= KCF_LPROV_MEMBER;







  add_provider_to_array(lp, hp);
  KCF_PROV_REFRELE(lp);
 }
}
