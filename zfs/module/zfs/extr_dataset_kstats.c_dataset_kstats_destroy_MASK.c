#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  empty_dataset_kstats ;
struct TYPE_8__ {int /*<<< orphan*/  das_nunlinked; int /*<<< orphan*/  das_nunlinks; int /*<<< orphan*/  das_nread; int /*<<< orphan*/  das_reads; int /*<<< orphan*/  das_nwritten; int /*<<< orphan*/  das_writes; } ;
struct TYPE_9__ {TYPE_1__ dk_aggsums; TYPE_4__* dk_kstats; } ;
typedef  TYPE_2__ dataset_kstats_t ;
struct TYPE_10__ {int /*<<< orphan*/  dkv_ds_name; } ;
typedef  TYPE_3__ dataset_kstat_values_t ;
struct TYPE_11__ {TYPE_3__* ks_data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 

void
FUNC5(dataset_kstats_t *dk)
{
	if (dk->dk_kstats == NULL)
		return;

	dataset_kstat_values_t *dkv = dk->dk_kstats->ks_data;
	FUNC3(FUNC1(&dkv->dkv_ds_name),
	    FUNC0(&dkv->dkv_ds_name));
	FUNC3(dkv, sizeof (empty_dataset_kstats));

	FUNC4(dk->dk_kstats);
	dk->dk_kstats = NULL;

	FUNC2(&dk->dk_aggsums.das_writes);
	FUNC2(&dk->dk_aggsums.das_nwritten);
	FUNC2(&dk->dk_aggsums.das_reads);
	FUNC2(&dk->dk_aggsums.das_nread);
	FUNC2(&dk->dk_aggsums.das_nunlinks);
	FUNC2(&dk->dk_aggsums.das_nunlinked);
}