#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_14__ ;

/* Type definitions */
struct TYPE_21__ {scalar_t__ expr; } ;
typedef  TYPE_4__ TargetEntry ;
struct TYPE_18__ {int /*<<< orphan*/ * plan; } ;
struct TYPE_19__ {TYPE_1__ ps; } ;
struct TYPE_20__ {TYPE_2__ ss; } ;
struct TYPE_24__ {int /*<<< orphan*/  sort_options; TYPE_3__ csstate; } ;
struct TYPE_23__ {scalar_t__ verbose; int /*<<< orphan*/ * rtable; int /*<<< orphan*/  deparse_cxt; } ;
struct TYPE_22__ {int /*<<< orphan*/  data; } ;
struct TYPE_17__ {int /*<<< orphan*/  custom_scan_tlist; } ;
typedef  TYPE_5__ StringInfoData ;
typedef  int /*<<< orphan*/  Plan ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_6__ ExplainState ;
typedef  TYPE_7__ ChunkAppendState ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  CustomScan ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,char*) ; 
 TYPE_14__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC18(ChunkAppendState *state, List *ancestors, ExplainState *es)
{
	Plan *plan = state->csstate.ss.ps.plan;
	List *context;
	List *result = NIL;
	StringInfoData sortkeybuf;
	bool useprefix;
	int keyno;
	int nkeys = FUNC10(FUNC9(state->sort_options));
	List *sort_indexes = FUNC9(state->sort_options);
	List *sort_ops = FUNC12(state->sort_options);
	List *sort_collations = FUNC13(state->sort_options);
	List *sort_nulls = FUNC8(state->sort_options);

	if (nkeys <= 0)
		return;

	FUNC6(&sortkeybuf);

	/* Set up deparsing context */
	context = FUNC16(es->deparse_cxt, (Node *) state, ancestors);
	useprefix = (FUNC10(es->rtable) > 1 || es->verbose);

	for (keyno = 0; keyno < nkeys; keyno++)
	{
		/* find key expression in tlist */
		AttrNumber keyresno = FUNC11(sort_indexes, keyno);
		TargetEntry *target =
			FUNC5(FUNC2(CustomScan, plan)->custom_scan_tlist, keyresno);
		char *exprstr;

		if (!target)
			FUNC4(ERROR, "no tlist entry for key %d", keyresno);
		/* Deparse the expression, showing any top-level cast */
		exprstr = FUNC3((Node *) target->expr, context, useprefix, true);
		FUNC15(&sortkeybuf);
		FUNC1(&sortkeybuf, exprstr);
		/* Append sort order information, if relevant */
		if (sort_ops != NIL)
			FUNC17(&sortkeybuf,
								   (Node *) target->expr,
								   FUNC11(sort_ops, keyno),
								   FUNC11(sort_collations, keyno),
								   FUNC11(sort_nulls, keyno));
		/* Emit one property-list item per sort key */
		result = FUNC7(result, FUNC14(sortkeybuf.data));
	}

	FUNC0("Order", result, es);
}