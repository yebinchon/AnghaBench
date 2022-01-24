#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int gtop; TYPE_3__* gstate; } ;
typedef  TYPE_2__ pdf_run_processor ;
struct TYPE_8__ {int /*<<< orphan*/  word_space; TYPE_4__* font; } ;
struct TYPE_10__ {TYPE_1__ text; } ;
typedef  TYPE_3__ pdf_gstate ;
struct TYPE_11__ {int /*<<< orphan*/  encoding; } ;
typedef  TYPE_4__ pdf_font_desc ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned char*,unsigned char*,unsigned int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, pdf_run_processor *pr, unsigned char *buf, int len)
{
	pdf_gstate *gstate = pr->gstate + pr->gtop;
	pdf_font_desc *fontdesc = gstate->text.font;
	unsigned char *end = buf + len;
	unsigned int cpt;
	int cid;

	while (buf < end)
	{
		int w = FUNC1(fontdesc->encoding, buf, end, &cpt);
		buf += w;

		cid = FUNC2(fontdesc->encoding, cpt);
		if (cid >= 0)
			FUNC3(ctx, pr, cid);
		else
			FUNC0(ctx, "cannot encode character");
		if (cpt == 32 && w == 1)
			FUNC4(ctx, pr, gstate->text.word_space);
	}
}