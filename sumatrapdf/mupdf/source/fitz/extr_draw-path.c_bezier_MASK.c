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
typedef  int /*<<< orphan*/  fz_rasterizer ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int MAX_DEPTH ; 
 float FUNC0 (float) ; 
 float FUNC1 (float,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,float,float,float,float) ; 

__attribute__((used)) static void
FUNC3(fz_context *ctx, fz_rasterizer *rast, fz_matrix ctm, float flatness,
	float xa, float ya,
	float xb, float yb,
	float xc, float yc,
	float xd, float yd, int depth)
{
	float dmax;
	float xab, yab;
	float xbc, ybc;
	float xcd, ycd;
	float xabc, yabc;
	float xbcd, ybcd;
	float xabcd, yabcd;

	/* termination check */
	dmax = FUNC0(xa - xb);
	dmax = FUNC1(dmax, FUNC0(ya - yb));
	dmax = FUNC1(dmax, FUNC0(xd - xc));
	dmax = FUNC1(dmax, FUNC0(yd - yc));
	if (dmax < flatness || depth >= MAX_DEPTH)
	{
		FUNC2(ctx, rast, ctm, xa, ya, xd, yd);
		return;
	}

	xab = xa + xb;
	yab = ya + yb;
	xbc = xb + xc;
	ybc = yb + yc;
	xcd = xc + xd;
	ycd = yc + yd;

	xabc = xab + xbc;
	yabc = yab + ybc;
	xbcd = xbc + xcd;
	ybcd = ybc + ycd;

	xabcd = xabc + xbcd;
	yabcd = yabc + ybcd;

	xab *= 0.5f; yab *= 0.5f;
	/* xbc *= 0.5f; ybc *= 0.5f; */
	xcd *= 0.5f; ycd *= 0.5f;

	xabc *= 0.25f; yabc *= 0.25f;
	xbcd *= 0.25f; ybcd *= 0.25f;

	xabcd *= 0.125f; yabcd *= 0.125f;

	FUNC3(ctx, rast, ctm, flatness, xa, ya, xab, yab, xabc, yabc, xabcd, yabcd, depth + 1);
	FUNC3(ctx, rast, ctm, flatness, xabcd, yabcd, xbcd, ybcd, xcd, ycd, xd, yd, depth + 1);
}