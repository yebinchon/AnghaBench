#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  ds_lock; int /*<<< orphan*/ * ds_owner; TYPE_1__* ds_dir; } ;
typedef  TYPE_2__ dsl_dataset_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_7__ {int /*<<< orphan*/  dd_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  SPA_FEATURE_REDACTED_DATASETS ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfs_allow_redacted_dataset_mount ; 

boolean_t
FUNC7(dsl_dataset_t *ds, void *tag, boolean_t override)
{
	boolean_t gotit = FALSE;

	FUNC0(FUNC4(ds->ds_dir->dd_pool));
	FUNC5(&ds->ds_lock);
	if (ds->ds_owner == NULL && (override || !(FUNC1(ds) ||
	    (FUNC2(ds,
	    SPA_FEATURE_REDACTED_DATASETS) &&
	    !zfs_allow_redacted_dataset_mount)))) {
		ds->ds_owner = tag;
		FUNC3(ds, tag);
		gotit = TRUE;
	}
	FUNC6(&ds->ds_lock);
	return (gotit);
}