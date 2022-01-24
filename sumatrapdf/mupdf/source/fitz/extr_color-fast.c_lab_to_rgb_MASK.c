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
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_color_converter ;

/* Variables and functions */
 float FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (float,int /*<<< orphan*/ ,int) ; 
 float FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(fz_context *ctx, fz_color_converter *cc, const float *lab, float *rgb)
{
	/* input is in range (0..100, -128..127, -128..127) not (0..1, 0..1, 0..1) */
	float lstar, astar, bstar, l, m, n, x, y, z, r, g, b;
	lstar = lab[0];
	astar = lab[1];
	bstar = lab[2];
	m = (lstar + 16) / 116;
	l = m + astar / 500;
	n = m - bstar / 200;
	x = FUNC0(l);
	y = FUNC0(m);
	z = FUNC0(n);
	r = (3.240449f * x + -1.537136f * y + -0.498531f * z) * 0.830026f;
	g = (-0.969265f * x + 1.876011f * y + 0.041556f * z) * 1.05452f;
	b = (0.055643f * x + -0.204026f * y + 1.057229f * z) * 1.1003f;
	rgb[0] = FUNC2(FUNC1(r, 0, 1));
	rgb[1] = FUNC2(FUNC1(g, 0, 1));
	rgb[2] = FUNC2(FUNC1(b, 0, 1));
}