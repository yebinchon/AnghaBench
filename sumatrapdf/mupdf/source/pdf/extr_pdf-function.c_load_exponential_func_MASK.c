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
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_5__ {int n; int* c1; void** c0; } ;
struct TYPE_6__ {TYPE_1__ e; } ;
struct TYPE_7__ {int m; scalar_t__** domain; int n; TYPE_2__ u; } ;
typedef  TYPE_3__ pdf_function ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  C0 ; 
 int /*<<< orphan*/  C1 ; 
 int /*<<< orphan*/  N ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(fz_context *ctx, pdf_function *func, pdf_obj *dict)
{
	pdf_obj *obj;
	int i;

	if (func->m > 1)
		FUNC2(ctx, "exponential functions have at most one input");
	func->m = 1;

	obj = FUNC5(ctx, dict, FUNC0(N));
	func->u.e.n = FUNC7(ctx, obj);

	/* See exponential functions (PDF 1.7 section 3.9.2) */
	if (func->u.e.n != (int) func->u.e.n)
	{
		/* If N is non-integer, input values may never be negative */
		for (i = 0; i < func->m; i++)
			if (func->domain[i][0] < 0 || func->domain[i][1] < 0)
				FUNC2(ctx, "exponential function input domain includes illegal negative input values");
	}
	else if (func->u.e.n < 0)
	{
		/* if N is negative, input values may never be zero */
		for (i = 0; i < func->m; i++)
			if (func->domain[i][0] == 0 || func->domain[i][1] == 0 ||
				(func->domain[i][0] < 0 && func->domain[i][1] > 0))
				FUNC2(ctx, "exponential function input domain includes illegal input value zero");
	}

	for (i = 0; i < func->n; i++)
	{
		func->u.e.c0[i] = 0;
		func->u.e.c1[i] = 1;
	}

	obj = FUNC5(ctx, dict, FUNC0(C0));
	if (FUNC6(ctx, obj))
	{
		int ranges = FUNC1(func->n, FUNC4(ctx, obj));
		if (ranges != func->n)
			FUNC2(ctx, "wrong number of C0 constants for exponential function");

		for (i = 0; i < ranges; i++)
			func->u.e.c0[i] = FUNC3(ctx, obj, i);
	}

	obj = FUNC5(ctx, dict, FUNC0(C1));
	if (FUNC6(ctx, obj))
	{
		int ranges = FUNC1(func->n, FUNC4(ctx, obj));
		if (ranges != func->n)
			FUNC2(ctx, "wrong number of C1 constants for exponential function");

		for (i = 0; i < ranges; i++)
			func->u.e.c1[i] = FUNC3(ctx, obj, i);
	}
}