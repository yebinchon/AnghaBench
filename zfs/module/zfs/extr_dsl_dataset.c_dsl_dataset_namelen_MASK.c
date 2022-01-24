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
struct TYPE_4__ {int /*<<< orphan*/  ds_dir; int /*<<< orphan*/  ds_lock; int /*<<< orphan*/  ds_snapname; } ;
typedef  TYPE_1__ dsl_dataset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(dsl_dataset_t *ds)
{
	FUNC0(FUNC1(ds));
	FUNC3(&ds->ds_lock);
	int len = FUNC5(ds->ds_snapname);
	FUNC4(&ds->ds_lock);
	/* add '@' if ds is a snap */
	if (len > 0)
		len++;
	len += FUNC2(ds->ds_dir);
	return (len);
}