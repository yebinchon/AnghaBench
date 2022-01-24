#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ cmp_type; char op; int /*<<< orphan*/  proc; } ;
struct TYPE_11__ {int /*<<< orphan*/  fncollation; TYPE_1__* flinfo; } ;
struct TYPE_10__ {scalar_t__ type_oid; int /*<<< orphan*/  datum; } ;
struct TYPE_9__ {int /*<<< orphan*/  fn_mcxt; } ;
typedef  TYPE_2__ PolyDatum ;
typedef  scalar_t__ Oid ;
typedef  TYPE_3__* FunctionCallInfo ;
typedef  TYPE_4__ CmpFuncCache ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) inline static bool
FUNC10(CmpFuncCache *cache, FunctionCallInfo fcinfo, char *opname, PolyDatum left,
				 PolyDatum right)
{
	FUNC0(left.type_oid == right.type_oid);
	FUNC0(opname[1] == '\0');

	if (cache->cmp_type != left.type_oid || cache->op != opname[0])
	{
		Oid cmp_op, cmp_regproc;

		if (!FUNC3(left.type_oid))
			FUNC5(ERROR, "could not determine the type of the comparison_element");
		cmp_op = FUNC4(FUNC8(FUNC9(opname)), left.type_oid, left.type_oid);
		if (!FUNC3(cmp_op))
			FUNC5(ERROR, "could not find a %s operator for type %d", opname, left.type_oid);
		cmp_regproc = FUNC7(cmp_op);
		if (!FUNC3(cmp_regproc))
			FUNC5(ERROR,
				 "could not find the procedure for the %s operator for type %d",
				 opname,
				 left.type_oid);
		FUNC6(cmp_regproc, &cache->proc, fcinfo->flinfo->fn_mcxt);
	}
	return FUNC1(
		FUNC2(&cache->proc, fcinfo->fncollation, left.datum, right.datum));
}