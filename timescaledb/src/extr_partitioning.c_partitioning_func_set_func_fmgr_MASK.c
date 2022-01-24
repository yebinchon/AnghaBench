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
typedef  int /*<<< orphan*/  proc_filter ;
struct TYPE_3__ {int /*<<< orphan*/  func_fmgr; int /*<<< orphan*/  rettype; int /*<<< orphan*/  name; int /*<<< orphan*/  schema; } ;
typedef  TYPE_1__ PartitioningFunc ;
typedef  int /*<<< orphan*/  Oid ;
typedef  scalar_t__ DimensionType ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentMemoryContext ; 
 scalar_t__ DIMENSION_TYPE_CLOSED ; 
 scalar_t__ DIMENSION_TYPE_OPEN ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  closed_dim_partitioning_func_filter ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  open_dim_partitioning_func_filter ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(PartitioningFunc *pf, Oid argtype, DimensionType dimtype)
{
	Oid funcoid;
	proc_filter filter = dimtype == DIMENSION_TYPE_CLOSED ? closed_dim_partitioning_func_filter :
															open_dim_partitioning_func_filter;

	if (dimtype != DIMENSION_TYPE_CLOSED && dimtype != DIMENSION_TYPE_OPEN)
		FUNC1(ERROR, "invalid dimension type %u", dimtype);

	funcoid = FUNC6(pf->schema, pf->name, &pf->rettype, filter, &argtype);

	if (!FUNC0(funcoid))
	{
		if (dimtype == DIMENSION_TYPE_CLOSED)
			FUNC2(ERROR,
					(FUNC4("invalid partitioning function"),
					 FUNC3("A partitioning function for a closed (space) dimension "
							 "must be IMMUTABLE and have the signature (anyelement) -> integer")));
		else
			FUNC2(ERROR,
					(FUNC4("invalid partitioning function"),
					 FUNC3("A partitioning function for a open (time) dimension "
							 "must be IMMUTABLE, take one argument, and return a supported time "
							 "type")));
	}

	FUNC5(funcoid, &pf->func_fmgr, CurrentMemoryContext);
}