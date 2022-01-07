
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ pd_state; scalar_t__ pd_prov_type; scalar_t__ ec_provider_type; int pd_mech_list_count; int pd_flags; TYPE_1__* pd_mechanisms; int ec_mech_name; int ec_change; } ;
typedef TYPE_2__ kcf_provider_desc_t ;
typedef TYPE_2__ crypto_notify_event_change_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_6__ {int cm_mech_name; } ;


 int ASSERT (int) ;
 int CRYPTO_EVENT_MECHS_CHANGED ;
 int CRYPTO_EVENT_PROVIDER_REGISTERED ;
 int CRYPTO_EVENT_PROVIDER_UNREGISTERED ;
 scalar_t__ CRYPTO_LOGICAL_PROVIDER ;
 int CRYPTO_MAX_MECH_NAME ;
 int CRYPTO_MECH_ADDED ;
 int CRYPTO_MECH_REMOVED ;
 int KCF_LPROV_MEMBER ;
 scalar_t__ KCF_PROV_VERIFICATION_FAILED ;
 int kcf_walk_ntfylist (int ,TYPE_2__*) ;
 int strlcpy (int ,int ,int ) ;

void
kcf_do_notify(kcf_provider_desc_t *prov_desc, boolean_t is_added)
{
 int i;
 crypto_notify_event_change_t ec;

 ASSERT(prov_desc->pd_state > KCF_PROV_VERIFICATION_FAILED);






 if (prov_desc->pd_prov_type != CRYPTO_LOGICAL_PROVIDER) {
  ec.ec_provider_type = prov_desc->pd_prov_type;
  ec.ec_change = is_added ? CRYPTO_MECH_ADDED :
      CRYPTO_MECH_REMOVED;
  for (i = 0; i < prov_desc->pd_mech_list_count; i++) {
   (void) strlcpy(ec.ec_mech_name,
       prov_desc->pd_mechanisms[i].cm_mech_name,
       CRYPTO_MAX_MECH_NAME);
   kcf_walk_ntfylist(CRYPTO_EVENT_MECHS_CHANGED, &ec);
  }

 }







 if (prov_desc->pd_prov_type == CRYPTO_LOGICAL_PROVIDER ||
     (prov_desc->pd_flags & KCF_LPROV_MEMBER) == 0) {
  kcf_walk_ntfylist(is_added ? CRYPTO_EVENT_PROVIDER_REGISTERED :
      CRYPTO_EVENT_PROVIDER_UNREGISTERED, prov_desc);
 }
}
