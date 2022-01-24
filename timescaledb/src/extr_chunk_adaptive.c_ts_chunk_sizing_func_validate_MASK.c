#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  regproc ;
struct TYPE_7__ {int /*<<< orphan*/  func_name; int /*<<< orphan*/  func_schema; int /*<<< orphan*/  func; } ;
struct TYPE_5__ {scalar_t__* values; } ;
struct TYPE_6__ {scalar_t__ pronargs; scalar_t__ prorettype; int /*<<< orphan*/  proname; int /*<<< orphan*/  pronamespace; TYPE_1__ proargtypes; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_proc ;
typedef  TYPE_3__ ChunkSizingInfo ;

/* Variables and functions */
 scalar_t__ CHUNK_SIZING_FUNC_NARGS ; 
 int /*<<< orphan*/  ERRCODE_INVALID_FUNCTION_DEFINITION ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_FUNCTION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ INT4OID ; 
 scalar_t__ INT8OID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROCOID ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC14(regproc func, ChunkSizingInfo *info)
{
	HeapTuple tuple;
	Form_pg_proc form;
	Oid *typearr;

	if (!FUNC4(func))
		FUNC8(ERROR,
				(FUNC9(ERRCODE_UNDEFINED_FUNCTION), (FUNC11("invalid chunk sizing function"))));

	tuple = FUNC6(PROCOID, FUNC3(func));

	if (!FUNC1(tuple))
		FUNC7(ERROR, "cache lookup failed for function %u", func);

	form = (Form_pg_proc) FUNC0(tuple);
	typearr = form->proargtypes.values;

	if (form->pronargs != CHUNK_SIZING_FUNC_NARGS || typearr[0] != INT4OID ||
		typearr[1] != INT8OID || typearr[2] != INT8OID || form->prorettype != INT8OID)
	{
		FUNC5(tuple);
		FUNC8(ERROR,
				(FUNC9(ERRCODE_INVALID_FUNCTION_DEFINITION),
				 FUNC11("invalid function signature"),
				 FUNC10("A chunk sizing function's signature should be (int, bigint, bigint) -> "
						 "bigint")));
	}

	if (NULL != info)
	{
		info->func = func;
		FUNC13(&info->func_schema, FUNC12(form->pronamespace));
		FUNC13(&info->func_name, FUNC2(form->proname));
	}

	FUNC5(tuple);
}