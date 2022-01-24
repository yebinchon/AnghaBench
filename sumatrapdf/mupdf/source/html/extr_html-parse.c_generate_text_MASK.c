#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct genstate {int at_bol; int emit_white; size_t last_brk_cls; int /*<<< orphan*/ * pool; } ;
typedef  int /*<<< orphan*/  fz_pool ;
struct TYPE_17__ {scalar_t__ type; struct TYPE_17__* up; TYPE_1__* style; } ;
typedef  TYPE_2__ fz_html_box ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_16__ {int white_space; } ;

/* Variables and functions */
 scalar_t__ BOX_FLOW ; 
 int UCDN_LINEBREAK_CLASS_RI ; 
 void* UCDN_LINEBREAK_CLASS_WJ ; 
 int WS_ALLOW_BREAK_SPACE ; 
 int WS_COLLAPSE ; 
 int WS_FORCE_BREAK_NEWLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*,char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*,int,struct genstate*) ; 
 int /*<<< orphan*/  FUNC6 (int*,char const*) ; 
 scalar_t__ FUNC7 (char const) ; 
 int** pairbrk ; 
 int FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(fz_context *ctx, fz_html_box *box, const char *text, int lang, struct genstate *g)
{
	fz_html_box *flow;
	fz_pool *pool = g->pool;
	int collapse = box->style->white_space & WS_COLLAPSE;
	int bsp = box->style->white_space & WS_ALLOW_BREAK_SPACE;
	int bnl = box->style->white_space & WS_FORCE_BREAK_NEWLINE;

	static const char *space = " ";

	flow = box;
	while (flow->type != BOX_FLOW)
		flow = flow->up;

	while (*text)
	{
		if (bnl && (*text == '\n' || *text == '\r'))
		{
			if (text[0] == '\r' && text[1] == '\n')
				text += 2;
			else
				text += 1;
			FUNC0(ctx, pool, flow, box);
			g->at_bol = 1;
		}
		else if (FUNC7(*text))
		{
			if (collapse)
			{
				if (bnl)
					while (*text == ' ' || *text == '\t')
						++text;
				else
					while (FUNC7(*text))
						++text;
				g->emit_white = 1;
			}
			else
			{
				// TODO: tabs
				if (bsp)
					FUNC3(ctx, pool, flow, box);
				else
					FUNC4(ctx, pool, flow, box, space, space+1, lang);
				++text;
			}
			g->last_brk_cls = UCDN_LINEBREAK_CLASS_WJ; /* don't add sbreaks after a space */
		}
		else
		{
			const char *prev, *mark = text;
			int c;

			FUNC5(ctx, flow, box, lang, g);

			if (g->at_bol)
				g->last_brk_cls = UCDN_LINEBREAK_CLASS_WJ;

			while (*text && !FUNC7(*text))
			{
				prev = text;
				text += FUNC6(&c, text);
				if (c == 0xAD) /* soft hyphen */
				{
					if (mark != prev)
						FUNC4(ctx, pool, flow, box, mark, prev, lang);
					FUNC2(ctx, pool, flow, box);
					mark = text;
					g->last_brk_cls = UCDN_LINEBREAK_CLASS_WJ; /* don't add sbreaks after a soft hyphen */
				}
				else if (bsp) /* allow soft breaks */
				{
					int this_brk_cls = FUNC8(c);
					if (this_brk_cls < UCDN_LINEBREAK_CLASS_RI)
					{
						int brk = pairbrk[g->last_brk_cls][this_brk_cls];

						/* we handle spaces elsewhere, so ignore these classes */
						if (brk == '@') brk = '^';
						if (brk == '#') brk = '^';
						if (brk == '%') brk = '^';

						if (brk == '_')
						{
							if (mark != prev)
								FUNC4(ctx, pool, flow, box, mark, prev, lang);
							FUNC1(ctx, pool, flow, box);
							mark = prev;
						}

						g->last_brk_cls = this_brk_cls;
					}
				}
			}
			if (mark != text)
				FUNC4(ctx, pool, flow, box, mark, text, lang);

			g->at_bol = 0;
		}
	}
}