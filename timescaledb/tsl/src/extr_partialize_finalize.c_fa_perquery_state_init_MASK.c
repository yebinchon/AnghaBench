#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int* argnull; scalar_t__* arg; } ;
struct TYPE_11__ {TYPE_9__ finalfn_fcinfo; int /*<<< orphan*/  finalfn; int /*<<< orphan*/  finalfnoid; } ;
struct TYPE_10__ {int /*<<< orphan*/  internal_deserialfn; TYPE_9__ internal_deserialfn_fcinfo; int /*<<< orphan*/  recv_fn; int /*<<< orphan*/  typIOParam; int /*<<< orphan*/  transtype; int /*<<< orphan*/  deserialfn; TYPE_9__ deserialfn_fcinfo; int /*<<< orphan*/  deserialfnoid; int /*<<< orphan*/  combinefn; TYPE_9__ combfn_fcinfo; int /*<<< orphan*/  combinefnoid; } ;
struct TYPE_15__ {TYPE_2__ final_meta; TYPE_1__ combine_meta; } ;
struct TYPE_14__ {scalar_t__ aggnumdirectargs; int /*<<< orphan*/  aggtranstype; scalar_t__ aggfinalextra; int /*<<< orphan*/  aggdeserialfn; int /*<<< orphan*/  aggcombinefn; int /*<<< orphan*/  aggfinalfn; } ;
struct TYPE_13__ {TYPE_3__* flinfo; scalar_t__ context; } ;
struct TYPE_12__ {void* fn_extra; int /*<<< orphan*/  fn_mcxt; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_4__* FunctionCallInfo ;
typedef  TYPE_5__* Form_pg_aggregate ;
typedef  TYPE_6__ FAPerQueryState ;
typedef  int /*<<< orphan*/  Expr ;
typedef  scalar_t__ Datum ;
typedef  int /*<<< orphan*/  ArrayType ;
typedef  int /*<<< orphan*/  AggState ;

/* Variables and functions */
 int /*<<< orphan*/  AGGFNOID ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidOid ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 
 int /*<<< orphan*/ * FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *,size_t*) ; 

__attribute__((used)) static FAPerQueryState *
FUNC22(FunctionCallInfo fcinfo)
{
	char *inner_agg_input_coll_schema = FUNC7(2) ? NULL : FUNC5(*FUNC9(2));
	char *inner_agg_input_coll_name = FUNC7(3) ? NULL : FUNC5(*FUNC9(3));
	ArrayType *input_types = FUNC7(4) ? NULL : FUNC8(4);
	Oid inner_agg_fn_oid = FUNC13(FUNC10(1));

	Oid collation = FUNC15(inner_agg_input_coll_schema, inner_agg_input_coll_name);
	FAPerQueryState *tstate;
	HeapTuple inner_agg_tuple;
	Form_pg_aggregate inner_agg_form;
	MemoryContext qcontext = fcinfo->flinfo->fn_mcxt;
	MemoryContext oldcontext = FUNC4(qcontext);
	AggState *fa_aggstate = (AggState *) fcinfo->context;

	/* look up catalog entry and populate what we need */
	inner_agg_tuple = FUNC12(AGGFNOID, inner_agg_fn_oid);
	if (!FUNC1(inner_agg_tuple))
		FUNC16(ERROR, "cache lookup failed for aggregate %u", inner_agg_fn_oid);
	inner_agg_form = (Form_pg_aggregate) FUNC0(inner_agg_tuple);
	/* we only support aggregates with 0 direct args (only ordered set aggs do not meet this
	 * condition)*/
	if (inner_agg_form->aggnumdirectargs != 0)
		FUNC16(ERROR,
			 "function calls with direct args are not supported by TimescaleDB finalize agg");
	tstate = (FAPerQueryState *) FUNC3(qcontext, sizeof(FAPerQueryState));

	tstate->final_meta.finalfnoid = inner_agg_form->aggfinalfn;
	tstate->combine_meta.combinefnoid = inner_agg_form->aggcombinefn;
	tstate->combine_meta.deserialfnoid = inner_agg_form->aggdeserialfn;
	tstate->combine_meta.transtype = inner_agg_form->aggtranstype;
	FUNC11(inner_agg_tuple);

	/* initialize combine specific state, both the deserialize function and combine function */
	if (!FUNC6(tstate->combine_meta.combinefnoid))
		FUNC16(ERROR,
			 "no valid combine function for the aggregate specified in Timescale finalize call");

	FUNC17(tstate->combine_meta.combinefnoid, &tstate->combine_meta.combinefn, qcontext);
	FUNC2(tstate->combine_meta.combfn_fcinfo,
							 &tstate->combine_meta.combinefn,
							 2, /* combine fn always has two args */
							 collation,
							 (void *) fa_aggstate,
							 NULL);

	if (FUNC6(tstate->combine_meta.deserialfnoid)) /* deserial fn not necessary, no need to
															throw errors if not found */
	{
		FUNC17(tstate->combine_meta.deserialfnoid,
					  &tstate->combine_meta.deserialfn,
					  qcontext);
		FUNC2(tstate->combine_meta.deserialfn_fcinfo,
								 &tstate->combine_meta.deserialfn,
								 1, /* deserialize always has 1 arg */
								 collation,
								 (void *) fa_aggstate,
								 NULL);
	}
	else
	{
		/* save information for internal deserialization. caching instead
		   of calling ReceiveFunctionCall */
		FUNC19(tstate->combine_meta.transtype,
							   &tstate->combine_meta.recv_fn,
							   &tstate->combine_meta.typIOParam);
		FUNC17(tstate->combine_meta.recv_fn,
					  &tstate->combine_meta.internal_deserialfn,
					  qcontext);
		FUNC2(tstate->combine_meta.internal_deserialfn_fcinfo,
								 &tstate->combine_meta.internal_deserialfn,
								 3,
								 InvalidOid,
								 NULL,
								 NULL);
	}
	/* initialize finalfn specific state */
	if (FUNC6(tstate->final_meta.finalfnoid))
	{
		int num_args = 1;
		Oid *types = NULL;
		size_t number_types = 0;
		if (inner_agg_form->aggfinalextra)
		{
			types = FUNC21(input_types, &number_types);
			num_args += number_types;
		}
		if (num_args != FUNC20(tstate->final_meta.finalfnoid))
			FUNC16(ERROR, "invalid number of input types");

		FUNC17(tstate->final_meta.finalfnoid, &tstate->final_meta.finalfn, qcontext);
		/* pass the aggstate information from our current call context */
		FUNC2(tstate->final_meta.finalfn_fcinfo,
								 &tstate->final_meta.finalfn,
								 num_args,
								 collation,
								 (void *) fa_aggstate,
								 NULL);
		if (number_types > 0)
		{
			Expr *expr;
			int i;
			FUNC14(types,
										 num_args,
										 inner_agg_form->aggtranstype,
										 types[number_types - 1],
										 collation,
										 tstate->final_meta.finalfnoid,
										 &expr);
			FUNC18((Node *) expr, &tstate->final_meta.finalfn);
			for (i = 1; i < num_args; i++)
			{
				tstate->final_meta.finalfn_fcinfo.arg[i] = (Datum) 0;
				tstate->final_meta.finalfn_fcinfo.argnull[i] = true;
			}
		}
	}
	fcinfo->flinfo->fn_extra = (void *) tstate;

	FUNC4(oldcontext);

	return tstate;
}