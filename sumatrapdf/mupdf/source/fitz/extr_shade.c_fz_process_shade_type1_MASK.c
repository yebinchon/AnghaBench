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
typedef  int /*<<< orphan*/  fz_vertex ;
struct TYPE_5__ {float* fn_vals; int xdivs; int ydivs; float** domain; int /*<<< orphan*/  matrix; } ;
struct TYPE_6__ {TYPE_1__ f; } ;
struct TYPE_7__ {TYPE_2__ u; int /*<<< orphan*/  colorspace; } ;
typedef  TYPE_3__ fz_shade ;
typedef  int /*<<< orphan*/  fz_mesh_processor ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,float,float,float*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, fz_shade *shade, fz_matrix ctm, fz_mesh_processor *painter)
{
	float *p = shade->u.f.fn_vals;
	int xdivs = shade->u.f.xdivs;
	int ydivs = shade->u.f.ydivs;
	float x0 = shade->u.f.domain[0][0];
	float y0 = shade->u.f.domain[0][1];
	float x1 = shade->u.f.domain[1][0];
	float y1 = shade->u.f.domain[1][1];
	int xx, yy;
	float y, yn, x;
	fz_vertex vs[2][2];
	fz_vertex *v = vs[0];
	fz_vertex *vn = vs[1];
	int n = FUNC1(ctx, shade->colorspace);

	ctm = FUNC2(shade->u.f.matrix, ctm);

	y = y0;
	for (yy = 0; yy < ydivs; yy++)
	{
		yn = y0 + (y1 - y0) * (yy + 1) / ydivs;

		x = x0;

		FUNC3(ctx, painter, &v[0], ctm, x, y, p);
		p += n;
		FUNC3(ctx, painter, &v[1], ctm, x, yn, p + xdivs * n);

		for (xx = 0; xx < xdivs; xx++)
		{
			x = x0 + (x1 - x0) * (xx + 1) / xdivs;

			FUNC3(ctx, painter, &vn[0], ctm, x, y, p);
			p += n;
			FUNC3(ctx, painter, &vn[1], ctm, x, yn, p + xdivs * n);

			FUNC4(ctx, painter, &v[0], &vn[0], &vn[1], &v[1]);
			FUNC0(v,vn);
		}
		y = yn;
	}
}