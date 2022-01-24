#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {void* p; } ;
typedef  TYPE_1__ fz_vertex ;
struct TYPE_12__ {scalar_t__ x; scalar_t__ y; } ;
typedef  TYPE_2__ fz_point ;
typedef  int /*<<< orphan*/  fz_mesh_processor ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int FZ_PI ; 
 float FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__,float,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,float*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, fz_matrix ctm,
		fz_point p0, float r0, float c0,
		fz_point p1, float r1, float c1,
		int count,
		fz_mesh_processor *painter)
{
	fz_vertex t0, t1, t2, t3, b0, b1, b2, b3;
	float theta, step, a, b;
	int i;

	theta = FUNC0(p1.y - p0.y, p1.x - p0.x);
	step = FZ_PI / count;

	a = 0;
	for (i = 1; i <= count; i++)
	{
		b = i * step;

		t0.p = FUNC3(FUNC1(p0, r0, theta + a), ctm);
		t1.p = FUNC3(FUNC1(p0, r0, theta + b), ctm);
		t2.p = FUNC3(FUNC1(p1, r1, theta + a), ctm);
		t3.p = FUNC3(FUNC1(p1, r1, theta + b), ctm);
		b0.p = FUNC3(FUNC1(p0, r0, theta - a), ctm);
		b1.p = FUNC3(FUNC1(p0, r0, theta - b), ctm);
		b2.p = FUNC3(FUNC1(p1, r1, theta - a), ctm);
		b3.p = FUNC3(FUNC1(p1, r1, theta - b), ctm);

		FUNC2(ctx, painter, &t0, &c0);
		FUNC2(ctx, painter, &t1, &c0);
		FUNC2(ctx, painter, &t2, &c1);
		FUNC2(ctx, painter, &t3, &c1);
		FUNC2(ctx, painter, &b0, &c0);
		FUNC2(ctx, painter, &b1, &c0);
		FUNC2(ctx, painter, &b2, &c1);
		FUNC2(ctx, painter, &b3, &c1);

		FUNC4(ctx, painter, &t0, &t2, &t3, &t1);
		FUNC4(ctx, painter, &b0, &b2, &b3, &b1);

		a = b;
	}
}