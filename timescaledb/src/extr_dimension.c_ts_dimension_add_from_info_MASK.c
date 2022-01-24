#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ type; int /*<<< orphan*/  interval; int /*<<< orphan*/  partitioning_func; int /*<<< orphan*/  num_slices; int /*<<< orphan*/  coltype; int /*<<< orphan*/ * colname; TYPE_2__* ht; int /*<<< orphan*/  dimension_id; int /*<<< orphan*/  table_relid; scalar_t__ set_not_null; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
struct TYPE_6__ {TYPE_1__ fd; } ;
typedef  TYPE_3__ DimensionInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DIMENSION_TYPE_OPEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(DimensionInfo *info)
{
	if (info->set_not_null && info->type == DIMENSION_TYPE_OPEN)
		FUNC2(info->table_relid, FUNC1(*info->colname));

	FUNC0(info->ht != NULL);

	info->dimension_id = FUNC3(info->ht->fd.id,
										  info->colname,
										  info->coltype,
										  info->num_slices,
										  info->partitioning_func,
										  info->interval);
}