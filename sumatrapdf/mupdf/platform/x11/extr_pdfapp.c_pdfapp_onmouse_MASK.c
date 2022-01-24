#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int x0; int x1; int y0; int y1; } ;
struct TYPE_22__ {int panx; int pany; int iscopying; int ispanning; int selx; int sely; int beyondy; int pageno; int pagecount; int winh; TYPE_1__ selr; scalar_t__ image; int /*<<< orphan*/ * ctx; scalar_t__ presentation_mode; int /*<<< orphan*/  doc; TYPE_5__* page_links; int /*<<< orphan*/  layout_h; int /*<<< orphan*/  layout_w; } ;
typedef  TYPE_3__ pdfapp_t ;
struct TYPE_23__ {int x; int y; } ;
typedef  TYPE_4__ fz_point ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_location ;
struct TYPE_21__ {scalar_t__ x0; scalar_t__ x1; scalar_t__ y0; scalar_t__ y1; } ;
struct TYPE_24__ {int /*<<< orphan*/  uri; TYPE_2__ rect; struct TYPE_24__* next; } ;
typedef  TYPE_5__ fz_link ;
struct TYPE_25__ {int x0; int y0; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_6__ fz_irect ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  ARROW ; 
 int BEYOND_THRESHHOLD ; 
 int /*<<< orphan*/  HAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int,int) ; 
 void* FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__ FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__ FUNC8 (TYPE_4__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 

void FUNC18(pdfapp_t *app, int x, int y, int btn, int modifiers, int state)
{
	fz_context *ctx = app->ctx;
	fz_irect irect = { 0, 0, app->layout_w, app->layout_h };
	fz_link *link;
	fz_matrix ctm;
	fz_point p;
	int processed = 0;

	if (app->image)
		irect = FUNC5(app->ctx, app->image);
	p.x = x - app->panx + irect.x0;
	p.y = y - app->pany + irect.y0;

	FUNC14(&ctm, app);
	ctm = FUNC0(ctm);

	p = FUNC8(p, ctm);

	for (link = app->page_links; link; link = link->next)
	{
		if (p.x >= link->rect.x0 && p.x <= link->rect.x1)
			if (p.y >= link->rect.y0 && p.y <= link->rect.y1)
				break;
	}

	if (link)
	{
		FUNC15(app, HAND);
		if (btn == 1 && state == 1 && !processed)
		{
			if (FUNC1(ctx, link->uri))
				FUNC11(app, link->uri);
			else
			{
				fz_location loc = FUNC7(ctx, app->doc, link->uri, NULL, NULL);
				FUNC10(app, FUNC4(ctx, app->doc, loc)+1);
			}
			return;
		}
	}
	else
	{
		FUNC15(app, ARROW);
	}

	if (state == 1 && !processed)
	{
		if (btn == 1 && !app->iscopying)
		{
			app->ispanning = 1;
			app->selx = x;
			app->sely = y;
			app->beyondy = 0;
		}
		if (btn == 3 && !app->ispanning)
		{
			app->iscopying = 1;
			app->selx = x;
			app->sely = y;
			app->selr.x0 = x;
			app->selr.x1 = x;
			app->selr.y0 = y;
			app->selr.y1 = y;
		}
		if (btn == 4 || btn == 5) /* scroll wheel */
		{
			FUNC9(app, modifiers, btn == 4 ? 1 : -1);
		}
		if (btn == 6 || btn == 7) /* scroll wheel (horizontal) */
		{
			/* scroll left/right or up/down if shift is pressed */
			FUNC9(app, modifiers ^ (1<<0), btn == 6 ? 1 : -1);
		}
		if (app->presentation_mode)
		{
			if (btn == 1 && app->pageno < app->pagecount)
			{
				app->pageno++;
				FUNC13(app, 1, 1, 1, 0, 0);
			}
			if (btn == 3 && app->pageno > 1)
			{
				app->pageno--;
				FUNC13(app, 1, 1, 1, 0, 0);
			}
		}
	}

	else if (state == -1)
	{
		if (app->iscopying)
		{
			app->iscopying = 0;
			app->selr.x0 = FUNC3(app->selx, x) - app->panx + irect.x0;
			app->selr.x1 = FUNC2(app->selx, x) - app->panx + irect.x0;
			app->selr.y0 = FUNC3(app->sely, y) - app->pany + irect.y0;
			app->selr.y1 = FUNC2(app->sely, y) - app->pany + irect.y0;
			FUNC17(app);
			if (app->selr.x0 < app->selr.x1 && app->selr.y0 < app->selr.y1)
				FUNC16(app);
		}
		app->ispanning = 0;
	}

	else if (app->ispanning)
	{
		int newx = app->panx + x - app->selx;
		int newy = app->pany + y - app->sely;
		int imgh = app->winh;
		if (app->image)
			imgh = FUNC6(app->ctx, app->image);

		/* Scrolling beyond limits implies flipping pages */
		/* Are we requested to scroll beyond limits? */
		if (newy + imgh < app->winh || newy > 0)
		{
			/* Yes. We can assume that deltay != 0 */
			int deltay = y - app->sely;
			/* Check whether the panning has occurred in the
			 * direction that we are already crossing the
			 * limit it. If not, we can conclude that we
			 * have switched ends of the page and will thus
			 * start over counting.
			 */
			if( app->beyondy == 0 || (app->beyondy ^ deltay) >= 0 )
			{
				/* Updating how far we are beyond and
				 * flipping pages if beyond threshold
				 */
				app->beyondy += deltay;
				if (app->beyondy > BEYOND_THRESHHOLD)
				{
					if( app->pageno > 1 )
					{
						app->pageno--;
						FUNC13(app, 1, 1, 1, 0, 0);
						if (app->image)
							newy = -FUNC6(app->ctx, app->image);
					}
					app->beyondy = 0;
				}
				else if (app->beyondy < -BEYOND_THRESHHOLD)
				{
					if( app->pageno < app->pagecount )
					{
						app->pageno++;
						FUNC13(app, 1, 1, 1, 0, 0);
						newy = 0;
					}
					app->beyondy = 0;
				}
			}
			else
				app->beyondy = 0;
		}
		/* Although at this point we've already determined that
		 * or that no scrolling will be performed in
		 * y-direction, the x-direction has not yet been taken
		 * care off. Therefore
		 */
		FUNC12(app, newx, newy);

		app->selx = x;
		app->sely = y;
	}

	else if (app->iscopying)
	{
		app->selr.x0 = FUNC3(app->selx, x) - app->panx + irect.x0;
		app->selr.x1 = FUNC2(app->selx, x) - app->panx + irect.x0;
		app->selr.y0 = FUNC3(app->sely, y) - app->pany + irect.y0;
		app->selr.y1 = FUNC2(app->sely, y) - app->pany + irect.y0;
		FUNC17(app);
	}
}