#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  hypertable_constraint_name; int /*<<< orphan*/  constraint_name; int /*<<< orphan*/  dimension_slice_id; int /*<<< orphan*/  chunk_id; } ;
struct TYPE_6__ {TYPE_1__ fd; } ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_2__ ChunkConstraint ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_chunk_constraint_chunk_id ; 
 int /*<<< orphan*/  Anum_chunk_constraint_constraint_name ; 
 int /*<<< orphan*/  Anum_chunk_constraint_dimension_slice_id ; 
 int /*<<< orphan*/  Anum_chunk_constraint_hypertable_constraint_name ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int Natts_chunk_constraint ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(ChunkConstraint *cc, Datum values[Natts_chunk_constraint],
								   bool nulls[Natts_chunk_constraint])
{
	FUNC4(values, 0, sizeof(Datum) * Natts_chunk_constraint);
	values[FUNC0(Anum_chunk_constraint_chunk_id)] =
		FUNC1(cc->fd.chunk_id);
	values[FUNC0(Anum_chunk_constraint_dimension_slice_id)] =
		FUNC1(cc->fd.dimension_slice_id);
	values[FUNC0(Anum_chunk_constraint_constraint_name)] =
		FUNC2(&cc->fd.constraint_name);
	values[FUNC0(Anum_chunk_constraint_hypertable_constraint_name)] =
		FUNC2(&cc->fd.hypertable_constraint_name);

	if (FUNC3(cc))
		nulls[FUNC0(Anum_chunk_constraint_hypertable_constraint_name)] = true;
	else
		nulls[FUNC0(Anum_chunk_constraint_dimension_slice_id)] = true;
}