#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int gtop; TYPE_3__* gstate; } ;
typedef  TYPE_2__ pdf_run_processor ;
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_8__ {float size; int /*<<< orphan*/ * font; } ;
struct TYPE_10__ {TYPE_1__ text; } ;
typedef  TYPE_3__ pdf_gstate ;
typedef  int /*<<< orphan*/  pdf_font_desc ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,float) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,unsigned char*,int /*<<< orphan*/ ) ; 
 float FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*,unsigned char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(fz_context *ctx, pdf_run_processor *pr, pdf_obj *text)
{
	pdf_gstate *gstate = pr->gstate + pr->gtop;
	pdf_font_desc *fontdesc = gstate->text.font;
	int i;

	if (!fontdesc)
	{
		FUNC0(ctx, "cannot draw text since font and size not set");
		return;
	}

	if (FUNC3(ctx, text))
	{
		int n = FUNC2(ctx, text);
		for (i = 0; i < n; i++)
		{
			pdf_obj *item = FUNC1(ctx, text, i);
			if (FUNC4(ctx, item))
				FUNC10(ctx, pr, (unsigned char *)FUNC8(ctx, item), FUNC9(ctx, item));
			else
				FUNC5(ctx, pr, - FUNC7(ctx, item) * gstate->text.size * 0.001f);
		}
	}
	else if (FUNC4(ctx, text))
	{
		FUNC6(ctx, pr, (unsigned char *)FUNC8(ctx, text), FUNC9(ctx, text));
	}
}