#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svg_state ;
typedef  int /*<<< orphan*/  svg_document ;
typedef  int /*<<< orphan*/  fz_xml ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void
FUNC16(fz_context *ctx, fz_device *dev, svg_document *doc, fz_xml *root, const svg_state *state)
{
	if (FUNC0(root, "svg"))
		FUNC10(ctx, dev, doc, root, state);

	else if (FUNC0(root, "g"))
		FUNC3(ctx, dev, doc, root, state);

	else if (FUNC0(root, "title"))
		;
	else if (FUNC0(root, "desc"))
		;

	else if (FUNC0(root, "defs"))
		;
	else if (FUNC0(root, "symbol"))
		;

	else if (FUNC0(root, "use"))
		FUNC15(ctx, dev, doc, root, state);

	else if (FUNC0(root, "path"))
		FUNC6(ctx, dev, doc, root, state);
	else if (FUNC0(root, "rect"))
		FUNC9(ctx, dev, doc, root, state);
	else if (FUNC0(root, "circle"))
		FUNC1(ctx, dev, doc, root, state);
	else if (FUNC0(root, "ellipse"))
		FUNC2(ctx, dev, doc, root, state);
	else if (FUNC0(root, "line"))
		FUNC5(ctx, dev, doc, root, state);
	else if (FUNC0(root, "polyline"))
		FUNC8(ctx, dev, doc, root, state);
	else if (FUNC0(root, "polygon"))
		FUNC7(ctx, dev, doc, root, state);

	else if (FUNC0(root, "image"))
		FUNC4(ctx, dev, doc, root, state);

#if 0
	else if (fz_xml_is_tag(root, "text"))
		svg_run_text(ctx, dev, doc, root);
	else if (fz_xml_is_tag(root, "tspan"))
		svg_run_text_span(ctx, dev, doc, root);
	else if (fz_xml_is_tag(root, "tref"))
		svg_run_text_ref(ctx, dev, doc, root);
	else if (fz_xml_is_tag(root, "textPath"))
		svg_run_text_path(ctx, dev, doc, root);
#endif

	else
	{
		/* ignore unrecognized tags */
	}
}