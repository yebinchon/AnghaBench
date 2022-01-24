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
 scalar_t__ INT2OID ; 
 scalar_t__ INT4OID ; 
 scalar_t__ INT8OID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Var ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline Expr *
FUNC8(OpExpr *op)
{
	/*
	 * Optimize int op const (or const op int), whenever possible. e.g. sort
	 * of  some_int + const fulfilled by sort of some_int same for the
	 * following operator: + - / *
	 *
	 * Note that / is not commutative and const / var does NOT work (namely it
	 * reverses sort order, which we don't handle yet)
	 */
	if (FUNC5(op->args) == 2 &&
		(FUNC0(FUNC6(op->args), Const) || FUNC0(FUNC4(op->args), Const)))
	{
		Oid left = FUNC2((Node *) FUNC4(op->args));
		Oid right = FUNC2((Node *) FUNC6(op->args));

		if ((left == INT8OID && right == INT8OID) || (left == INT4OID && right == INT4OID) ||
			(left == INT2OID && right == INT2OID))
		{
			char *name = FUNC3(op->opno);

			if (name[1] == '\0')
			{
				switch (name[0])
				{
					case '-':
					case '+':
					case '*':
						/* commutative cases */
						if (FUNC0(FUNC4(op->args), Const))
						{
							Expr *nonconst = FUNC7((Expr *) FUNC6(op->args));

							if (FUNC0(nonconst, Var))
								return FUNC1(nonconst);
						}
						else
						{
							Expr *nonconst = FUNC7((Expr *) FUNC4(op->args));

							if (FUNC0(nonconst, Var))
								return FUNC1(nonconst);
						}
						break;
					case '/':
						/* only if second arg is const */
						if (FUNC0(FUNC6(op->args), Const))
						{
							Expr *nonconst = FUNC7((Expr *) FUNC4(op->args));

							if (FUNC0(nonconst, Var))
								return FUNC1(nonconst);
						}
						break;
				}
			}
		}
	}
	return (Expr *) op;
}