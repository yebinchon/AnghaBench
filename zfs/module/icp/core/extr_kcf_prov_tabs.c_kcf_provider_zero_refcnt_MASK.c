#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int pd_prov_type; int /*<<< orphan*/  pd_lock; int /*<<< orphan*/  pd_remove_cv; int /*<<< orphan*/  pd_state; } ;
typedef  TYPE_1__ kcf_provider_desc_t ;

/* Variables and functions */
#define  CRYPTO_HW_PROVIDER 130 
#define  CRYPTO_LOGICAL_PROVIDER 129 
#define  CRYPTO_SW_PROVIDER 128 
 int /*<<< orphan*/  KCF_PROV_DISABLED ; 
 int /*<<< orphan*/  KCF_PROV_FREED ; 
 int /*<<< orphan*/  KCF_PROV_REMOVED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(kcf_provider_desc_t *desc)
{
	FUNC2(&desc->pd_lock);
	switch (desc->pd_prov_type) {
	case CRYPTO_SW_PROVIDER:
		if (desc->pd_state == KCF_PROV_REMOVED ||
		    desc->pd_state == KCF_PROV_DISABLED) {
			desc->pd_state = KCF_PROV_FREED;
			FUNC0(&desc->pd_remove_cv);
			FUNC3(&desc->pd_lock);
			break;
		}
		/* FALLTHRU */

	case CRYPTO_HW_PROVIDER:
	case CRYPTO_LOGICAL_PROVIDER:
		FUNC3(&desc->pd_lock);
		FUNC1(desc);
	}
}