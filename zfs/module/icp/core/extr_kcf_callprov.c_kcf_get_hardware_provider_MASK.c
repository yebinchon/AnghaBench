#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {struct TYPE_14__* pl_next; TYPE_2__* pl_provider; } ;
typedef  TYPE_1__ kcf_provider_list_t ;
struct TYPE_15__ {scalar_t__ pd_prov_type; int pd_flags; scalar_t__ pd_state; int /*<<< orphan*/  pd_lock; TYPE_1__* pd_provider_list; } ;
typedef  TYPE_2__ kcf_provider_desc_t ;
typedef  size_t kcf_ops_class_t ;
struct TYPE_16__ {int met_size; TYPE_4__* met_tab; } ;
typedef  TYPE_3__ kcf_mech_entry_tab_t ;
struct TYPE_17__ {int /*<<< orphan*/  me_mutex; } ;
typedef  TYPE_4__ kcf_mech_entry_t ;
typedef  int /*<<< orphan*/  crypto_mech_type_t ;
typedef  int /*<<< orphan*/  crypto_func_group_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CRYPTO_DEVICE_ERROR ; 
 scalar_t__ CRYPTO_LOGICAL_PROVIDER ; 
 int CRYPTO_MECHANISM_INVALID ; 
 int /*<<< orphan*/  CRYPTO_MECH_INVALID ; 
 int CRYPTO_SUCCESS ; 
 int INT_MAX ; 
 size_t KCF_FIRST_OPSCLASS ; 
 int KCF_INVALID_INDX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 size_t KCF_LAST_OPSCLASS ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ KCF_PROV_BUSY ; 
 int FUNC4 (TYPE_2__*) ; 
 scalar_t__ KCF_PROV_READY ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int KCF_PROV_RESTRICTED ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* kcf_mech_tabs_tab ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int
FUNC10(crypto_mech_type_t mech_type_1,
    crypto_mech_type_t mech_type_2, boolean_t call_restrict,
    kcf_provider_desc_t *old, kcf_provider_desc_t **new, crypto_func_group_t fg)
{
	kcf_provider_desc_t *provider, *real_pd = old;
	kcf_provider_desc_t *gpd = NULL;	/* good provider */
	kcf_provider_desc_t *bpd = NULL;	/* busy provider */
	kcf_provider_list_t *p;
	kcf_ops_class_t class;
	kcf_mech_entry_t *me;
	kcf_mech_entry_tab_t *me_tab;
	int index, len, gqlen = INT_MAX, rv = CRYPTO_SUCCESS;

	/* get the mech entry for the specified mechanism */
	class = FUNC2(mech_type_1);
	if ((class < KCF_FIRST_OPSCLASS) || (class > KCF_LAST_OPSCLASS)) {
		return (CRYPTO_MECHANISM_INVALID);
	}

	me_tab = &kcf_mech_tabs_tab[class];
	index = FUNC3(mech_type_1);
	if ((index < 0) || (index >= me_tab->met_size)) {
		return (CRYPTO_MECHANISM_INVALID);
	}

	me = &((me_tab->met_tab)[index]);
	FUNC8(&me->me_mutex);

	/*
	 * We assume the provider descriptor will not go away because
	 * it is being held somewhere, i.e. its reference count has been
	 * incremented. In the case of the crypto module, the provider
	 * descriptor is held by the session structure.
	 */
	if (old->pd_prov_type == CRYPTO_LOGICAL_PROVIDER) {
		if (old->pd_provider_list == NULL) {
			real_pd = NULL;
			rv = CRYPTO_DEVICE_ERROR;
			goto out;
		}
		/*
		 * Find the least loaded real provider. KCF_PROV_LOAD gives
		 * the load (number of pending requests) of the provider.
		 */
		FUNC8(&old->pd_lock);
		p = old->pd_provider_list;
		while (p != NULL) {
			provider = p->pl_provider;

			FUNC0(provider->pd_prov_type !=
			    CRYPTO_LOGICAL_PROVIDER);

			if (call_restrict &&
			    (provider->pd_flags & KCF_PROV_RESTRICTED)) {
				p = p->pl_next;
				continue;
			}

			if (!FUNC7(provider, me, fg)) {
				p = p->pl_next;
				continue;
			}

			/* provider does second mech */
			if (mech_type_2 != CRYPTO_MECH_INVALID) {
				int i;

				i = FUNC6(provider,
				    mech_type_2);
				if (i == KCF_INVALID_INDX) {
					p = p->pl_next;
					continue;
				}
			}

			if (provider->pd_state != KCF_PROV_READY) {
				/* choose BUSY if no READY providers */
				if (provider->pd_state == KCF_PROV_BUSY)
					bpd = provider;
				p = p->pl_next;
				continue;
			}

			len = FUNC4(provider);
			if (len < gqlen) {
				gqlen = len;
				gpd = provider;
			}

			p = p->pl_next;
		}

		if (gpd != NULL) {
			real_pd = gpd;
			FUNC5(real_pd);
		} else if (bpd != NULL) {
			real_pd = bpd;
			FUNC5(real_pd);
		} else {
			/* can't find provider */
			real_pd = NULL;
			rv = CRYPTO_MECHANISM_INVALID;
		}
		FUNC9(&old->pd_lock);

	} else {
		if (!FUNC1(old) ||
		    (call_restrict && (old->pd_flags & KCF_PROV_RESTRICTED))) {
			real_pd = NULL;
			rv = CRYPTO_DEVICE_ERROR;
			goto out;
		}

		if (!FUNC7(old, me, fg)) {
			real_pd = NULL;
			rv = CRYPTO_MECHANISM_INVALID;
			goto out;
		}

		FUNC5(real_pd);
	}
out:
	FUNC9(&me->me_mutex);
	*new = real_pd;
	return (rv);
}