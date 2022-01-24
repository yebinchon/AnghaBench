#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* pd_kstat; } ;
typedef  TYPE_1__ kcf_provider_desc_t ;
struct TYPE_7__ {TYPE_1__* ks_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC4(kcf_provider_desc_t *desc)
{
	/* destroy the kstat created for this provider */
	if (desc->pd_kstat != NULL) {
		kcf_provider_desc_t *kspd = desc->pd_kstat->ks_private;

		/* release reference held by desc->pd_kstat->ks_private */
		FUNC0(desc == kspd);
		FUNC3(kspd->pd_kstat);
		desc->pd_kstat = NULL;
		FUNC2(kspd);
		FUNC1(kspd);
	}
}