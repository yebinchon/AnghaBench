#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  pdf_document ;
struct TYPE_8__ {int /*<<< orphan*/  resources; int /*<<< orphan*/ * doc; } ;
typedef  TYPE_1__ pdf_device ;
struct TYPE_9__ {int /*<<< orphan*/  buf; } ;
typedef  TYPE_2__ gstate ;
typedef  int /*<<< orphan*/  fz_rect ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;

/* Variables and functions */
 int /*<<< orphan*/  BM ; 
 TYPE_2__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  ExtGState ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Type ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,TYPE_1__*,int /*<<< orphan*/ ,int,int,float,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC14(fz_context *ctx, fz_device *dev, fz_rect bbox, fz_colorspace *cs, int isolated, int knockout, int blendmode, float alpha)
{
	pdf_device *pdev = (pdf_device*)dev;
	pdf_document *doc = pdev->doc;
	int num;
	pdf_obj *form_ref;
	gstate *gs;

	FUNC6(ctx, pdev);

	num = FUNC7(ctx, &form_ref, pdev, bbox, isolated, knockout, alpha, cs);

	/* Do we have an appropriate blending extgstate already? */
	{
		char text[32];
		pdf_obj *obj;
		FUNC5(text, sizeof(text), "ExtGState/BlendMode%d", blendmode);
		obj = FUNC9(ctx, pdev->resources, text);
		if (obj == NULL)
		{
			/* No, better make one */
			obj = FUNC13(ctx, doc, 2);
			FUNC10(ctx, obj, FUNC1(Type), FUNC1(ExtGState));
			FUNC11(ctx, obj, FUNC1(BM), FUNC3(blendmode));
			FUNC12(ctx, pdev->resources, text, obj);
		}
	}

	/* Add the call to this group */
	gs = FUNC0(pdev);
	FUNC2(ctx, gs->buf, "/BlendMode%d gs /Fm%d Do\n", blendmode, num);

	/* Now, everything we get until the end of group needs to go into a
	 * new buffer, which will be the stream contents for the form. */
	FUNC8(ctx, pdev, FUNC4(ctx, 1024), NULL, form_ref);
}