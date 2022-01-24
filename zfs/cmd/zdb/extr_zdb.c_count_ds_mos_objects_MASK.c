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
struct TYPE_6__ {int /*<<< orphan*/  ds_dir; int /*<<< orphan*/  ds_bookmarks_obj; int /*<<< orphan*/  ds_object; } ;
typedef  TYPE_1__ dsl_dataset_t ;
struct TYPE_7__ {int /*<<< orphan*/  ds_snapnames_zapobj; int /*<<< orphan*/  ds_userrefs_obj; int /*<<< orphan*/  ds_props_obj; int /*<<< orphan*/  ds_next_clones_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_2__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(dsl_dataset_t *ds)
{
	FUNC3(ds->ds_object);
	FUNC3(FUNC2(ds)->ds_next_clones_obj);
	FUNC3(FUNC2(ds)->ds_props_obj);
	FUNC3(FUNC2(ds)->ds_userrefs_obj);
	FUNC3(FUNC2(ds)->ds_snapnames_zapobj);
	FUNC3(ds->ds_bookmarks_obj);

	if (!FUNC1(ds)) {
		FUNC0(ds->ds_dir);
	}
}