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
typedef  int /*<<< orphan*/  kcf_provider_desc_t ;
struct TYPE_6__ {int /*<<< orphan*/  me_mutex; int /*<<< orphan*/  me_name; TYPE_1__* me_sw_prov; } ;
typedef  TYPE_2__ kcf_mech_entry_t ;
typedef  int /*<<< orphan*/  crypto_mech_type_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_5__ {int /*<<< orphan*/ * pm_prov_desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CE_WARN ; 
 int CRYPTO_MECHANISM_INVALID ; 
 int CRYPTO_MECH_NOT_SUPPORTED ; 
 int CRYPTO_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ KCF_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(crypto_mech_type_t mech_type, kcf_provider_desc_t **pd,
    kcf_mech_entry_t **mep, boolean_t log_warn)
{
	kcf_mech_entry_t *me;

	/* get the mechanism entry for this mechanism */
	if (FUNC2(mech_type, &me) != KCF_SUCCESS)
		return (CRYPTO_MECHANISM_INVALID);

	/*
	 * Get the software provider for this mechanism.
	 * Lock the mech_entry until we grab the 'pd'.
	 */
	FUNC3(&me->me_mutex);

	if (me->me_sw_prov == NULL ||
	    (*pd = me->me_sw_prov->pm_prov_desc) == NULL) {
		/* no SW provider for this mechanism */
		if (log_warn)
			FUNC1(CE_WARN, "no SW provider for \"%s\"\n",
			    me->me_name);
		FUNC4(&me->me_mutex);
		return (CRYPTO_MECH_NOT_SUPPORTED);
	}

	FUNC0(*pd);
	FUNC4(&me->me_mutex);

	if (mep != NULL)
		*mep = me;

	return (CRYPTO_SUCCESS);
}