#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  num_constraints; struct TYPE_8__* constraints; int /*<<< orphan*/  capacity; } ;
typedef  TYPE_1__ ChunkConstraints ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int) ; 
 TYPE_1__* FUNC2 (int) ; 
 TYPE_1__* FUNC3 (int) ; 

ChunkConstraints *
FUNC4(ChunkConstraints *ccs)
{
	ChunkConstraints *copy = FUNC2(sizeof(ChunkConstraints));

	FUNC1(copy, ccs, sizeof(ChunkConstraints));
	copy->constraints = FUNC3(FUNC0(ccs->capacity));
	FUNC1(copy->constraints, ccs->constraints, FUNC0(ccs->num_constraints));

	return copy;
}