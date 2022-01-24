#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sctx {float flatness; } ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int MAX_DEPTH ; 
 float FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sctx*,float,float,int) ; 
 float FUNC2 (float,float) ; 

__attribute__((used)) static void
FUNC3(fz_context *ctx, struct sctx *s,
	float xa, float ya,
	float xb, float yb,
	float xc, float yc, int depth)
{
	float dmax;
	float xab, yab;
	float xbc, ybc;
	float xabc, yabc;

	/* termination check */
	dmax = FUNC0(xa - xb);
	dmax = FUNC2(dmax, FUNC0(ya - yb));
	dmax = FUNC2(dmax, FUNC0(xc - xb));
	dmax = FUNC2(dmax, FUNC0(yc - yb));
	if (dmax < s->flatness || depth >= MAX_DEPTH)
	{
		FUNC1(ctx, s, xc, yc, 1);
		return;
	}

	xab = xa + xb;
	yab = ya + yb;
	xbc = xb + xc;
	ybc = yb + yc;

	xabc = xab + xbc;
	yabc = yab + ybc;

	xab *= 0.5f; yab *= 0.5f;
	xbc *= 0.5f; ybc *= 0.5f;

	xabc *= 0.25f; yabc *= 0.25f;

	FUNC3(ctx, s, xa, ya, xab, yab, xabc, yabc, depth + 1);
	FUNC3(ctx, s, xabc, yabc, xbc, ybc, xc, yc, depth + 1);
}