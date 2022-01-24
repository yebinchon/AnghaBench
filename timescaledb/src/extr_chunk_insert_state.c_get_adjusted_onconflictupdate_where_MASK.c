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
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Index ;
typedef  int /*<<< orphan*/  ExprState ;
typedef  int /*<<< orphan*/  Expr ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INNER_VAR ; 
 int /*<<< orphan*/ * NIL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static ExprState *
FUNC4(ExprState *hyper_where_state, List *where_quals,
									AttrNumber *map, int map_size, Index varno, Oid rowtype)
{
	bool found_whole_row;

	FUNC0(where_quals != NIL);
	/* map hypertable attnos -> chunk attnos for the hypertable */
	where_quals = (List *) FUNC3((Node *) where_quals,
													  varno,
													  0,
													  map,
													  map_size,
													  rowtype,
													  &found_whole_row);
	/* map hypertable attnos -> chunk attnos for the "excluded" table */
	where_quals = (List *) FUNC3((Node *) where_quals,
													  INNER_VAR,
													  0,
													  map,
													  map_size,
													  rowtype,
													  &found_whole_row);
#if PG96
	return ExecInitExpr((Expr *) where_quals, NULL);
#else
	return FUNC2(where_quals, NULL);
#endif
}