#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_annot ;
struct TYPE_5__ {int x0; int x1; int y0; int y1; } ;
typedef  TYPE_1__ fz_rect ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 TYPE_1__ FUNC1 (float,float,int,int) ; 
 char* icon_comment ; 
 char* icon_graph ; 
 char* icon_help ; 
 char* icon_insert ; 
 char* icon_key ; 
 char* icon_mic ; 
 char* icon_new_paragraph ; 
 char* icon_note ; 
 char* icon_paperclip ; 
 char* icon_paragraph ; 
 char* icon_push_pin ; 
 char* icon_speaker ; 
 char* icon_star ; 
 char* icon_tag ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

__attribute__((used)) static void
FUNC6(fz_context *ctx, pdf_annot *annot, fz_buffer *buf, fz_rect *rect, fz_rect *bbox)
{
	const char *name;
	float xc = (rect->x0 + rect->x1) / 2;
	float yc = (rect->y0 + rect->y1) / 2;

	if (!FUNC4(ctx, annot, buf))
		FUNC0(ctx, buf, "1 g\n");

	FUNC0(ctx, buf, "1 w\n0.5 0.5 15 15 re\nb\n");
	FUNC0(ctx, buf, "1 0 0 -1 4 12 cm\n");

	if (FUNC3(ctx, annot))
		FUNC0(ctx, buf, "1 g\n");
	else
		FUNC0(ctx, buf, "0 g\n");

	name = FUNC2(ctx, annot);

	/* Text names */
	if (!FUNC5(name, "Comment"))
		FUNC0(ctx, buf, icon_comment);
	else if (!FUNC5(name, "Key"))
		FUNC0(ctx, buf, icon_key);
	else if (!FUNC5(name, "Note"))
		FUNC0(ctx, buf, icon_note);
	else if (!FUNC5(name, "Help"))
		FUNC0(ctx, buf, icon_help);
	else if (!FUNC5(name, "NewParagraph"))
		FUNC0(ctx, buf, icon_new_paragraph);
	else if (!FUNC5(name, "Paragraph"))
		FUNC0(ctx, buf, icon_paragraph);
	else if (!FUNC5(name, "Insert"))
		FUNC0(ctx, buf, icon_insert);

	/* FileAttachment names */
	else if (!FUNC5(name, "Graph"))
		FUNC0(ctx, buf, icon_graph);
	else if (!FUNC5(name, "PushPin"))
		FUNC0(ctx, buf, icon_push_pin);
	else if (!FUNC5(name, "Paperclip"))
		FUNC0(ctx, buf, icon_paperclip);
	else if (!FUNC5(name, "Tag"))
		FUNC0(ctx, buf, icon_tag);

	/* Sound names */
	else if (!FUNC5(name, "Speaker"))
		FUNC0(ctx, buf, icon_speaker);
	else if (!FUNC5(name, "Mic"))
		FUNC0(ctx, buf, icon_mic);

	/* Unknown */
	else
		FUNC0(ctx, buf, icon_star);

	*rect = FUNC1(xc - 9, yc - 9, xc + 9, yc + 9);
	*bbox = FUNC1(0, 0, 16, 16);
}