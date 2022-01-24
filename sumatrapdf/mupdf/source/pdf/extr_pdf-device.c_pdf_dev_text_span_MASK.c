#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_device ;
struct TYPE_19__ {int font_size; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ gstate ;
struct TYPE_23__ {int e; int f; } ;
struct TYPE_20__ {int len; int wmode; int /*<<< orphan*/  font; TYPE_3__* items; TYPE_5__ trm; } ;
typedef  TYPE_2__ fz_text_span ;
struct TYPE_21__ {int x; int y; int gid; } ;
typedef  TYPE_3__ fz_text_item ;
struct TYPE_22__ {int x; int y; } ;
typedef  TYPE_4__ fz_point ;
typedef  TYPE_5__ fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 float FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 TYPE_5__ FUNC4 (TYPE_5__,TYPE_5__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_5__ FUNC6 (TYPE_5__) ; 
 TYPE_5__ FUNC7 (TYPE_5__,float,float) ; 
 TYPE_5__ FUNC8 (int,int) ; 
 TYPE_4__ FUNC9 (TYPE_4__,TYPE_5__) ; 

__attribute__((used)) static void
FUNC10(fz_context *ctx, pdf_device *pdev, fz_text_span *span)
{
	gstate *gs = FUNC0(pdev);
	fz_matrix trm, tm, tlm, inv_trm, inv_tm;
	fz_matrix inv_tfs;
	fz_point d;
	float adv;
	int dx, dy;
	int i;

	if (span->len == 0)
		return;

	inv_tfs = FUNC8(1 / gs->font_size, 1 / gs->font_size);

	trm = span->trm;
	trm.e = span->items[0].x;
	trm.f = span->items[0].y;

	tm = FUNC4(inv_tfs, trm);
	tlm = tm;

	inv_tm = FUNC6(tm);
	inv_trm = FUNC6(trm);

	FUNC2(ctx, gs->buf, "%M Tm\n[<", &tm);

	for (i = 0; i < span->len; ++i)
	{
		fz_text_item *it = &span->items[i];
		if (it->gid < 0)
			continue;

		/* transform difference from expected pen position into font units. */
		d.x = it->x - trm.e;
		d.y = it->y - trm.f;
		d = FUNC9(d, inv_trm);
		dx = (int)(d.x * 1000 + (d.x < 0 ? -0.5f : 0.5f));
		dy = (int)(d.y * 1000 + (d.y < 0 ? -0.5f : 0.5f));

		trm.e = it->x;
		trm.f = it->y;

		if (dx != 0 || dy != 0)
		{
			if (span->wmode == 0 && dy == 0)
				FUNC2(ctx, gs->buf, ">%d<", -dx);
			else if (span->wmode == 1 && dx == 0)
				FUNC2(ctx, gs->buf, ">%d<", -dy);
			else
			{
				/* Calculate offset from start of the previous line */
				tm = FUNC4(inv_tfs, trm);
				d.x = tm.e - tlm.e;
				d.y = tm.f - tlm.f;
				d = FUNC9(d, inv_tm);
				FUNC2(ctx, gs->buf, ">]TJ\n%g %g Td\n[<", d.x, d.y);
				tlm = tm;
			}
		}

		if (FUNC5(ctx, span->font))
			FUNC2(ctx, gs->buf, "%02x", it->gid);
		else
			FUNC2(ctx, gs->buf, "%04x", it->gid);

		adv = FUNC1(ctx, span->font, it->gid, span->wmode);
		if (span->wmode == 0)
			trm = FUNC7(trm, adv, 0);
		else
			trm = FUNC7(trm, 0, adv);
	}

	FUNC3(ctx, gs->buf, ">]TJ\n");
}