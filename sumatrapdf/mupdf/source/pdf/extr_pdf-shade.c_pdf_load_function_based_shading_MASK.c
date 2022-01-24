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
typedef  int /*<<< orphan*/  pdf_function ;
typedef  int /*<<< orphan*/  pdf_document ;
struct TYPE_5__ {int xdivs; int ydivs; float* fn_vals; float** domain; int /*<<< orphan*/  matrix; } ;
struct TYPE_6__ {TYPE_1__ f; } ;
struct TYPE_7__ {TYPE_2__ u; int /*<<< orphan*/  colorspace; } ;
typedef  TYPE_3__ fz_shade ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  Domain ; 
 int FUNSEGS ; 
 int /*<<< orphan*/  Matrix ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 float* FUNC2 (int /*<<< orphan*/ *,int) ; 
 float FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float*,int,float*,int) ; 

__attribute__((used)) static void
FUNC7(fz_context *ctx, pdf_document *doc, fz_shade *shade, pdf_obj *dict, pdf_function *func)
{
	pdf_obj *obj;
	float x0, y0, x1, y1;
	float fv[2];
	int xx, yy;
	float *p;
	int n = FUNC1(ctx, shade->colorspace);

	x0 = y0 = 0;
	x1 = y1 = 1;
	obj = FUNC4(ctx, dict, FUNC0(Domain));
	if (obj)
	{
		x0 = FUNC3(ctx, obj, 0);
		x1 = FUNC3(ctx, obj, 1);
		y0 = FUNC3(ctx, obj, 2);
		y1 = FUNC3(ctx, obj, 3);
	}

	shade->u.f.matrix = FUNC5(ctx, dict, FUNC0(Matrix));
	shade->u.f.xdivs = FUNSEGS;
	shade->u.f.ydivs = FUNSEGS;
	shade->u.f.fn_vals = FUNC2(ctx, (FUNSEGS+1)*(FUNSEGS+1)*n*sizeof(float));
	shade->u.f.domain[0][0] = x0;
	shade->u.f.domain[0][1] = y0;
	shade->u.f.domain[1][0] = x1;
	shade->u.f.domain[1][1] = y1;

	p = shade->u.f.fn_vals;
	for (yy = 0; yy <= FUNSEGS; yy++)
	{
		fv[1] = y0 + (y1 - y0) * yy / FUNSEGS;

		for (xx = 0; xx <= FUNSEGS; xx++)
		{
			fv[0] = x0 + (x1 - x0) * xx / FUNSEGS;

			FUNC6(ctx, func, fv, 2, p, n);
			p += n;
		}
	}
}