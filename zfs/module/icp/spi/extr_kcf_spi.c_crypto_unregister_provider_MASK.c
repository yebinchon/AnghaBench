#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint_t ;
struct TYPE_11__ {scalar_t__ pd_state; scalar_t__ pd_prov_type; scalar_t__ pd_refcnt; scalar_t__ pd_irefcnt; size_t pd_mech_list_count; int /*<<< orphan*/  pd_lock; int /*<<< orphan*/  pd_remove_cv; TYPE_1__* pd_mechanisms; int /*<<< orphan*/  pd_resume_cv; } ;
typedef  TYPE_2__ kcf_provider_desc_t ;
typedef  scalar_t__ kcf_prov_state_t ;
typedef  int /*<<< orphan*/  crypto_provider_id_t ;
typedef  scalar_t__ crypto_kcf_provider_handle_t ;
struct TYPE_10__ {int /*<<< orphan*/  cm_mech_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int CRYPTO_BUSY ; 
 scalar_t__ CRYPTO_LOGICAL_PROVIDER ; 
 scalar_t__ CRYPTO_SUCCESS ; 
 scalar_t__ CRYPTO_SW_PROVIDER ; 
 int CRYPTO_UNKNOWN_PROVIDER ; 
 scalar_t__ KCF_PROV_BUSY ; 
 scalar_t__ KCF_PROV_DISABLED ; 
 scalar_t__ KCF_PROV_FREED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ KCF_PROV_REMOVED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 

int
FUNC13(crypto_kcf_provider_handle_t handle)
{
	uint_t mech_idx;
	kcf_provider_desc_t *desc;
	kcf_prov_state_t saved_state;

	/* lookup provider descriptor */
	if ((desc = FUNC7((crypto_provider_id_t)handle)) == NULL)
		return (CRYPTO_UNKNOWN_PROVIDER);

	FUNC10(&desc->pd_lock);
	/*
	 * Check if any other thread is disabling or removing
	 * this provider. We return if this is the case.
	 */
	if (desc->pd_state >= KCF_PROV_DISABLED) {
		FUNC11(&desc->pd_lock);
		/* Release reference held by kcf_prov_tab_lookup(). */
		FUNC1(desc);
		return (CRYPTO_BUSY);
	}

	saved_state = desc->pd_state;
	desc->pd_state = KCF_PROV_REMOVED;

	if (saved_state == KCF_PROV_BUSY) {
		/*
		 * The per-provider taskq threads may be waiting. We
		 * signal them so that they can start failing requests.
		 */
		FUNC2(&desc->pd_resume_cv);
	}

	if (desc->pd_prov_type == CRYPTO_SW_PROVIDER) {
		/*
		 * Check if this provider is currently being used.
		 * pd_irefcnt is the number of holds from the internal
		 * structures. We add one to account for the above lookup.
		 */
		if (desc->pd_refcnt > desc->pd_irefcnt + 1) {
			desc->pd_state = saved_state;
			FUNC11(&desc->pd_lock);
			/* Release reference held by kcf_prov_tab_lookup(). */
			FUNC1(desc);
			/*
			 * The administrator presumably will stop the clients
			 * thus removing the holds, when they get the busy
			 * return value.  Any retry will succeed then.
			 */
			return (CRYPTO_BUSY);
		}
	}
	FUNC11(&desc->pd_lock);

	if (desc->pd_prov_type != CRYPTO_SW_PROVIDER) {
		FUNC12(desc);
	}

	if (desc->pd_prov_type != CRYPTO_LOGICAL_PROVIDER) {
		/* remove the provider from the mechanisms tables */
		for (mech_idx = 0; mech_idx < desc->pd_mech_list_count;
		    mech_idx++) {
			FUNC9(
			    desc->pd_mechanisms[mech_idx].cm_mech_name, desc);
		}
	}

	/* remove provider from providers table */
	if (FUNC8((crypto_provider_id_t)handle) !=
	    CRYPTO_SUCCESS) {
		/* Release reference held by kcf_prov_tab_lookup(). */
		FUNC1(desc);
		return (CRYPTO_UNKNOWN_PROVIDER);
	}

	FUNC4(desc);

	if (desc->pd_prov_type == CRYPTO_SW_PROVIDER) {
		/* Release reference held by kcf_prov_tab_lookup(). */
		FUNC1(desc);

		/*
		 * Wait till the existing requests complete.
		 */
		FUNC10(&desc->pd_lock);
		while (desc->pd_state != KCF_PROV_FREED)
			FUNC3(&desc->pd_remove_cv, &desc->pd_lock);
		FUNC11(&desc->pd_lock);
	} else {
		/*
		 * Wait until requests that have been sent to the provider
		 * complete.
		 */
		FUNC10(&desc->pd_lock);
		while (desc->pd_irefcnt > 0)
			FUNC3(&desc->pd_remove_cv, &desc->pd_lock);
		FUNC11(&desc->pd_lock);
	}

	FUNC5(desc, B_FALSE);

	if (desc->pd_prov_type == CRYPTO_SW_PROVIDER) {
		/*
		 * This is the only place where kcf_free_provider_desc()
		 * is called directly. KCF_PROV_REFRELE() should free the
		 * structure in all other places.
		 */
		FUNC0(desc->pd_state == KCF_PROV_FREED &&
		    desc->pd_refcnt == 0);
		FUNC6(desc);
	} else {
		FUNC1(desc);
	}

	return (CRYPTO_SUCCESS);
}