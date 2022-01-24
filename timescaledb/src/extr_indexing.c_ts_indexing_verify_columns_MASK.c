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
struct TYPE_5__ {int /*<<< orphan*/  column_name; } ;
struct TYPE_7__ {TYPE_1__ fd; } ;
struct TYPE_6__ {int num_dimensions; TYPE_3__* dimensions; } ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_2__ Hyperspace ;
typedef  TYPE_3__ Dimension ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_TS_BAD_HYPERTABLE_INDEX_DEFINITION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC5(Hyperspace *hs, List *indexelems)
{
	int i;

	for (i = 0; i < hs->num_dimensions; i++)
	{
		Dimension *dim = &hs->dimensions[i];

		if (!FUNC4(indexelems, FUNC0(dim->fd.column_name)))
			FUNC1(ERROR,
					(FUNC2(ERRCODE_TS_BAD_HYPERTABLE_INDEX_DEFINITION),
					 FUNC3("cannot create a unique index without the column \"%s\" (used in "
							"partitioning)",
							FUNC0(dim->fd.column_name))));
	}
}