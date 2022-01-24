#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * ks_taskq; } ;
struct TYPE_6__ {size_t pd_prov_id; int pd_mech_list_count; int /*<<< orphan*/  pd_remove_cv; int /*<<< orphan*/  pd_resume_cv; int /*<<< orphan*/  pd_lock; TYPE_1__ pd_sched_info; struct TYPE_6__* pd_mechanisms; struct TYPE_6__* pd_ops_vector; struct TYPE_6__* co_nostore_key_ops; struct TYPE_6__* co_mech_ops; struct TYPE_6__* co_ctx_ops; struct TYPE_6__* co_provider_ops; struct TYPE_6__* co_key_ops; struct TYPE_6__* co_object_ops; struct TYPE_6__* co_session_ops; struct TYPE_6__* co_random_ops; struct TYPE_6__* co_dual_cipher_mac_ops; struct TYPE_6__* co_dual_ops; struct TYPE_6__* co_verify_ops; struct TYPE_6__* co_sign_ops; struct TYPE_6__* co_mac_ops; struct TYPE_6__* co_cipher_ops; struct TYPE_6__* co_digest_ops; struct TYPE_6__* co_control_ops; struct TYPE_6__* pd_description; } ;
typedef  TYPE_2__ kcf_provider_desc_t ;
typedef  int /*<<< orphan*/  crypto_verify_ops_t ;
typedef  int /*<<< orphan*/  crypto_sign_ops_t ;
typedef  int /*<<< orphan*/  crypto_session_ops_t ;
typedef  int /*<<< orphan*/  crypto_random_number_ops_t ;
typedef  int /*<<< orphan*/  crypto_provider_management_ops_t ;
typedef  int /*<<< orphan*/  crypto_ops_t ;
typedef  int /*<<< orphan*/  crypto_object_ops_t ;
typedef  int /*<<< orphan*/  crypto_nostore_key_ops_t ;
typedef  int /*<<< orphan*/  crypto_mech_ops_t ;
typedef  int /*<<< orphan*/  crypto_mech_info_t ;
typedef  int /*<<< orphan*/  crypto_mac_ops_t ;
typedef  int /*<<< orphan*/  crypto_key_ops_t ;
typedef  int /*<<< orphan*/  crypto_dual_ops_t ;
typedef  int /*<<< orphan*/  crypto_dual_cipher_mac_ops_t ;
typedef  int /*<<< orphan*/  crypto_digest_ops_t ;
typedef  int /*<<< orphan*/  crypto_ctx_ops_t ;
typedef  int /*<<< orphan*/  crypto_control_ops_t ;
typedef  int /*<<< orphan*/  crypto_cipher_ops_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CRYPTO_PROVIDER_DESCR_MAX_LEN ; 
 size_t KCF_PROVID_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** prov_tab ; 
 int /*<<< orphan*/  prov_tab_mutex ; 
 int /*<<< orphan*/  prov_tab_num ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(kcf_provider_desc_t *desc)
{
	if (desc == NULL)
		return;

	FUNC4(&prov_tab_mutex);
	if (desc->pd_prov_id != KCF_PROVID_INVALID) {
		/* release the associated providers table entry */
		FUNC0(prov_tab[desc->pd_prov_id] != NULL);
		prov_tab[desc->pd_prov_id] = NULL;
		prov_tab_num--;
	}
	FUNC5(&prov_tab_mutex);

	/* free the kernel memory associated with the provider descriptor */

	if (desc->pd_description != NULL)
		FUNC2(desc->pd_description,
		    CRYPTO_PROVIDER_DESCR_MAX_LEN + 1);

	if (desc->pd_ops_vector != NULL) {

		if (desc->pd_ops_vector->co_control_ops != NULL)
			FUNC2(desc->pd_ops_vector->co_control_ops,
			    sizeof (crypto_control_ops_t));

		if (desc->pd_ops_vector->co_digest_ops != NULL)
			FUNC2(desc->pd_ops_vector->co_digest_ops,
			    sizeof (crypto_digest_ops_t));

		if (desc->pd_ops_vector->co_cipher_ops != NULL)
			FUNC2(desc->pd_ops_vector->co_cipher_ops,
			    sizeof (crypto_cipher_ops_t));

		if (desc->pd_ops_vector->co_mac_ops != NULL)
			FUNC2(desc->pd_ops_vector->co_mac_ops,
			    sizeof (crypto_mac_ops_t));

		if (desc->pd_ops_vector->co_sign_ops != NULL)
			FUNC2(desc->pd_ops_vector->co_sign_ops,
			    sizeof (crypto_sign_ops_t));

		if (desc->pd_ops_vector->co_verify_ops != NULL)
			FUNC2(desc->pd_ops_vector->co_verify_ops,
			    sizeof (crypto_verify_ops_t));

		if (desc->pd_ops_vector->co_dual_ops != NULL)
			FUNC2(desc->pd_ops_vector->co_dual_ops,
			    sizeof (crypto_dual_ops_t));

		if (desc->pd_ops_vector->co_dual_cipher_mac_ops != NULL)
			FUNC2(desc->pd_ops_vector->co_dual_cipher_mac_ops,
			    sizeof (crypto_dual_cipher_mac_ops_t));

		if (desc->pd_ops_vector->co_random_ops != NULL)
			FUNC2(desc->pd_ops_vector->co_random_ops,
			    sizeof (crypto_random_number_ops_t));

		if (desc->pd_ops_vector->co_session_ops != NULL)
			FUNC2(desc->pd_ops_vector->co_session_ops,
			    sizeof (crypto_session_ops_t));

		if (desc->pd_ops_vector->co_object_ops != NULL)
			FUNC2(desc->pd_ops_vector->co_object_ops,
			    sizeof (crypto_object_ops_t));

		if (desc->pd_ops_vector->co_key_ops != NULL)
			FUNC2(desc->pd_ops_vector->co_key_ops,
			    sizeof (crypto_key_ops_t));

		if (desc->pd_ops_vector->co_provider_ops != NULL)
			FUNC2(desc->pd_ops_vector->co_provider_ops,
			    sizeof (crypto_provider_management_ops_t));

		if (desc->pd_ops_vector->co_ctx_ops != NULL)
			FUNC2(desc->pd_ops_vector->co_ctx_ops,
			    sizeof (crypto_ctx_ops_t));

		if (desc->pd_ops_vector->co_mech_ops != NULL)
			FUNC2(desc->pd_ops_vector->co_mech_ops,
			    sizeof (crypto_mech_ops_t));

		if (desc->pd_ops_vector->co_nostore_key_ops != NULL)
			FUNC2(desc->pd_ops_vector->co_nostore_key_ops,
			    sizeof (crypto_nostore_key_ops_t));

		FUNC2(desc->pd_ops_vector, sizeof (crypto_ops_t));
	}

	if (desc->pd_mechanisms != NULL)
		/* free the memory associated with the mechanism info's */
		FUNC2(desc->pd_mechanisms, sizeof (crypto_mech_info_t) *
		    desc->pd_mech_list_count);

	if (desc->pd_sched_info.ks_taskq != NULL)
		FUNC6(desc->pd_sched_info.ks_taskq);

	FUNC3(&desc->pd_lock);
	FUNC1(&desc->pd_resume_cv);
	FUNC1(&desc->pd_remove_cv);

	FUNC2(desc, sizeof (kcf_provider_desc_t));
}