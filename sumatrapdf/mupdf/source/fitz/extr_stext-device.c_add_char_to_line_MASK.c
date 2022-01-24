#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ fz_stext_page ;
struct TYPE_18__ {scalar_t__ wmode; TYPE_4__* last_char; TYPE_4__* first_char; } ;
typedef  TYPE_3__ fz_stext_line ;
struct TYPE_16__ {void* ur; void* lr; void* ul; void* ll; } ;
struct TYPE_21__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_19__ {int c; int color; float size; TYPE_1__ quad; int /*<<< orphan*/ * font; TYPE_6__ origin; struct TYPE_19__* next; } ;
typedef  TYPE_4__ fz_stext_char ;
struct TYPE_20__ {scalar_t__ x0; scalar_t__ x1; } ;
typedef  TYPE_5__ fz_rect ;
typedef  TYPE_6__ fz_point ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_font ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_5__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC3 (scalar_t__,scalar_t__) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_6__ FUNC5 (TYPE_6__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static fz_stext_char *
FUNC6(fz_context *ctx, fz_stext_page *page, fz_stext_line *line, fz_matrix trm, fz_font *font, float size, int c, fz_point *p, fz_point *q, int color)
{
	fz_stext_char *ch = FUNC4(ctx, page->pool, sizeof *line->first_char);
	fz_point a, d;

	if (!line->first_char)
		line->first_char = line->last_char = ch;
	else
	{
		line->last_char->next = ch;
		line->last_char = ch;
	}

	ch->c = c;
	ch->color = color;
	ch->origin = *p;
	ch->size = size;
	ch->font = font; /* TODO: keep and drop */

	if (line->wmode == 0)
	{
		a.x = 0;
		d.x = 0;
		a.y = FUNC0(ctx, font);
		d.y = FUNC2(ctx, font);
	}
	else
	{
		fz_rect bbox = FUNC1(ctx, font);
		a.x = bbox.x1;
		d.x = bbox.x0;
		a.y = 0;
		d.y = 0;
	}
	a = FUNC5(a, trm);
	d = FUNC5(d, trm);

	ch->quad.ll = FUNC3(p->x + d.x, p->y + d.y);
	ch->quad.ul = FUNC3(p->x + a.x, p->y + a.y);
	ch->quad.lr = FUNC3(q->x + d.x, q->y + d.y);
	ch->quad.ur = FUNC3(q->x + a.x, q->y + a.y);

	return ch;
}