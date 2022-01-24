#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_47__   TYPE_6__ ;
typedef  struct TYPE_46__   TYPE_5__ ;
typedef  struct TYPE_45__   TYPE_4__ ;
typedef  struct TYPE_44__   TYPE_3__ ;
typedef  struct TYPE_43__   TYPE_2__ ;
typedef  struct TYPE_42__   TYPE_1__ ;

/* Type definitions */
struct genstate {int at_bol; int emit_white; int /*<<< orphan*/  pool; int /*<<< orphan*/  styles; scalar_t__ is_fb2; int /*<<< orphan*/  set; int /*<<< orphan*/  images; int /*<<< orphan*/  base_uri; int /*<<< orphan*/  zip; int /*<<< orphan*/  css; } ;
typedef  int /*<<< orphan*/  fz_xml ;
typedef  int /*<<< orphan*/  fz_image ;
struct TYPE_45__ {scalar_t__ type; char heading; int list_item; TYPE_5__* style; void* href; void* id; struct TYPE_45__* up; } ;
typedef  TYPE_4__ fz_html_box ;
struct TYPE_44__ {int value; int /*<<< orphan*/  unit; } ;
struct TYPE_43__ {int value; void* unit; } ;
struct TYPE_42__ {int value; void* unit; } ;
struct TYPE_46__ {int white_space; TYPE_3__ font_size; TYPE_2__ height; TYPE_1__ width; } ;
typedef  TYPE_5__ fz_css_style ;
struct TYPE_47__ {scalar_t__ count; struct TYPE_47__* up; } ;
typedef  TYPE_6__ fz_css_match ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  BOX_BLOCK ; 
 scalar_t__ BOX_FLOW ; 
 scalar_t__ BOX_INLINE ; 
 int DEFAULT_DIR ; 
 int DIS_BLOCK ; 
 int DIS_INLINE ; 
 int DIS_INLINE_BLOCK ; 
 int DIS_LIST_ITEM ; 
 int DIS_NONE ; 
 int DIS_TABLE ; 
 int DIS_TABLE_CELL ; 
 int DIS_TABLE_ROW ; 
 int FZ_BIDI_LTR ; 
 int FZ_BIDI_NEUTRAL ; 
 int FZ_BIDI_RTL ; 
 void* N_LENGTH ; 
 void* N_PERCENT ; 
 int /*<<< orphan*/  N_SCALE ; 
 int WS_COLLAPSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__*,TYPE_6__*) ; 
 int FUNC2 (char const*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char FUNC8 (int,int) ; 
 void* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int FUNC10 (char const*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 char* FUNC16 (int /*<<< orphan*/ *) ; 
 char* FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,TYPE_4__*,struct genstate*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,struct genstate*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,TYPE_4__*,char const*,int,struct genstate*) ; 
 TYPE_4__* FUNC21 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 TYPE_4__* FUNC23 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_4__*,int,struct genstate*) ; 
 TYPE_4__* FUNC25 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_4__*) ; 
 TYPE_4__* FUNC26 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_4__*) ; 
 TYPE_4__* FUNC27 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_4__*) ; 
 scalar_t__ FUNC28 (char const*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC33 (char const*,char) ; 
 int /*<<< orphan*/  FUNC34 (char const*,char*) ; 

__attribute__((used)) static fz_html_box *
FUNC35(fz_context *ctx,
	fz_xml *node,
	fz_html_box *top,
	fz_css_match *up_match,
	int list_counter,
	int section_depth,
	int markup_dir,
	int markup_lang,
	struct genstate *g)
{
	fz_css_match match;
	fz_html_box *box, *last_top;
	const char *tag;
	int display;
	fz_css_style style;

	while (node)
	{
		match.up = up_match;
		match.count = 0;

		tag = FUNC16(node);
		if (tag)
		{
			FUNC7(ctx, &match, g->css, node);

			display = FUNC5(&match);

			if (tag[0]=='b' && tag[1]=='r' && tag[2]==0)
			{
				if (top->type == BOX_INLINE)
				{
					fz_html_box *flow = top;
					while (flow->type != BOX_FLOW)
						flow = flow->up;
					FUNC0(ctx, g->pool, flow, top);
				}
				else
				{
					box = FUNC32(ctx, g->pool, markup_dir);
					FUNC1(ctx, g->set, &style, &match);
					box->style = FUNC3(ctx, &style, &g->styles, g->pool);
					top = FUNC23(ctx, box, top);
				}
				g->at_bol = 1;
			}

			else if (tag[0]=='i' && tag[1]=='m' && tag[2]=='g' && tag[3]==0)
			{
				const char *src = FUNC13(node, "src");
				if (src)
				{
					int w, h;
					const char *w_att = FUNC13(node, "width");
					const char *h_att = FUNC13(node, "height");
					box = FUNC32(ctx, g->pool, markup_dir);
					FUNC1(ctx, g->set, &style, &match);
					if (w_att && (w = FUNC2(w_att)) > 0)
					{
						style.width.value = w;
						style.width.unit = FUNC33(w_att, '%') ? N_PERCENT : N_LENGTH;
					}
					if (h_att && (h = FUNC2(h_att)) > 0)
					{
						style.height.value = h;
						style.height.unit = FUNC33(h_att, '%') ? N_PERCENT : N_LENGTH;
					}
					box->style = FUNC3(ctx, &style, &g->styles, g->pool);
					FUNC24(ctx, box, top, markup_dir, g);
					FUNC19(ctx, box, FUNC29(ctx, g->zip, g->base_uri, src), g);
				}
			}

			else if (tag[0]=='s' && tag[1]=='v' && tag[2]=='g' && tag[3]==0)
			{
				box = FUNC32(ctx, g->pool, markup_dir);
				FUNC1(ctx, g->set, &style, &match);
				box->style = FUNC3(ctx, &style, &g->styles, g->pool);
				FUNC24(ctx, box, top, markup_dir, g);
				FUNC19(ctx, box, FUNC30(ctx, g->zip, g->base_uri, node), g);
			}

			else if (g->is_fb2 && tag[0]=='i' && tag[1]=='m' && tag[2]=='a' && tag[3]=='g' && tag[4]=='e' && tag[5]==0)
			{
				const char *src = FUNC13(node, "l:href");
				if (!src)
					src = FUNC13(node, "xlink:href");
				if (src && src[0] == '#')
				{
					fz_image *img = FUNC11(ctx, g->images, src+1);
					if (display == DIS_BLOCK)
					{
						fz_html_box *imgbox;
						box = FUNC31(ctx, g->pool, markup_dir);
						FUNC4(ctx, &style);
						FUNC1(ctx, g->set, &style, &match);
						box->style = FUNC3(ctx, &style, &g->styles, g->pool);
						top = FUNC21(ctx, box, top);
						imgbox = FUNC32(ctx, g->pool, markup_dir);
						FUNC1(ctx, g->set, &style, &match);
						imgbox->style = FUNC3(ctx, &style, &g->styles, g->pool);
						FUNC24(ctx, imgbox, box, markup_dir, g);
						FUNC19(ctx, imgbox, FUNC6(ctx, img), g);
					}
					else if (display == DIS_INLINE)
					{
						box = FUNC32(ctx, g->pool, markup_dir);
						FUNC1(ctx, g->set, &style, &match);
						box->style = FUNC3(ctx, &style, &g->styles, g->pool);
						FUNC24(ctx, box, top, markup_dir, g);
						FUNC19(ctx, box, FUNC6(ctx, img), g);
					}
				}
			}

			else if (display != DIS_NONE)
			{
				const char *dir, *lang, *id, *href;
				int child_dir = markup_dir;
				int child_lang = markup_lang;

				dir = FUNC13(node, "dir");
				if (dir)
				{
					if (!FUNC34(dir, "auto"))
						child_dir = FZ_BIDI_NEUTRAL;
					else if (!FUNC34(dir, "rtl"))
						child_dir = FZ_BIDI_RTL;
					else if (!FUNC34(dir, "ltr"))
						child_dir = FZ_BIDI_LTR;
					else
						child_dir = DEFAULT_DIR;
				}

				lang = FUNC13(node, "lang");
				if (lang)
					child_lang = FUNC10(lang);

				if (display == DIS_INLINE)
					box = FUNC32(ctx, g->pool, child_dir);
				else
					box = FUNC31(ctx, g->pool, child_dir);
				FUNC4(ctx, &style);
				FUNC1(ctx, g->set, &style, &match);
				box->style = FUNC3(ctx, &style, &g->styles, g->pool);

				id = FUNC13(node, "id");
				if (id)
					box->id = FUNC9(ctx, g->pool, id);

				if (display == DIS_BLOCK || display == DIS_INLINE_BLOCK)
				{
					top = FUNC21(ctx, box, top);
					if (g->is_fb2)
					{
						if (!FUNC34(tag, "title") || !FUNC34(tag, "subtitle"))
							box->heading = FUNC8(section_depth, 6);
					}
					else
					{
						if (tag[0]=='h' && tag[1]>='1' && tag[1]<='6' && tag[2]==0)
							box->heading = tag[1] - '0';
					}
				}
				else if (display == DIS_LIST_ITEM)
				{
					top = FUNC21(ctx, box, top);
					box->list_item = ++list_counter;
				}
				else if (display == DIS_INLINE)
				{
					FUNC24(ctx, box, top, child_dir, g);
					if (id)
						FUNC18(ctx, box, g);
					if (tag[0]=='a' && tag[1]==0)
					{
						if (g->is_fb2)
						{
							href = FUNC13(node, "l:href");
							if (!href)
								href = FUNC13(node, "xlink:href");
						}
						else
							href = FUNC13(node, g->is_fb2 ? "l:href" : "href");
						if (href)
							box->href = FUNC9(ctx, g->pool, href);
					}
				}
				else if (display == DIS_TABLE)
				{
					top = FUNC25(ctx, box, top);
				}
				else if (display == DIS_TABLE_ROW)
				{
					top = FUNC27(ctx, box, top);
				}
				else if (display == DIS_TABLE_CELL)
				{
					top = FUNC26(ctx, box, top);
				}
				else
				{
					FUNC12(ctx, "unknown box display type");
					FUNC22(ctx, box, BOX_BLOCK, top);
				}

				if (FUNC14(node))
				{
					int child_counter = list_counter;
					int child_section = section_depth;
					if (!FUNC34(tag, "ul") || !FUNC34(tag, "ol"))
						child_counter = 0;
					if (!FUNC34(tag, "section"))
						++child_section;
					last_top = FUNC35(ctx,
						FUNC14(node),
						box,
						&match,
						child_counter,
						child_section,
						child_dir,
						child_lang,
						g);
					if (last_top != box)
						top = last_top;
				}
			}
		}
		else
		{
			const char *text = FUNC17(node);
			int collapse = top->style->white_space & WS_COLLAPSE;
			if (collapse && FUNC28(text))
			{
				g->emit_white = 1;
			}
			else
			{
				if (top->type != BOX_INLINE)
				{
					/* Create anonymous inline box, with the same style as the top block box. */
					fz_css_style style;
					box = FUNC32(ctx, g->pool, markup_dir);
					FUNC4(ctx, &style);
					box->style = FUNC3(ctx, &style, &g->styles, g->pool);
					FUNC24(ctx, box, top, markup_dir, g);
					style = *top->style;
					/* Make sure not to recursively multiply font sizes. */
					style.font_size.value = 1;
					style.font_size.unit = N_SCALE;
					box->style = FUNC3(ctx, &style, &g->styles, g->pool);
					FUNC20(ctx, box, text, markup_lang, g);
				}
				else
				{
					FUNC20(ctx, top, text, markup_lang, g);
				}
			}
		}

		node = FUNC15(node);
	}

	return top;
}