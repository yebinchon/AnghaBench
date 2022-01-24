#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  pdf_document ;
struct TYPE_9__ {float x1; float x0; float y1; float y0; } ;
typedef  TYPE_1__ fz_rect ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  ArtBox ; 
 int /*<<< orphan*/  BleedBox ; 
 int /*<<< orphan*/  Count ; 
 int /*<<< orphan*/  CropBox ; 
 int /*<<< orphan*/  Kids ; 
 int /*<<< orphan*/  MediaBox ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Pages ; 
 int /*<<< orphan*/  Parent ; 
 int /*<<< orphan*/  Root ; 
 int /*<<< orphan*/  Rotate ; 
 int /*<<< orphan*/  TrimBox ; 
 int /*<<< orphan*/  Type ; 
 TYPE_1__ FUNC1 (TYPE_1__,TYPE_1__) ; 
 scalar_t__ FUNC2 (TYPE_1__) ; 
 TYPE_1__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__ FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int x_factor ; 
 int y_factor ; 

__attribute__((used)) static void FUNC25(fz_context *ctx, pdf_document *doc)
{
	pdf_obj *oldroot, *root, *pages, *kids;
	int num_pages = FUNC9(ctx, doc);
	int page, kidcount;
	fz_rect mediabox, cropbox;
	int rotate;

	oldroot = FUNC10(ctx, FUNC23(ctx, doc), FUNC0(Root));
	pages = FUNC10(ctx, oldroot, FUNC0(Pages));

	root = FUNC19(ctx, doc, 2);
	FUNC12(ctx, root, FUNC0(Type), FUNC10(ctx, oldroot, FUNC0(Type)));
	FUNC12(ctx, root, FUNC0(Pages), FUNC10(ctx, oldroot, FUNC0(Pages)));

	FUNC24(ctx, doc, FUNC21(ctx, oldroot), root);

	FUNC15(ctx, root);

	/* Create a new kids array with our new pages in */
	kids = FUNC18(ctx, doc, 1);

	kidcount = 0;
	for (page=0; page < num_pages; page++)
	{
		pdf_obj *page_obj = FUNC17(ctx, doc, page);
		int xf = x_factor, yf = y_factor;
		float w, h;
		int x, y;

		rotate = FUNC20(ctx, FUNC11(ctx, page_obj, FUNC0(Rotate)));
		mediabox = FUNC22(ctx, FUNC11(ctx, page_obj, FUNC0(MediaBox)));
		cropbox = FUNC22(ctx, FUNC11(ctx, page_obj, FUNC0(CropBox)));
		if (FUNC2(mediabox))
			mediabox = FUNC3(0, 0, 612, 792);
		if (!FUNC2(cropbox))
			mediabox = FUNC1(mediabox, cropbox);

		w = mediabox.x1 - mediabox.x0;
		h = mediabox.y1 - mediabox.y0;

		if (rotate == 90 || rotate == 270)
		{
			xf = y_factor;
			yf = x_factor;
		}
		else
		{
			xf = x_factor;
			yf = y_factor;
		}

		if (xf == 0 && yf == 0)
		{
			/* Nothing specified, so split along the long edge */
			if (w > h)
				xf = 2, yf = 1;
			else
				xf = 1, yf = 2;
		}
		else if (xf == 0)
			xf = 1;
		else if (yf == 0)
			yf = 1;

		for (y = yf-1; y >= 0; y--)
		{
			for (x = 0; x < xf; x++)
			{
				pdf_obj *newpageobj, *newpageref, *newmediabox;
				fz_rect mb;

				newpageobj = FUNC8(ctx, FUNC17(ctx, doc, page));
				FUNC16(ctx, newpageobj);
				newpageref = FUNC5(ctx, doc, newpageobj);

				newmediabox = FUNC18(ctx, doc, 4);

				mb.x0 = mediabox.x0 + (w/xf)*x;
				if (x == xf-1)
					mb.x1 = mediabox.x1;
				else
					mb.x1 = mediabox.x0 + (w/xf)*(x+1);
				mb.y0 = mediabox.y0 + (h/yf)*y;
				if (y == yf-1)
					mb.y1 = mediabox.y1;
				else
					mb.y1 = mediabox.y0 + (h/yf)*(y+1);

				FUNC7(ctx, newmediabox, mb.x0);
				FUNC7(ctx, newmediabox, mb.y0);
				FUNC7(ctx, newmediabox, mb.x1);
				FUNC7(ctx, newmediabox, mb.y1);

				FUNC12(ctx, newpageobj, FUNC0(Parent), pages);
				FUNC13(ctx, newpageobj, FUNC0(MediaBox), newmediabox);

				FUNC4(ctx, doc, newpageobj, FUNC0(CropBox), mb);
				FUNC4(ctx, doc, newpageobj, FUNC0(BleedBox), mb);
				FUNC4(ctx, doc, newpageobj, FUNC0(TrimBox), mb);
				FUNC4(ctx, doc, newpageobj, FUNC0(ArtBox), mb);

				/* Store page object in new kids array */
				FUNC15(ctx, newpageobj);
				FUNC6(ctx, kids, newpageref);

				kidcount++;
			}
		}
	}

	/* Update page count and kids array */
	FUNC14(ctx, pages, FUNC0(Count), kidcount);
	FUNC13(ctx, pages, FUNC0(Kids), kids);
}