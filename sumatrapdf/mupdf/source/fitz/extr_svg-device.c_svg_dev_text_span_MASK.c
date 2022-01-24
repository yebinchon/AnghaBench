#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/ * out; } ;
typedef  TYPE_1__ svg_device ;
struct TYPE_26__ {float a; float b; float c; float d; scalar_t__ f; scalar_t__ e; } ;
struct TYPE_23__ {int len; scalar_t__ wmode; TYPE_3__* items; int /*<<< orphan*/  font; TYPE_5__ trm; } ;
typedef  TYPE_2__ fz_text_span ;
struct TYPE_24__ {scalar_t__ gid; int ucs; scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_3__ fz_text_item ;
struct TYPE_25__ {scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_4__ fz_point ;
typedef  int /*<<< orphan*/  fz_output ;
typedef  TYPE_5__ fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_2__ const*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_2__ const*,TYPE_5__,int) ; 
 TYPE_5__ FUNC2 (TYPE_5__,TYPE_5__) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_5__ FUNC6 (TYPE_5__) ; 
 float FUNC7 (TYPE_5__) ; 
 TYPE_4__ FUNC8 (TYPE_4__,TYPE_5__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 float FUNC11 (int /*<<< orphan*/ *,TYPE_2__ const*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(fz_context *ctx, svg_device *sdev, fz_matrix ctm, const fz_text_span *span)
{
	fz_output *out = sdev->out;
	char font_family[100];
	int is_bold, is_italic;
	fz_matrix tm, inv_tm, final_tm;
	fz_point p;
	float font_size;
	fz_text_item *it;
	int start, end, i;
	float cluster_advance = 0;

	if (span->len == 0)
	{
		FUNC10(ctx, out, "/>\n");
		return;
	}

	tm = span->trm;
	font_size = FUNC7(tm);
	final_tm.a = tm.a / font_size;
	final_tm.b = tm.b / font_size;
	final_tm.c = -tm.c / font_size;
	final_tm.d = -tm.d / font_size;
	final_tm.e = 0;
	final_tm.f = 0;
	inv_tm = FUNC6(final_tm);
	final_tm = FUNC2(final_tm, ctm);

	tm.e = span->items[0].x;
	tm.f = span->items[0].y;

	FUNC12(ctx, font_family, sizeof font_family, FUNC5(ctx, span->font));
	is_bold = FUNC3(ctx, span->font);
	is_italic = FUNC4(ctx, span->font);

	FUNC10(ctx, out, " xml:space=\"preserve\"");
	FUNC10(ctx, out, " transform=\"matrix(%M)\"", &final_tm);
	FUNC10(ctx, out, " font-size=\"%g\"", font_size);
	FUNC10(ctx, out, " font-family=\"%s\"", font_family);
	if (is_bold) FUNC10(ctx, out, " font-weight=\"bold\"");
	if (is_italic) FUNC10(ctx, out, " font-style=\"italic\"");
	if (span->wmode != 0) FUNC10(ctx, out, " writing-mode=\"tb\"");

	FUNC9(ctx, out, '>');

	start = FUNC0(ctx, span, 0);
	while (start < span->len)
	{
		end = FUNC1(ctx, span, inv_tm, start);

		p.x = span->items[start].x;
		p.y = span->items[start].y;
		p = FUNC8(p, inv_tm);
		if (span->items[start].gid >= 0)
			cluster_advance = FUNC11(ctx, span, start, end);
		if (span->wmode == 0)
			FUNC10(ctx, out, "<tspan y=\"%g\" x=\"%g", p.y, p.x);
		else
			FUNC10(ctx, out, "<tspan x=\"%g\" y=\"%g", p.x, p.y);
		for (i = start + 1; i < end; ++i)
		{
			it = &span->items[i];
			if (it->gid >= 0)
				cluster_advance = FUNC11(ctx, span, i, end);
			if (it->ucs >= 0)
			{
				if (it->gid >= 0)
				{
					p.x = it->x;
					p.y = it->y;
					p = FUNC8(p, inv_tm);
				}
				else
				{
					/* we have no glyph (such as in a ligature) -- advance a bit */
					if (span->wmode == 0)
						p.x += font_size * cluster_advance;
					else
						p.y += font_size * cluster_advance;
				}
				FUNC10(ctx, out, " %g", span->wmode == 0 ? p.x : p.y);
			}
		}
		FUNC10(ctx, out, "\">");
		for (i = start; i < end; ++i)
		{
			it = &span->items[i];
			if (it->ucs >= 0)
			{
				int c = it->ucs;
				if (c >= 32 && c <= 127 && c != '<' && c != '&' && c != '>')
					FUNC9(ctx, out, c);
				else
					FUNC10(ctx, out, "&#x%04x;", c);
			}
		}
		FUNC10(ctx, out, "</tspan>");

		start = FUNC0(ctx, span, end);
	}

	FUNC10(ctx, out, "</text>\n");
}