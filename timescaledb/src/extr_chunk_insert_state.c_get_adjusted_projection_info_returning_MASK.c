#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_6__ {int /*<<< orphan*/  pi_exprContext; } ;
typedef  TYPE_1__ ProjectionInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Index ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static ProjectionInfo *
FUNC4(ProjectionInfo *orig, List *returning_clauses,
									   AttrNumber *map, int map_size, Index varno, Oid rowtype,
									   TupleDesc chunk_desc)
{
	bool found_whole_row;

	FUNC0(returning_clauses != NIL);

	/* map hypertable attnos -> chunk attnos */
	returning_clauses = (List *) FUNC3((Node *) returning_clauses,
															varno,
															0,
															map,
															map_size,
															rowtype,
															&found_whole_row);

	return FUNC1(returning_clauses,
										 orig->pi_exprContext,
										 FUNC2(orig),
										 NULL,
										 chunk_desc);
}