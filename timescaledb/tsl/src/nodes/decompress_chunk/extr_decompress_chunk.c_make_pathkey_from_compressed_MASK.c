#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ int16 ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  PathKey ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  Index ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 scalar_t__ BTGreaterStrategyNumber ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static PathKey *
FUNC5(PlannerInfo *root, Index compressed_relid, Expr *expr, Oid ordering_op,
							 bool nulls_first)
{
	Oid opfamily, opcintype, collation;
	int16 strategy;

	/* Find the operator in pg_amop --- failure shouldn't happen */
	if (!FUNC3(ordering_op, &opfamily, &opcintype, &strategy))
		FUNC1(ERROR, "operator %u is not a valid ordering operator", ordering_op);

	/* Because SortGroupClause doesn't carry collation, consult the expr */
	collation = FUNC2((Node *) expr);

	return FUNC4(root,
										 expr,
										 NULL,
										 opfamily,
										 opcintype,
										 collation,
										 (strategy == BTGreaterStrategyNumber),
										 nulls_first,
										 0,
										 FUNC0(compressed_relid),
										 true);
}