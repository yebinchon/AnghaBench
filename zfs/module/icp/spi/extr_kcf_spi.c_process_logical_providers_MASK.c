#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  pd_flags; } ;
typedef  TYPE_1__ kcf_provider_desc_t ;
struct TYPE_10__ {int pi_logical_provider_count; scalar_t__* pi_logical_providers; } ;
typedef  TYPE_2__ crypto_provider_info_t ;
typedef  scalar_t__ crypto_provider_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  KCF_LPROV_MEMBER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (scalar_t__) ; 

__attribute__((used)) static void
FUNC3(crypto_provider_info_t *info, kcf_provider_desc_t *hp)
{
	kcf_provider_desc_t *lp;
	crypto_provider_id_t handle;
	int count = info->pi_logical_provider_count;
	int i;

	/* add hardware provider to each logical provider */
	for (i = 0; i < count; i++) {
		handle = info->pi_logical_providers[i];
		lp = FUNC2((crypto_provider_id_t)handle);
		if (lp == NULL) {
			continue;
		}
		FUNC1(hp, lp);
		hp->pd_flags |= KCF_LPROV_MEMBER;

		/*
		 * A hardware provider has to have the provider descriptor of
		 * every logical provider it belongs to, so it can be removed
		 * from the logical provider if the hardware provider
		 * unregisters from the framework.
		 */
		FUNC1(lp, hp);
		FUNC0(lp);
	}
}