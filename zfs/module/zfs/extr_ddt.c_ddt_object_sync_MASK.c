#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  enum ddt_type { ____Placeholder_ddt_type } ddt_type ;
typedef  enum ddt_class { ____Placeholder_ddt_class } ddt_class ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_11__ {int doi_physical_blocks_512; int doi_fill_count; int doi_data_block_size; } ;
typedef  TYPE_2__ dmu_object_info_t ;
struct TYPE_12__ {int /*<<< orphan*/ ** ddt_histogram; TYPE_1__* ddt_spa; int /*<<< orphan*/  ddt_os; TYPE_4__** ddt_object_stats; } ;
typedef  TYPE_3__ ddt_t ;
struct TYPE_13__ {int ddo_dspace; int ddo_mspace; int /*<<< orphan*/  ddo_count; } ;
typedef  TYPE_4__ ddt_object_t ;
typedef  int /*<<< orphan*/  ddt_histogram_t ;
struct TYPE_10__ {int /*<<< orphan*/  spa_ddt_stat_object; } ;

/* Variables and functions */
 int DDT_NAMELEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,int,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(ddt_t *ddt, enum ddt_type type, enum ddt_class class,
    dmu_tx_t *tx)
{
	ddt_object_t *ddo = &ddt->ddt_object_stats[type][class];
	dmu_object_info_t doi;
	uint64_t count;
	char name[DDT_NAMELEN];

	FUNC3(ddt, type, class, name);

	FUNC0(FUNC4(ddt->ddt_os, ddt->ddt_spa->spa_ddt_stat_object, name,
	    sizeof (uint64_t), sizeof (ddt_histogram_t) / sizeof (uint64_t),
	    &ddt->ddt_histogram[type][class], tx) == 0);

	/*
	 * Cache DDT statistics; this is the only time they'll change.
	 */
	FUNC0(FUNC2(ddt, type, class, &doi) == 0);
	FUNC0(FUNC1(ddt, type, class, &count) == 0);

	ddo->ddo_count = count;
	ddo->ddo_dspace = doi.doi_physical_blocks_512 << 9;
	ddo->ddo_mspace = doi.doi_fill_count * doi.doi_data_block_size;
}