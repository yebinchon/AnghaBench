#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_11__ {int x0; int y0; int x1; int y1; } ;
typedef  TYPE_1__ fz_rect ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  CropBox ; 
 int /*<<< orphan*/  MediaBox ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Rotate ; 
 int /*<<< orphan*/  UserUnit ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC2 (TYPE_1__,TYPE_1__) ; 
 scalar_t__ FUNC3 (TYPE_1__) ; 
 void* FUNC4 (int,int) ; 
 void* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (float,float) ; 
 TYPE_1__ FUNC8 (TYPE_1__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 TYPE_1__ fz_unit_rect ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 float FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC16(fz_context *ctx, pdf_obj *pageobj, fz_rect *page_mediabox, fz_matrix *page_ctm)
{
	pdf_obj *obj;
	fz_rect mediabox, cropbox, realbox, pagebox;
	float userunit = 1;
	int rotate;

	if (!page_mediabox)
		page_mediabox = &pagebox;

	obj = FUNC10(ctx, pageobj, FUNC0(UserUnit));
	if (FUNC12(ctx, obj))
		userunit = FUNC14(ctx, obj);

	mediabox = FUNC15(ctx, FUNC11(ctx, pageobj, FUNC0(MediaBox)));
	if (FUNC3(mediabox))
	{
		mediabox.x0 = 0;
		mediabox.y0 = 0;
		mediabox.x1 = 612;
		mediabox.y1 = 792;
	}

	cropbox = FUNC15(ctx, FUNC11(ctx, pageobj, FUNC0(CropBox)));
	if (!FUNC3(cropbox))
		mediabox = FUNC2(mediabox, cropbox);

	page_mediabox->x0 = FUNC5(mediabox.x0, mediabox.x1);
	page_mediabox->y0 = FUNC5(mediabox.y0, mediabox.y1);
	page_mediabox->x1 = FUNC4(mediabox.x0, mediabox.x1);
	page_mediabox->y1 = FUNC4(mediabox.y0, mediabox.y1);

	if (page_mediabox->x1 - page_mediabox->x0 < 1 || page_mediabox->y1 - page_mediabox->y0 < 1)
		*page_mediabox = fz_unit_rect;

	rotate = FUNC13(ctx, FUNC11(ctx, pageobj, FUNC0(Rotate)));

	/* Snap page rotation to 0, 90, 180 or 270 */
	if (rotate < 0)
		rotate = 360 - ((-rotate) % 360);
	if (rotate >= 360)
		rotate = rotate % 360;
	rotate = 90*((rotate + 45)/90);
	if (rotate >= 360)
		rotate = 0;

	/* Compute transform from fitz' page space (upper left page origin, y descending, 72 dpi)
	 * to PDF user space (arbitrary page origin, y ascending, UserUnit dpi). */

	/* Make left-handed and scale by UserUnit */
	*page_ctm = FUNC7(userunit, -userunit);

	/* Rotate */
	*page_ctm = FUNC6(*page_ctm, -rotate);

	/* Translate page origin to 0,0 */
	realbox = FUNC8(*page_mediabox, *page_ctm);
	*page_ctm = FUNC1(*page_ctm, FUNC9(-realbox.x0, -realbox.y0));
}