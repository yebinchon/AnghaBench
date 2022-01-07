
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * ks_taskq; } ;
struct TYPE_6__ {size_t pd_prov_id; int pd_mech_list_count; int pd_remove_cv; int pd_resume_cv; int pd_lock; TYPE_1__ pd_sched_info; struct TYPE_6__* pd_mechanisms; struct TYPE_6__* pd_ops_vector; struct TYPE_6__* co_nostore_key_ops; struct TYPE_6__* co_mech_ops; struct TYPE_6__* co_ctx_ops; struct TYPE_6__* co_provider_ops; struct TYPE_6__* co_key_ops; struct TYPE_6__* co_object_ops; struct TYPE_6__* co_session_ops; struct TYPE_6__* co_random_ops; struct TYPE_6__* co_dual_cipher_mac_ops; struct TYPE_6__* co_dual_ops; struct TYPE_6__* co_verify_ops; struct TYPE_6__* co_sign_ops; struct TYPE_6__* co_mac_ops; struct TYPE_6__* co_cipher_ops; struct TYPE_6__* co_digest_ops; struct TYPE_6__* co_control_ops; struct TYPE_6__* pd_description; } ;
typedef TYPE_2__ kcf_provider_desc_t ;
typedef int crypto_verify_ops_t ;
typedef int crypto_sign_ops_t ;
typedef int crypto_session_ops_t ;
typedef int crypto_random_number_ops_t ;
typedef int crypto_provider_management_ops_t ;
typedef int crypto_ops_t ;
typedef int crypto_object_ops_t ;
typedef int crypto_nostore_key_ops_t ;
typedef int crypto_mech_ops_t ;
typedef int crypto_mech_info_t ;
typedef int crypto_mac_ops_t ;
typedef int crypto_key_ops_t ;
typedef int crypto_dual_ops_t ;
typedef int crypto_dual_cipher_mac_ops_t ;
typedef int crypto_digest_ops_t ;
typedef int crypto_ctx_ops_t ;
typedef int crypto_control_ops_t ;
typedef int crypto_cipher_ops_t ;


 int ASSERT (int ) ;
 int CRYPTO_PROVIDER_DESCR_MAX_LEN ;
 size_t KCF_PROVID_INVALID ;
 int cv_destroy (int *) ;
 int kmem_free (TYPE_2__*,int) ;
 int mutex_destroy (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int ** prov_tab ;
 int prov_tab_mutex ;
 int prov_tab_num ;
 int taskq_destroy (int *) ;

void
kcf_free_provider_desc(kcf_provider_desc_t *desc)
{
 if (desc == ((void*)0))
  return;

 mutex_enter(&prov_tab_mutex);
 if (desc->pd_prov_id != KCF_PROVID_INVALID) {

  ASSERT(prov_tab[desc->pd_prov_id] != ((void*)0));
  prov_tab[desc->pd_prov_id] = ((void*)0);
  prov_tab_num--;
 }
 mutex_exit(&prov_tab_mutex);



 if (desc->pd_description != ((void*)0))
  kmem_free(desc->pd_description,
      CRYPTO_PROVIDER_DESCR_MAX_LEN + 1);

 if (desc->pd_ops_vector != ((void*)0)) {

  if (desc->pd_ops_vector->co_control_ops != ((void*)0))
   kmem_free(desc->pd_ops_vector->co_control_ops,
       sizeof (crypto_control_ops_t));

  if (desc->pd_ops_vector->co_digest_ops != ((void*)0))
   kmem_free(desc->pd_ops_vector->co_digest_ops,
       sizeof (crypto_digest_ops_t));

  if (desc->pd_ops_vector->co_cipher_ops != ((void*)0))
   kmem_free(desc->pd_ops_vector->co_cipher_ops,
       sizeof (crypto_cipher_ops_t));

  if (desc->pd_ops_vector->co_mac_ops != ((void*)0))
   kmem_free(desc->pd_ops_vector->co_mac_ops,
       sizeof (crypto_mac_ops_t));

  if (desc->pd_ops_vector->co_sign_ops != ((void*)0))
   kmem_free(desc->pd_ops_vector->co_sign_ops,
       sizeof (crypto_sign_ops_t));

  if (desc->pd_ops_vector->co_verify_ops != ((void*)0))
   kmem_free(desc->pd_ops_vector->co_verify_ops,
       sizeof (crypto_verify_ops_t));

  if (desc->pd_ops_vector->co_dual_ops != ((void*)0))
   kmem_free(desc->pd_ops_vector->co_dual_ops,
       sizeof (crypto_dual_ops_t));

  if (desc->pd_ops_vector->co_dual_cipher_mac_ops != ((void*)0))
   kmem_free(desc->pd_ops_vector->co_dual_cipher_mac_ops,
       sizeof (crypto_dual_cipher_mac_ops_t));

  if (desc->pd_ops_vector->co_random_ops != ((void*)0))
   kmem_free(desc->pd_ops_vector->co_random_ops,
       sizeof (crypto_random_number_ops_t));

  if (desc->pd_ops_vector->co_session_ops != ((void*)0))
   kmem_free(desc->pd_ops_vector->co_session_ops,
       sizeof (crypto_session_ops_t));

  if (desc->pd_ops_vector->co_object_ops != ((void*)0))
   kmem_free(desc->pd_ops_vector->co_object_ops,
       sizeof (crypto_object_ops_t));

  if (desc->pd_ops_vector->co_key_ops != ((void*)0))
   kmem_free(desc->pd_ops_vector->co_key_ops,
       sizeof (crypto_key_ops_t));

  if (desc->pd_ops_vector->co_provider_ops != ((void*)0))
   kmem_free(desc->pd_ops_vector->co_provider_ops,
       sizeof (crypto_provider_management_ops_t));

  if (desc->pd_ops_vector->co_ctx_ops != ((void*)0))
   kmem_free(desc->pd_ops_vector->co_ctx_ops,
       sizeof (crypto_ctx_ops_t));

  if (desc->pd_ops_vector->co_mech_ops != ((void*)0))
   kmem_free(desc->pd_ops_vector->co_mech_ops,
       sizeof (crypto_mech_ops_t));

  if (desc->pd_ops_vector->co_nostore_key_ops != ((void*)0))
   kmem_free(desc->pd_ops_vector->co_nostore_key_ops,
       sizeof (crypto_nostore_key_ops_t));

  kmem_free(desc->pd_ops_vector, sizeof (crypto_ops_t));
 }

 if (desc->pd_mechanisms != ((void*)0))

  kmem_free(desc->pd_mechanisms, sizeof (crypto_mech_info_t) *
      desc->pd_mech_list_count);

 if (desc->pd_sched_info.ks_taskq != ((void*)0))
  taskq_destroy(desc->pd_sched_info.ks_taskq);

 mutex_destroy(&desc->pd_lock);
 cv_destroy(&desc->pd_resume_cv);
 cv_destroy(&desc->pd_remove_cv);

 kmem_free(desc, sizeof (kcf_provider_desc_t));
}
