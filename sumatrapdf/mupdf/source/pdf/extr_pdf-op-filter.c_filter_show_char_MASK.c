#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
struct TYPE_17__ {size_t cid_to_ucs_len; int* cid_to_ucs; scalar_t__ wmode; int /*<<< orphan*/  font; scalar_t__ to_unicode; } ;
typedef  TYPE_3__ pdf_font_desc ;
struct TYPE_21__ {int /*<<< orphan*/  gid; } ;
struct TYPE_18__ {int (* text_filter ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__) ;TYPE_8__ tos; int /*<<< orphan*/  opaque; TYPE_6__* gstate; } ;
typedef  TYPE_4__ pdf_filter_processor ;
struct TYPE_19__ {void* y1; scalar_t__ y0; void* x1; scalar_t__ x0; } ;
typedef  TYPE_5__ fz_rect ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_16__ {int /*<<< orphan*/  ctm; } ;
struct TYPE_14__ {TYPE_3__* font; } ;
struct TYPE_15__ {int /*<<< orphan*/  ctm; TYPE_10__ text; } ;
struct TYPE_20__ {TYPE_2__ sent; TYPE_1__ pending; } ;
typedef  TYPE_6__ filter_gstate ;

/* Variables and functions */
 int FZ_REPLACEMENT_CHARACTER ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_5__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_8__*,TYPE_10__*,TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_8__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__) ; 

__attribute__((used)) static int
FUNC9(fz_context *ctx, pdf_filter_processor *p, int cid, int *unicode)
{
	filter_gstate *gstate = p->gstate;
	pdf_font_desc *fontdesc = gstate->pending.text.font;
	fz_matrix trm;
	int ucsbuf[8];
	int ucslen;
	int remove = 0;

	(void)FUNC6(ctx, &p->tos, &gstate->pending.text, fontdesc, cid, &trm);

	ucslen = 0;
	if (fontdesc->to_unicode)
		ucslen = FUNC5(fontdesc->to_unicode, cid, ucsbuf);
	if (ucslen == 0 && (size_t)cid < fontdesc->cid_to_ucs_len)
	{
		ucsbuf[0] = fontdesc->cid_to_ucs[cid];
		ucslen = 1;
	}
	if (ucslen == 0 || (ucslen == 1 && ucsbuf[0] == 0))
	{
		ucsbuf[0] = FZ_REPLACEMENT_CHARACTER;
		ucslen = 1;
	}
	*unicode = ucsbuf[0];

	if (p->text_filter)
	{
		fz_matrix ctm = FUNC1(gstate->pending.ctm, gstate->sent.ctm);
		fz_rect bbox;

		if (fontdesc->wmode == 0)
		{
			bbox.x0 = 0;
			bbox.y0 = FUNC4(ctx, fontdesc->font);
			bbox.x1 = FUNC0(ctx, fontdesc->font, p->tos.gid, 0);
			bbox.y1 = FUNC2(ctx, fontdesc->font);
		}
		else
		{
			fz_rect font_bbox = FUNC3(ctx, fontdesc->font);
			bbox.x0 = font_bbox.x0;
			bbox.x1 = font_bbox.x1;
			bbox.y0 = 0;
			bbox.y1 = FUNC0(ctx, fontdesc->font, p->tos.gid, 1);
		}

		remove = p->text_filter(ctx, p->opaque, ucsbuf, ucslen, trm, ctm, bbox);
	}

	FUNC7(ctx, &p->tos);

	return remove;
}