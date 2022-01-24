#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  list; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  LOC_HTAB_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  htab_loc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* loc_dlg ; 
 int /*<<< orphan*/  locale_list ; 
 int /*<<< orphan*/  localization_initialized ; 

void FUNC3(BOOL reinit) {
	size_t i;
	for (i=0; i<FUNC0(loc_dlg); i++)
		FUNC2(&loc_dlg[i].list);
	if (!reinit)
		FUNC2(&locale_list);
	FUNC1(LOC_HTAB_SIZE, &htab_loc);
	localization_initialized = TRUE;
}