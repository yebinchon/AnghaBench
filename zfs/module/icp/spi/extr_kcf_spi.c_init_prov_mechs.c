
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t uint_t ;
struct TYPE_12__ {int pd_mech_list_count; scalar_t__ pd_prov_type; int pd_flags; scalar_t__ pd_hash_limit; TYPE_4__* pd_mechanisms; } ;
typedef TYPE_2__ kcf_provider_desc_t ;
typedef int kcf_prov_mech_desc_t ;
struct TYPE_13__ {int * pi_mechanisms; TYPE_1__* pi_ops_vector; } ;
typedef TYPE_3__ crypto_provider_info_t ;
struct TYPE_14__ {int cm_func_group_mask; int cm_mech_flags; scalar_t__ cm_max_input_length; int cm_mech_name; } ;
typedef TYPE_4__ crypto_mech_info_t ;
struct TYPE_11__ {int * co_random_ops; } ;


 int ASSERT (int ) ;
 int CRYPTO_ARGUMENTS_BAD ;
 int CRYPTO_FG_DIGEST ;
 int CRYPTO_FG_RANDOM ;
 int CRYPTO_HASH_NO_UPDATE ;
 int CRYPTO_HOST_MEMORY ;
 int CRYPTO_KEYSIZE_UNIT_IN_BITS ;
 int CRYPTO_KEYSIZE_UNIT_IN_BYTES ;
 scalar_t__ CRYPTO_LOGICAL_PROVIDER ;
 int CRYPTO_MAX_MECH_NAME ;
 int CRYPTO_SUCCESS ;
 scalar_t__ CRYPTO_SW_PROVIDER ;
 int KCF_MECH_TAB_FULL ;
 int KCF_SUCCESS ;
 int SUN_RANDOM ;
 int bcopy (int *,TYPE_4__*,int) ;
 int bzero (TYPE_4__*,int) ;
 int kcf_add_mech_provider (size_t,TYPE_2__*,int **) ;
 int kcf_remove_mech_provider (int ,TYPE_2__*) ;
 int strncpy (int ,int ,int ) ;

__attribute__((used)) static int
init_prov_mechs(crypto_provider_info_t *info, kcf_provider_desc_t *desc)
{
 uint_t mech_idx;
 uint_t cleanup_idx;
 int err = CRYPTO_SUCCESS;
 kcf_prov_mech_desc_t *pmd;
 int desc_use_count = 0;
 int mcount = desc->pd_mech_list_count;

 if (desc->pd_prov_type == CRYPTO_LOGICAL_PROVIDER) {
  if (info != ((void*)0)) {
   ASSERT(info->pi_mechanisms != ((void*)0));
   bcopy(info->pi_mechanisms, desc->pd_mechanisms,
       sizeof (crypto_mech_info_t) * mcount);
  }
  return (CRYPTO_SUCCESS);
 }







 if (info != ((void*)0)) {
  if (info->pi_ops_vector->co_random_ops != ((void*)0)) {
   crypto_mech_info_t *rand_mi;






   if (info->pi_mechanisms != ((void*)0)) {
    bcopy(info->pi_mechanisms, desc->pd_mechanisms,
        sizeof (crypto_mech_info_t) * (mcount - 1));
   }
   rand_mi = &desc->pd_mechanisms[mcount - 1];

   bzero(rand_mi, sizeof (crypto_mech_info_t));
   (void) strncpy(rand_mi->cm_mech_name, SUN_RANDOM,
       CRYPTO_MAX_MECH_NAME);
   rand_mi->cm_func_group_mask = CRYPTO_FG_RANDOM;
  } else {
   ASSERT(info->pi_mechanisms != ((void*)0));
   bcopy(info->pi_mechanisms, desc->pd_mechanisms,
       sizeof (crypto_mech_info_t) * mcount);
  }
 }





 for (mech_idx = 0; mech_idx < desc->pd_mech_list_count; mech_idx++) {
  crypto_mech_info_t *mi = &desc->pd_mechanisms[mech_idx];

  if ((mi->cm_mech_flags & CRYPTO_KEYSIZE_UNIT_IN_BITS) &&
      (mi->cm_mech_flags & CRYPTO_KEYSIZE_UNIT_IN_BYTES)) {
   err = CRYPTO_ARGUMENTS_BAD;
   break;
  }

  if (desc->pd_flags & CRYPTO_HASH_NO_UPDATE &&
      mi->cm_func_group_mask & CRYPTO_FG_DIGEST) {
   if (mi->cm_max_input_length == 0) {
    err = CRYPTO_ARGUMENTS_BAD;
    break;
   } else {
    desc->pd_hash_limit = mi->cm_max_input_length;
   }
  }

  if ((err = kcf_add_mech_provider(mech_idx, desc, &pmd)) !=
      KCF_SUCCESS)
   break;

  if (pmd == ((void*)0))
   continue;


  desc_use_count++;
 }







 if (desc_use_count == 0 && desc->pd_prov_type == CRYPTO_SW_PROVIDER)
  return (CRYPTO_ARGUMENTS_BAD);

 if (err == KCF_SUCCESS)
  return (CRYPTO_SUCCESS);





 for (cleanup_idx = 0; cleanup_idx < mech_idx; cleanup_idx++) {
  kcf_remove_mech_provider(
      desc->pd_mechanisms[cleanup_idx].cm_mech_name, desc);
 }

 if (err == KCF_MECH_TAB_FULL)
  return (CRYPTO_HOST_MEMORY);

 return (CRYPTO_ARGUMENTS_BAD);
}
