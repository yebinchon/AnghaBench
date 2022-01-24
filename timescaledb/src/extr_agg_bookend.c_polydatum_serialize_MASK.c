#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bytea ;
struct TYPE_11__ {TYPE_1__* flinfo; } ;
struct TYPE_10__ {scalar_t__ type_oid; int /*<<< orphan*/  datum; scalar_t__ is_null; } ;
struct TYPE_9__ {scalar_t__ type_oid; int /*<<< orphan*/  proc; } ;
struct TYPE_8__ {int /*<<< orphan*/  fn_mcxt; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_2__ PolyDatumIOState ;
typedef  TYPE_3__ PolyDatum ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_4__* FunctionCallInfo ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int VARHDRSZ ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(PolyDatum *pd, StringInfo buf, PolyDatumIOState *state, FunctionCallInfo fcinfo)
{
	bytea *outputbytes;

	FUNC5(buf, pd->type_oid);

	if (pd->is_null)
	{
		/* emit -1 data length to signify a NULL */
		FUNC7(buf, -1);
		return;
	}

	if (state->type_oid != pd->type_oid)
	{
		Oid func;
		bool is_varlena;

		FUNC4(pd->type_oid, &func, &is_varlena);
		FUNC3(func, &state->proc, fcinfo->flinfo->fn_mcxt);
		state->type_oid = pd->type_oid;
	}
	outputbytes = FUNC0(&state->proc, pd->datum);
	FUNC7(buf, FUNC2(outputbytes) - VARHDRSZ);
	FUNC6(buf, FUNC1(outputbytes), FUNC2(outputbytes) - VARHDRSZ);
}