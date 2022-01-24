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
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_5__ {int /*<<< orphan*/  index; } ;
struct TYPE_6__ {TYPE_1__ ctx; } ;
typedef  TYPE_2__ ScanIterator ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_chunk_constraint_chunk_id_constraint_name_idx_chunk_id ; 
 int /*<<< orphan*/  Anum_chunk_constraint_chunk_id_constraint_name_idx_constraint_name ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  CHUNK_CONSTRAINT ; 
 int /*<<< orphan*/  CHUNK_CONSTRAINT_CHUNK_ID_CONSTRAINT_NAME_IDX ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  namein ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(ScanIterator *iterator, int32 chunk_id,
									  const char *constraint_name)
{
	iterator->ctx.index = FUNC3(FUNC4(),
											CHUNK_CONSTRAINT,
											CHUNK_CONSTRAINT_CHUNK_ID_CONSTRAINT_NAME_IDX);

	FUNC5(iterator,
								   Anum_chunk_constraint_chunk_id_constraint_name_idx_chunk_id,
								   BTEqualStrategyNumber,
								   F_INT4EQ,
								   FUNC2(chunk_id));

	FUNC5(
		iterator,
		Anum_chunk_constraint_chunk_id_constraint_name_idx_constraint_name,
		BTEqualStrategyNumber,
		F_NAMEEQ,
		FUNC1(namein, FUNC0(constraint_name)));
}