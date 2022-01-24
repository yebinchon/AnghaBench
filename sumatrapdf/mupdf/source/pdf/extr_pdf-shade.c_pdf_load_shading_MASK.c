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
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  pdf_document ;
typedef  int /*<<< orphan*/  fz_shade ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  CA ; 
 int /*<<< orphan*/  ExtGState ; 
 int /*<<< orphan*/  FZ_ERROR_SYNTAX ; 
 int /*<<< orphan*/  Matrix ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PatternType ; 
 int /*<<< orphan*/  Shading ; 
 int /*<<< orphan*/  ca ; 
 int /*<<< orphan*/  fz_drop_shade_imp ; 
 int /*<<< orphan*/  fz_identity ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

fz_shade *
FUNC9(fz_context *ctx, pdf_document *doc, pdf_obj *dict)
{
	fz_matrix mat;
	pdf_obj *obj;
	fz_shade *shade;

	if ((shade = FUNC6(ctx, fz_drop_shade_imp, dict)) != NULL)
	{
		return shade;
	}

	/* Type 2 pattern dictionary */
	if (FUNC4(ctx, dict, FUNC0(PatternType)))
	{
		mat = FUNC5(ctx, dict, FUNC0(Matrix));

		obj = FUNC4(ctx, dict, FUNC0(ExtGState));
		if (obj)
		{
			if (FUNC4(ctx, obj, FUNC0(CA)) || FUNC4(ctx, obj, FUNC0(ca)))
			{
				FUNC3(ctx, "shading with alpha not supported");
			}
		}

		obj = FUNC4(ctx, dict, FUNC0(Shading));
		if (!obj)
			FUNC2(ctx, FZ_ERROR_SYNTAX, "missing shading dictionary");

		shade = FUNC7(ctx, doc, obj, mat);
	}

	/* Naked shading dictionary */
	else
	{
		shade = FUNC7(ctx, doc, dict, fz_identity);
	}

	FUNC8(ctx, dict, shade, FUNC1(ctx, shade));

	return shade;
}