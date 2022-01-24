#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_5__* gme_ds; scalar_t__ raw; } ;
typedef  TYPE_2__ guid_map_entry_t ;
typedef  int /*<<< orphan*/  ds_hold_flags_t ;
typedef  TYPE_2__ avl_tree_t ;
struct TYPE_12__ {TYPE_1__* ds_objset; } ;
struct TYPE_10__ {int /*<<< orphan*/  os_raw_receive; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  DS_HOLD_FLAG_DECRYPT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (TYPE_2__*,void**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	avl_tree_t *ca = arg;
	void *cookie = NULL;
	guid_map_entry_t *gmep;

	while ((gmep = FUNC1(ca, &cookie)) != NULL) {
		ds_hold_flags_t dsflags = DS_HOLD_FLAG_DECRYPT;

		if (gmep->raw) {
			gmep->gme_ds->ds_objset->os_raw_receive = B_FALSE;
			dsflags &= ~DS_HOLD_FLAG_DECRYPT;
		}

		FUNC2(gmep->gme_ds, dsflags, gmep);
		FUNC3(gmep, sizeof (guid_map_entry_t));
	}
	FUNC0(ca);
	FUNC3(ca, sizeof (avl_tree_t));
}