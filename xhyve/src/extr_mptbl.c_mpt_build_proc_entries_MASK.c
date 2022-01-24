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
typedef  scalar_t__ uint8_t ;
typedef  TYPE_1__* proc_entry_ptr ;
struct TYPE_4__ {int /*<<< orphan*/  feature_flags; int /*<<< orphan*/  cpu_signature; int /*<<< orphan*/  cpu_flags; int /*<<< orphan*/  apic_version; scalar_t__ apic_id; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  LAPIC_VERSION ; 
 int /*<<< orphan*/  MPCT_ENTRY_PROCESSOR ; 
 int /*<<< orphan*/  MPEP_FEATURES ; 
 int /*<<< orphan*/  MPEP_SIG ; 
 int /*<<< orphan*/  PROCENTRY_FLAG_BP ; 
 int /*<<< orphan*/  PROCENTRY_FLAG_EN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(proc_entry_ptr mpep, int ncpu)
{
	int i;

	for (i = 0; i < ncpu; i++) {
		FUNC0(mpep, 0, sizeof(*mpep));
		mpep->type = MPCT_ENTRY_PROCESSOR;
		mpep->apic_id = (uint8_t) i; // XXX
		mpep->apic_version = LAPIC_VERSION;
		mpep->cpu_flags = PROCENTRY_FLAG_EN;
		if (i == 0)
			mpep->cpu_flags |= PROCENTRY_FLAG_BP;
		mpep->cpu_signature = MPEP_SIG;
		mpep->feature_flags = MPEP_FEATURES;
		mpep++;
	}
}