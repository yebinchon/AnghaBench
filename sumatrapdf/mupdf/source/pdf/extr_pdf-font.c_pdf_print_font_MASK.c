#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  w; int /*<<< orphan*/  y; } ;
struct TYPE_9__ {int /*<<< orphan*/  w; } ;
struct TYPE_13__ {int hmtx_len; int vmtx_len; TYPE_5__* vmtx; TYPE_4__ dvmtx; scalar_t__ wmode; TYPE_3__* hmtx; TYPE_2__ dhmtx; TYPE_1__* font; } ;
typedef  TYPE_6__ pdf_font_desc ;
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_12__ {int /*<<< orphan*/  w; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  hi; int /*<<< orphan*/  lo; } ;
struct TYPE_10__ {int /*<<< orphan*/  w; int /*<<< orphan*/  hi; int /*<<< orphan*/  lo; } ;
struct TYPE_8__ {scalar_t__ t3procs; scalar_t__ ft_face; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 

void
FUNC1(fz_context *ctx, fz_output *out, pdf_font_desc *fontdesc)
{
	int i;

	FUNC0(ctx, out, "fontdesc {\n");

	if (fontdesc->font->ft_face)
		FUNC0(ctx, out, "\tfreetype font\n");
	if (fontdesc->font->t3procs)
		FUNC0(ctx, out, "\ttype3 font\n");

	FUNC0(ctx, out, "\twmode %d\n", fontdesc->wmode);
	FUNC0(ctx, out, "\tDW %d\n", fontdesc->dhmtx.w);

	FUNC0(ctx, out, "\tW {\n");
	for (i = 0; i < fontdesc->hmtx_len; i++)
		FUNC0(ctx, out, "\t\t<%04x> <%04x> %d\n",
			fontdesc->hmtx[i].lo, fontdesc->hmtx[i].hi, fontdesc->hmtx[i].w);
	FUNC0(ctx, out, "\t}\n");

	if (fontdesc->wmode)
	{
		FUNC0(ctx, out, "\tDW2 [%d %d]\n", fontdesc->dvmtx.y, fontdesc->dvmtx.w);
		FUNC0(ctx, out, "\tW2 {\n");
		for (i = 0; i < fontdesc->vmtx_len; i++)
			FUNC0(ctx, out, "\t\t<%04x> <%04x> %d %d %d\n", fontdesc->vmtx[i].lo, fontdesc->vmtx[i].hi,
				fontdesc->vmtx[i].x, fontdesc->vmtx[i].y, fontdesc->vmtx[i].w);
		FUNC0(ctx, out, "\t}\n");
	}
}