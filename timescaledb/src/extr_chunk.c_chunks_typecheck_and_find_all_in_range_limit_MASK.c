#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64 ;
typedef  scalar_t__ int64 ;
struct TYPE_4__ {int /*<<< orphan*/  main_table_relid; } ;
typedef  int /*<<< orphan*/  StrategyNumber ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ Hyperspace ;
typedef  int /*<<< orphan*/  FormData_ts_interval ;
typedef  int /*<<< orphan*/  Dimension ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ChunkScanCtx ;

/* Variables and functions */
 int /*<<< orphan*/  BTGreaterEqualStrategyNumber ; 
 int /*<<< orphan*/  BTLessStrategyNumber ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ INTERVALOID ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  InvalidStrategy ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static ChunkScanCtx *
FUNC10(Hyperspace *hs, Dimension *time_dim,
											 Datum older_than_datum, Oid older_than_type,
											 Datum newer_than_datum, Oid newer_than_type, int limit,
											 MemoryContext multi_call_memory_ctx, char *caller_name,
											 uint64 *num_found)
{
	ChunkScanCtx *chunk_ctx = NULL;
	FormData_ts_interval *invl;

	int64 older_than = -1;
	int64 newer_than = -1;

	StrategyNumber start_strategy = InvalidStrategy;
	StrategyNumber end_strategy = InvalidStrategy;

	MemoryContext oldcontext;

	if (time_dim == NULL)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_INVALID_PARAMETER_VALUE), FUNC4("no time dimension found")));

	if (older_than_type != InvalidOid)
	{
		Oid partitioning_type = FUNC5(time_dim);
		FUNC6(older_than_type, partitioning_type, caller_name);

		if (older_than_type == INTERVALOID)
		{
			invl = FUNC7(hs->main_table_relid,
											  older_than_datum,
											  older_than_type,
											  "older_than",
											  caller_name);
			older_than = FUNC9(FUNC8(invl, time_dim),
												   partitioning_type);
		}
		else
		{
			older_than = FUNC9(older_than_datum, older_than_type);
		}

		end_strategy = BTLessStrategyNumber;
	}

	if (newer_than_type != InvalidOid)
	{
		Oid partitioning_type = FUNC5(time_dim);
		FUNC6(newer_than_type, partitioning_type, caller_name);

		if (newer_than_type == INTERVALOID)
		{
			invl = FUNC7(hs->main_table_relid,
											  newer_than_datum,
											  newer_than_type,
											  "newer_than",
											  caller_name);
			newer_than = FUNC9(FUNC8(invl, time_dim),
												   partitioning_type);
		}
		else
		{
			newer_than = FUNC9(newer_than_datum, newer_than_type);
		}

		start_strategy = BTGreaterEqualStrategyNumber;
	}

	if (older_than_type != InvalidOid && newer_than_type != InvalidOid && older_than < newer_than)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC4("When both older_than and newer_than are specified, "
						"older_than must refer to a time that is more recent than newer_than so "
						"that a valid overlapping range is specified")));

	oldcontext = FUNC0(multi_call_memory_ctx);
	chunk_ctx = FUNC1(hs,
											   time_dim,
											   start_strategy,
											   newer_than,
											   end_strategy,
											   older_than,
											   limit,
											   num_found);
	FUNC0(oldcontext);

	return chunk_ctx;
}