#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_17__ ;

/* Type definitions */
struct TYPE_19__ {int gtop; int gparent; TYPE_3__* gstate; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ pdf_run_processor ;
typedef  int /*<<< orphan*/  pdf_processor ;
struct TYPE_18__ {float x0; float y0; } ;
struct TYPE_20__ {int id; float xstep; float ystep; int /*<<< orphan*/  contents; int /*<<< orphan*/  resources; int /*<<< orphan*/  document; TYPE_17__ bbox; int /*<<< orphan*/  matrix; scalar_t__ ismask; } ;
typedef  TYPE_2__ pdf_pattern ;
struct TYPE_21__ {void* ctm; int /*<<< orphan*/ * softmask; int /*<<< orphan*/  stroke; int /*<<< orphan*/  fill; } ;
typedef  TYPE_3__ pdf_gstate ;
struct TYPE_22__ {float x0; float y0; float x1; float y1; } ;
typedef  TYPE_4__ fz_rect ;
typedef  void* fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int PDF_FILL ; 
 int PDF_STROKE ; 
 int FUNC0 (float) ; 
 int FUNC1 (float) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__,TYPE_17__,float,float,void*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC5 (void*) ; 
 void* FUNC6 (void*,int,int) ; 
 TYPE_4__ FUNC7 (TYPE_4__,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 

__attribute__((used)) static pdf_gstate *
FUNC16(fz_context *ctx, pdf_run_processor *pr, pdf_pattern *pat, int pat_gstate_num, fz_rect area, int what)
{
	pdf_gstate *gstate;
	pdf_gstate *pat_gstate;
	int gparent_save;
	fz_matrix ptm, invptm, gparent_save_ctm;
	int x0, y0, x1, y1;
	float fx0, fy0, fx1, fy1;
	fz_rect local_area;
	int id;

	FUNC12(ctx, pr);
	gstate = pr->gstate + pr->gtop;
	pat_gstate = pr->gstate + pat_gstate_num;

	/* Patterns are run with the gstate of the parent */
	FUNC8(ctx, gstate, pat_gstate);

	if (pat->ismask)
	{
		FUNC15(ctx, pr, PDF_FILL);
		FUNC15(ctx, pr, PDF_STROKE);
		if (what == PDF_FILL)
		{
			FUNC9(ctx, &gstate->stroke);
			FUNC13(ctx, &gstate->fill);
			gstate->stroke = gstate->fill;
		}
		if (what == PDF_STROKE)
		{
			FUNC9(ctx, &gstate->fill);
			FUNC13(ctx, &gstate->stroke);
			gstate->fill = gstate->stroke;
		}
		id = 0; /* don't cache uncolored patterns, since we colorize them when drawing */
	}
	else
	{
		// TODO: unset only the current fill/stroke or both?
		FUNC15(ctx, pr, what);
		id = pat->id;
	}

	/* don't apply soft masks to objects in the pattern as well */
	if (gstate->softmask)
	{
		FUNC10(ctx, gstate->softmask);
		gstate->softmask = NULL;
	}

	ptm = FUNC3(pat->matrix, pat_gstate->ctm);
	invptm = FUNC5(ptm);

	/* The parent_ctm is amended with our pattern matrix */
	gparent_save = pr->gparent;
	pr->gparent = pr->gtop-1;
	gparent_save_ctm = pr->gstate[pr->gparent].ctm;
	pr->gstate[pr->gparent].ctm = ptm;

	/* patterns are painted using the parent_ctm. area = bbox of
	 * shape to be filled in device space. Map it back to pattern
	 * space. */
	local_area = FUNC7(area, invptm);

	fx0 = (local_area.x0 - pat->bbox.x0) / pat->xstep;
	fy0 = (local_area.y0 - pat->bbox.y0) / pat->ystep;
	fx1 = (local_area.x1 - pat->bbox.x0) / pat->xstep;
	fy1 = (local_area.y1 - pat->bbox.y0) / pat->ystep;
	if (fx0 > fx1)
	{
		float t = fx0; fx0 = fx1; fx1 = t;
	}
	if (fy0 > fy1)
	{
		float t = fy0; fy0 = fy1; fy1 = t;
	}

#ifdef TILE
	/* We have tried various formulations in the past, but this one is
	 * best we've found; only use it as a tile if a whole repeat is
	 * required in at least one direction. Note, that this allows for
	 * 'sections' of 4 tiles to be show, but all non-overlapping. */
	if (fx1-fx0 > 1 || fy1-fy0 > 1)
#else
	if (0)
#endif
	{
		int cached = FUNC2(ctx, pr->dev, local_area, pat->bbox, pat->xstep, pat->ystep, ptm, id);
		if (!cached)
		{
			gstate->ctm = ptm;
			FUNC12(ctx, pr);
			FUNC14(ctx, (pdf_processor*)pr, pat->document, pat->resources, pat->contents, NULL);
			FUNC11(ctx, pr);
		}
		FUNC4(ctx, pr->dev);
	}
	else
	{
		int x, y;

		/* When calculating the number of tiles required, we adjust by
		 * a small amount to allow for rounding errors. By choosing
		 * this amount to be smaller than 1/256, we guarantee we won't
		 * cause problems that will be visible even under our most
		 * extreme antialiasing. */
		x0 = FUNC1(fx0 + 0.001f);
		y0 = FUNC1(fy0 + 0.001f);
		x1 = FUNC0(fx1 - 0.001f);
		y1 = FUNC0(fy1 - 0.001f);
		/* The above adjustments cause problems for sufficiently
		 * large values for xstep/ystep which may be used if the
		 * pattern is expected to be rendered exactly once. */
		if (fx1 > fx0 && x1 == x0)
			x1 = x0 + 1;
		if (fy1 > fy0 && y1 == y0)
			y1 = y0 + 1;

		for (y = y0; y < y1; y++)
		{
			for (x = x0; x < x1; x++)
			{
				gstate->ctm = FUNC6(ptm, x * pat->xstep, y * pat->ystep);
				FUNC12(ctx, pr);
				FUNC14(ctx, (pdf_processor*)pr, pat->document, pat->resources, pat->contents, NULL);
				FUNC11(ctx, pr);
			}
		}
	}

	pr->gstate[pr->gparent].ctm = gparent_save_ctm;
	pr->gparent = gparent_save;

	FUNC11(ctx, pr);

	return pr->gstate + pr->gtop;
}