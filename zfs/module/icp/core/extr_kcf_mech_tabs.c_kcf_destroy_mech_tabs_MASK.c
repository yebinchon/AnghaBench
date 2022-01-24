#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t kcf_ops_class_t ;
struct TYPE_3__ {int /*<<< orphan*/  me_mutex; } ;
typedef  TYPE_1__ kcf_mech_entry_t ;
struct TYPE_4__ {int met_size; TYPE_1__* met_tab; } ;

/* Variables and functions */
 size_t KCF_FIRST_OPSCLASS ; 
 size_t KCF_LAST_OPSCLASS ; 
 scalar_t__ kcf_mech_hash ; 
 int /*<<< orphan*/  kcf_mech_tabs_lock ; 
 TYPE_2__* kcf_mech_tabs_tab ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(void)
{
	int i, max;
	kcf_ops_class_t class;
	kcf_mech_entry_t *me_tab;

	if (kcf_mech_hash)
		FUNC0(kcf_mech_hash);

	FUNC1(&kcf_mech_tabs_lock);

	for (class = KCF_FIRST_OPSCLASS; class <= KCF_LAST_OPSCLASS; class++) {
		max = kcf_mech_tabs_tab[class].met_size;
		me_tab = kcf_mech_tabs_tab[class].met_tab;
		for (i = 0; i < max; i++)
			FUNC1(&(me_tab[i].me_mutex));
	}
}