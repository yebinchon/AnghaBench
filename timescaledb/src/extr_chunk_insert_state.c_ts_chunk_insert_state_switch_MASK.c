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
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_3__ {int /*<<< orphan*/  rel; int /*<<< orphan*/  result_relation_info; } ;
typedef  TYPE_1__ ChunkInsertState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(ChunkInsertState *state)
{
	/*
	 * Adjust the slots descriptor.
	 *
	 * Note: we have to adjust the slot descriptor whether or not this chunk
	 * has a tup_conv_map since we reuse the same slot across chunks. thus the
	 * slot will be set to the last chunk's slot descriptor and NOT the
	 * hypertable's slot descriptor.
	 */
	if (FUNC2(state->result_relation_info) &&
		FUNC3(state->result_relation_info) != NULL)
	{
		TupleTableSlot *slot = FUNC4(
			FUNC3(state->result_relation_info));

		FUNC0(slot, FUNC1(state->rel));
	}
}