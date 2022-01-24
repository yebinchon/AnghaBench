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
typedef  int /*<<< orphan*/  xps_resource ;
typedef  int /*<<< orphan*/  xps_document ;
typedef  int /*<<< orphan*/  fz_xml ;
typedef  int /*<<< orphan*/  fz_text ;
typedef  int /*<<< orphan*/  fz_rect ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_link ;
typedef  int /*<<< orphan*/  fz_font ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC14(fz_context *ctx, xps_document *doc, fz_matrix ctm,
		char *base_uri, xps_resource *dict, fz_xml *root, fz_link **link)
{
	char *navigate_uri_att = FUNC5(root, "FixedPage.NavigateUri");
	if (navigate_uri_att)
	{
		char *transform_att = FUNC5(root, "RenderTransform");
		fz_xml *transform_tag = FUNC6(FUNC7(root, "Path.RenderTransform"));

		char *bidi_level_att = FUNC5(root, "BidiLevel");
		char *font_size_att = FUNC5(root, "FontRenderingEmSize");
		char *font_uri_att = FUNC5(root, "FontUri");
		char *origin_x_att = FUNC5(root, "OriginX");
		char *origin_y_att = FUNC5(root, "OriginY");
		char *is_sideways_att = FUNC5(root, "IsSideways");
		char *indices_att = FUNC5(root, "Indices");
		char *unicode_att = FUNC5(root, "UnicodeString");
		char *style_att = FUNC5(root, "StyleSimulations");

		int is_sideways = 0;
		int bidi_level = 0;
		fz_font *font;
		fz_text *text;
		fz_rect area;

		FUNC13(ctx, doc, dict, &transform_att, &transform_tag, NULL);

		ctm = FUNC12(ctx, doc, transform_att, transform_tag, ctm);

		if (is_sideways_att)
			is_sideways = !FUNC8(is_sideways_att, "true");
		if (bidi_level_att)
			bidi_level = FUNC0(bidi_level_att);

		font = FUNC10(ctx, doc, base_uri, font_uri_att, style_att);
		if (!font)
			return;
		text = FUNC11(ctx, doc, ctm, font, FUNC1(font_size_att),
				FUNC1(origin_x_att), FUNC1(origin_y_att),
				is_sideways, bidi_level, indices_att, unicode_att);
		area = FUNC2(ctx, text, NULL, ctm);
		FUNC4(ctx, text);
		FUNC3(ctx, font);

		FUNC9(ctx, doc, area, base_uri, navigate_uri_att, link);
	}
}