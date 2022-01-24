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
typedef  int /*<<< orphan*/  ps_stack ;
struct TYPE_5__ {int /*<<< orphan*/  code; } ;
struct TYPE_6__ {TYPE_1__ p; } ;
struct TYPE_7__ {int m; int n; int /*<<< orphan*/ ** range; TYPE_2__ u; int /*<<< orphan*/ ** domain; } ;
typedef  TYPE_3__ pdf_function ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 float FUNC0 (float const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 float FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, pdf_function *func, const float *in, float *out)
{
	ps_stack st;
	float x;
	int i;

	FUNC1(&st);

	for (i = 0; i < func->m; i++)
	{
		x = FUNC0(in[i], func->domain[i][0], func->domain[i][1]);
		FUNC3(&st, x);
	}

	FUNC4(ctx, func->u.p.code, &st, 0);

	for (i = func->n - 1; i >= 0; i--)
	{
		x = FUNC2(&st);
		out[i] = FUNC0(x, func->range[i][0], func->range[i][1]);
	}
}