#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int* size; float* samples; int /*<<< orphan*/ ** decode; int /*<<< orphan*/ ** encode; } ;
struct TYPE_7__ {TYPE_1__ sa; } ;
struct TYPE_8__ {int m; int** domain; int n; int** range; TYPE_2__ u; } ;
typedef  TYPE_3__ pdf_function ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int MAX_M ; 
 int FUNC0 (float) ; 
 int FUNC1 (float) ; 
 float FUNC2 (float const,int,int) ; 
 float FUNC3 (TYPE_3__*,int*,int*,int*,float*,int,int) ; 
 float FUNC4 (float,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, pdf_function *func, const float *in, float *out)
{
	int e0[MAX_M], e1[MAX_M], scale[MAX_M];
	float efrac[MAX_M];
	float x;
	int i;

	/* encode input coordinates */
	for (i = 0; i < func->m; i++)
	{
		x = FUNC2(in[i], func->domain[i][0], func->domain[i][1]);
		x = FUNC4(x, func->domain[i][0], func->domain[i][1],
			func->u.sa.encode[i][0], func->u.sa.encode[i][1]);
		x = FUNC2(x, 0, func->u.sa.size[i] - 1);
		e0[i] = FUNC1(x);
		e1[i] = FUNC0(x);
		efrac[i] = x - e0[i];
	}

	scale[0] = func->n;
	for (i = 1; i < func->m; i++)
		scale[i] = scale[i - 1] * func->u.sa.size[i-1];

	for (i = 0; i < func->n; i++)
	{
		if (func->m == 1)
		{
			float a = func->u.sa.samples[e0[0] * func->n + i];
			float b = func->u.sa.samples[e1[0] * func->n + i];

			float ab = a + (b - a) * efrac[0];

			out[i] = FUNC4(ab, 0, 1, func->u.sa.decode[i][0], func->u.sa.decode[i][1]);
			out[i] = FUNC2(out[i], func->range[i][0], func->range[i][1]);
		}

		else if (func->m == 2)
		{
			int s0 = func->n;
			int s1 = s0 * func->u.sa.size[0];

			float a = func->u.sa.samples[e0[0] * s0 + e0[1] * s1 + i];
			float b = func->u.sa.samples[e1[0] * s0 + e0[1] * s1 + i];
			float c = func->u.sa.samples[e0[0] * s0 + e1[1] * s1 + i];
			float d = func->u.sa.samples[e1[0] * s0 + e1[1] * s1 + i];

			float ab = a + (b - a) * efrac[0];
			float cd = c + (d - c) * efrac[0];
			float abcd = ab + (cd - ab) * efrac[1];

			out[i] = FUNC4(abcd, 0, 1, func->u.sa.decode[i][0], func->u.sa.decode[i][1]);
			out[i] = FUNC2(out[i], func->range[i][0], func->range[i][1]);
		}

		else
		{
			x = FUNC3(func, scale, e0, e1, efrac, func->m - 1, i);
			out[i] = FUNC4(x, 0, 1, func->u.sa.decode[i][0], func->u.sa.decode[i][1]);
			out[i] = FUNC2(out[i], func->range[i][0], func->range[i][1]);
		}
	}
}