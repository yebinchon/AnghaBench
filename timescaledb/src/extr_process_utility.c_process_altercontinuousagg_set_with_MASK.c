#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WithClauseResult ;
struct TYPE_2__ {int /*<<< orphan*/  (* continuous_agg_update_options ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  ContinuousAgg ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* ts_cm_functions ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void
FUNC8(ContinuousAgg *cagg, Oid view_relid, const List *defelems)
{
	WithClauseResult *parse_results;
	List *pg_options = NIL, *cagg_options = NIL;

	FUNC0(cagg, view_relid);

	FUNC7(defelems, &cagg_options, &pg_options);
	if (FUNC4(pg_options) > 0)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC3("only timescaledb parameters allowed in WITH clause for continuous "
						"aggregate")));

	if (FUNC4(cagg_options) > 0)
	{
		parse_results = FUNC6(cagg_options);
		ts_cm_functions->continuous_agg_update_options(cagg, parse_results);
	}
}