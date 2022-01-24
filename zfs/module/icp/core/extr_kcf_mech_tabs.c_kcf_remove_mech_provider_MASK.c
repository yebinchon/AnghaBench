#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int pd_prov_type; } ;
typedef  TYPE_1__ kcf_provider_desc_t ;
struct TYPE_11__ {scalar_t__ ml_kcf_mechid; TYPE_1__* pm_prov_desc; struct TYPE_11__* pm_next; struct TYPE_11__* ml_next; struct TYPE_11__* pm_mi_list; } ;
typedef  TYPE_2__ kcf_prov_mech_desc_t ;
struct TYPE_12__ {int /*<<< orphan*/  me_mutex; TYPE_2__* me_sw_prov; TYPE_2__* me_hw_prov_chain; int /*<<< orphan*/  me_num_hwprov; } ;
typedef  TYPE_3__ kcf_mech_entry_t ;
typedef  scalar_t__ crypto_mech_type_t ;
typedef  TYPE_2__ crypto_mech_info_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  CRYPTO_HW_PROVIDER 129 
 int CRYPTO_LOGICAL_PROVIDER ; 
 scalar_t__ CRYPTO_MECH_INVALID ; 
#define  CRYPTO_SW_PROVIDER 128 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ KCF_SUCCESS ; 
 scalar_t__ FUNC3 (scalar_t__,TYPE_3__**) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(char *mech_name, kcf_provider_desc_t *prov_desc)
{
	crypto_mech_type_t mech_type;
	kcf_prov_mech_desc_t *prov_mech = NULL, *prov_chain;
	kcf_prov_mech_desc_t **prev_entry_next;
	kcf_mech_entry_t *mech_entry;
	crypto_mech_info_list_t *mil, *mil2, *next, **prev_next;

	FUNC0(prov_desc->pd_prov_type != CRYPTO_LOGICAL_PROVIDER);

	/* get the KCF mech type that was assigned to the mechanism */
	if ((mech_type = FUNC4(mech_name)) ==
	    CRYPTO_MECH_INVALID) {
		/*
		 * Provider was not allowed for this mech due to policy or
		 * configuration.
		 */
		return;
	}

	/* get a ptr to the mech_entry that was created */
	if (FUNC3(mech_type, &mech_entry) != KCF_SUCCESS) {
		/*
		 * Provider was not allowed for this mech due to policy or
		 * configuration.
		 */
		return;
	}

	FUNC6(&mech_entry->me_mutex);

	switch (prov_desc->pd_prov_type) {

	case CRYPTO_HW_PROVIDER:
		/* find the provider in the mech_entry chain */
		prev_entry_next = &mech_entry->me_hw_prov_chain;
		prov_mech = mech_entry->me_hw_prov_chain;
		while (prov_mech != NULL &&
		    prov_mech->pm_prov_desc != prov_desc) {
			prev_entry_next = &prov_mech->pm_next;
			prov_mech = prov_mech->pm_next;
		}

		if (prov_mech == NULL) {
			/* entry not found, simply return */
			FUNC7(&mech_entry->me_mutex);
			return;
		}

		/* remove provider entry from mech_entry chain */
		*prev_entry_next = prov_mech->pm_next;
		FUNC0(mech_entry->me_num_hwprov > 0);
		mech_entry->me_num_hwprov--;
		break;

	case CRYPTO_SW_PROVIDER:
		if (mech_entry->me_sw_prov == NULL ||
		    mech_entry->me_sw_prov->pm_prov_desc != prov_desc) {
			/* not the software provider for this mechanism */
			FUNC7(&mech_entry->me_mutex);
			return;
		}
		prov_mech = mech_entry->me_sw_prov;
		mech_entry->me_sw_prov = NULL;
		break;
	default:
		/* unexpected crypto_provider_type_t */
		FUNC7(&mech_entry->me_mutex);
		return;
	}

	FUNC7(&mech_entry->me_mutex);

	/* Free the dual ops cross-reference lists  */
	mil = prov_mech->pm_mi_list;
	while (mil != NULL) {
		next = mil->ml_next;
		if (FUNC3(mil->ml_kcf_mechid,
		    &mech_entry) != KCF_SUCCESS) {
			mil = next;
			continue;
		}

		FUNC6(&mech_entry->me_mutex);
		if (prov_desc->pd_prov_type == CRYPTO_HW_PROVIDER)
			prov_chain = mech_entry->me_hw_prov_chain;
		else
			prov_chain = mech_entry->me_sw_prov;

		while (prov_chain != NULL) {
			if (prov_chain->pm_prov_desc == prov_desc) {
				prev_next = &prov_chain->pm_mi_list;
				mil2 = prov_chain->pm_mi_list;
				while (mil2 != NULL &&
				    mil2->ml_kcf_mechid != mech_type) {
					prev_next = &mil2->ml_next;
					mil2 = mil2->ml_next;
				}
				if (mil2 != NULL) {
					*prev_next = mil2->ml_next;
					FUNC5(mil2, sizeof (*mil2));
				}
				break;
			}
			prov_chain = prov_chain->pm_next;
		}

		FUNC7(&mech_entry->me_mutex);
		FUNC5(mil, sizeof (crypto_mech_info_list_t));
		mil = next;
	}

	/* free entry  */
	FUNC2(prov_mech->pm_prov_desc);
	FUNC1(prov_mech->pm_prov_desc);
	FUNC5(prov_mech, sizeof (kcf_prov_mech_desc_t));
}