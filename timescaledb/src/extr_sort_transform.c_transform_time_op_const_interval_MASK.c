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
struct TYPE_3__ {int /*<<< orphan*/  args; int /*<<< orphan*/  opno; } ;
typedef  TYPE_1__ OpExpr ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  Const ; 
 scalar_t__ DATEOID ; 
 scalar_t__ INTERVALOID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 scalar_t__ TIMESTAMPOID ; 
 scalar_t__ TIMESTAMPTZOID ; 
 int /*<<< orphan*/  Var ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline Expr *
FUNC9(OpExpr *op)
{
	/*
	 * optimize timestamp(tz) +/- const interval
	 *
	 * Sort of ts + 1 minute fulfilled by sort of ts
	 */
	if (FUNC5(op->args) == 2 && FUNC0(FUNC6(op->args), Const))
	{
		Oid left = FUNC2((Node *) FUNC4(op->args));
		Oid right = FUNC2((Node *) FUNC6(op->args));

		if ((left == TIMESTAMPOID && right == INTERVALOID) ||
			(left == TIMESTAMPTZOID && right == INTERVALOID) ||
			(left == DATEOID && right == INTERVALOID))
		{
			char *name = FUNC3(op->opno);

			if (FUNC7(name, "-", NAMEDATALEN) == 0 || FUNC7(name, "+", NAMEDATALEN) == 0)
			{
				Expr *first = FUNC8((Expr *) FUNC4(op->args));

				if (FUNC0(first, Var))
					return FUNC1(first);
			}
		}
	}
	return (Expr *) op;
}