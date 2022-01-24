#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
struct TYPE_8__ {int /*<<< orphan*/  constraints; int /*<<< orphan*/  cube; TYPE_1__ fd; } ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_2__ Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chunk_tuple_found ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Chunk *
FUNC6(int indexid, ScanKeyData scankey[], int nkeys, int16 num_constraints,
				MemoryContext mctx, bool fail_if_not_found)
{
	Chunk *chunk = FUNC0(mctx, sizeof(Chunk));
	int num_found;

	num_found = FUNC1(indexid,
									scankey,
									nkeys,
									chunk_tuple_found,
									chunk,
									1,
									ForwardScanDirection,
									AccessShareLock,
									mctx);

	switch (num_found)
	{
		case 0:
			if (fail_if_not_found)
				FUNC2(ERROR, "chunk not found");
			FUNC3(chunk);
			chunk = NULL;
			break;
		case 1:
			if (num_constraints > 0)
			{
				chunk->constraints =
					FUNC4(chunk->fd.id, num_constraints, mctx);
				chunk->cube = FUNC5(chunk->constraints, mctx);
			}
			break;
		default:
			FUNC2(ERROR, "unexpected number of chunks found: %d", num_found);
	}

	return chunk;
}