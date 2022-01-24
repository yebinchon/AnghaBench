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
typedef  scalar_t__ int32 ;
struct TYPE_3__ {int /*<<< orphan*/  desc; int /*<<< orphan*/  tuple; } ;
typedef  TYPE_1__ TupleInfo ;
typedef  int /*<<< orphan*/ * Name ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ChunkConstraints ;
typedef  int /*<<< orphan*/  ChunkConstraint ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_chunk_constraint_chunk_id ; 
 int /*<<< orphan*/  Anum_chunk_constraint_constraint_name ; 
 int /*<<< orphan*/  Anum_chunk_constraint_dimension_slice_id ; 
 int /*<<< orphan*/  Anum_chunk_constraint_hypertable_constraint_name ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int Natts_chunk_constraint ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  namein ; 

__attribute__((used)) static ChunkConstraint *
FUNC8(ChunkConstraints *ccs, TupleInfo *ti)
{
	bool nulls[Natts_chunk_constraint];
	Datum values[Natts_chunk_constraint];
	int32 dimension_slice_id;
	Name constraint_name;
	Name hypertable_constraint_name;

	FUNC7(ti->tuple, ti->desc, values, nulls);

	constraint_name =
		FUNC3(values[FUNC0(Anum_chunk_constraint_constraint_name)]);

	if (nulls[FUNC0(Anum_chunk_constraint_dimension_slice_id)])
	{
		dimension_slice_id = 0;
		hypertable_constraint_name = FUNC3(
			values[FUNC0(Anum_chunk_constraint_hypertable_constraint_name)]);
	}
	else
	{
		dimension_slice_id = FUNC2(
			values[FUNC0(Anum_chunk_constraint_dimension_slice_id)]);
		hypertable_constraint_name = FUNC3(FUNC4(namein, FUNC1("")));
	}

	return FUNC6(ccs,
								 FUNC2(values[FUNC0(
									 Anum_chunk_constraint_chunk_id)]),
								 dimension_slice_id,
								 FUNC5(*constraint_name),
								 FUNC5(*hypertable_constraint_name));
}