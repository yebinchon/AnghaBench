#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_11__ {TYPE_3__** ddt_histogram; } ;
typedef  TYPE_1__ ddt_t ;
struct TYPE_12__ {int /*<<< orphan*/  dds_ref_blocks; } ;
typedef  TYPE_2__ ddt_stat_t ;
struct TYPE_13__ {int /*<<< orphan*/ * ddh_stat; } ;
typedef  TYPE_3__ ddt_histogram_t ;
struct TYPE_14__ {size_t dde_type; size_t dde_class; } ;
typedef  TYPE_4__ ddt_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_4__*,TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(ddt_t *ddt, ddt_entry_t *dde, uint64_t neg)
{
	ddt_stat_t dds;
	ddt_histogram_t *ddh;
	int bucket;

	FUNC2(ddt, dde, &dds);

	bucket = FUNC3(dds.dds_ref_blocks) - 1;
	FUNC0(bucket >= 0);

	ddh = &ddt->ddt_histogram[dde->dde_type][dde->dde_class];

	FUNC1(&ddh->ddh_stat[bucket], &dds, neg);
}