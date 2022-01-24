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
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  pdf_font_desc ;
typedef  int /*<<< orphan*/  pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  CIDFontType0 ; 
 int /*<<< orphan*/  CIDFontType2 ; 
 int /*<<< orphan*/  DescendantFonts ; 
 int /*<<< orphan*/  Encoding ; 
 int /*<<< orphan*/  FZ_ERROR_SYNTAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Subtype ; 
 int /*<<< orphan*/  ToUnicode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static pdf_font_desc *
FUNC7(fz_context *ctx, pdf_document *doc, pdf_obj *dict)
{
	pdf_obj *dfonts;
	pdf_obj *dfont;
	pdf_obj *subtype;
	pdf_obj *encoding;
	pdf_obj *to_unicode;

	dfonts = FUNC4(ctx, dict, FUNC0(DescendantFonts));
	if (!dfonts)
		FUNC1(ctx, FZ_ERROR_SYNTAX, "cid font is missing descendant fonts");

	dfont = FUNC3(ctx, dfonts, 0);

	subtype = FUNC4(ctx, dfont, FUNC0(Subtype));
	encoding = FUNC4(ctx, dict, FUNC0(Encoding));
	to_unicode = FUNC4(ctx, dict, FUNC0(ToUnicode));

	if (FUNC5(ctx, subtype) && FUNC6(ctx, subtype, FUNC0(CIDFontType0)))
		return FUNC2(ctx, doc, dfont, encoding, to_unicode);
	if (FUNC5(ctx, subtype) && FUNC6(ctx, subtype, FUNC0(CIDFontType2)))
		return FUNC2(ctx, doc, dfont, encoding, to_unicode);
	FUNC1(ctx, FZ_ERROR_SYNTAX, "unknown cid font type");
}