
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint_t ;
struct TYPE_6__ {size_t pd_mech_list_count; int pd_prov_id; TYPE_1__* pd_mechanisms; } ;
typedef TYPE_2__ kcf_provider_desc_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_5__ {int cm_mech_name; } ;


 int kcf_prov_tab_rem_provider (int ) ;
 int kcf_remove_mech_provider (int ,TYPE_2__*) ;

void
undo_register_provider(kcf_provider_desc_t *desc, boolean_t remove_prov)
{
 uint_t mech_idx;


 for (mech_idx = 0; mech_idx < desc->pd_mech_list_count;
     mech_idx++) {
  kcf_remove_mech_provider(
      desc->pd_mechanisms[mech_idx].cm_mech_name, desc);
 }


 if (remove_prov)
  (void) kcf_prov_tab_rem_provider(desc->pd_prov_id);
}
