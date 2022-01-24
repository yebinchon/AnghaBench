#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int num_subplans; int /*<<< orphan*/ * subplanstates; } ;
typedef  int /*<<< orphan*/  CustomScanState ;
typedef  TYPE_1__ ChunkAppendState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(CustomScanState *node)
{
	ChunkAppendState *state = (ChunkAppendState *) node;
	int i;

	for (i = 0; i < state->num_subplans; i++)
	{
		FUNC0(state->subplanstates[i]);
	}
}