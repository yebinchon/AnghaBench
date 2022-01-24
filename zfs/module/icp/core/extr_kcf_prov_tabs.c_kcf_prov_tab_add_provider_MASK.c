#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint_t ;
struct TYPE_6__ {size_t pd_prov_id; scalar_t__ pd_kcf_prov_handle; } ;
typedef  TYPE_1__ kcf_provider_desc_t ;
typedef  scalar_t__ crypto_kcf_provider_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CE_WARN ; 
 int CRYPTO_HOST_MEMORY ; 
 int CRYPTO_SUCCESS ; 
 size_t KCF_MAX_PROVIDERS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__** prov_tab ; 
 int /*<<< orphan*/  prov_tab_mutex ; 
 int /*<<< orphan*/  prov_tab_num ; 

int
FUNC6(kcf_provider_desc_t *prov_desc)
{
	uint_t i;

	FUNC0(prov_tab != NULL);

	FUNC4(&prov_tab_mutex);

	/* find free slot in providers table */
	for (i = 1; i < KCF_MAX_PROVIDERS && prov_tab[i] != NULL; i++)
		;
	if (i == KCF_MAX_PROVIDERS) {
		/* ran out of providers entries */
		FUNC5(&prov_tab_mutex);
		FUNC3(CE_WARN, "out of providers entries");
		return (CRYPTO_HOST_MEMORY);
	}

	/* initialize entry */
	prov_tab[i] = prov_desc;
	FUNC2(prov_desc);
	FUNC1(prov_desc);
	prov_tab_num++;

	FUNC5(&prov_tab_mutex);

	/* update provider descriptor */
	prov_desc->pd_prov_id = i;

	/*
	 * The KCF-private provider handle is defined as the internal
	 * provider id.
	 */
	prov_desc->pd_kcf_prov_handle =
	    (crypto_kcf_provider_handle_t)prov_desc->pd_prov_id;

	return (CRYPTO_SUCCESS);
}