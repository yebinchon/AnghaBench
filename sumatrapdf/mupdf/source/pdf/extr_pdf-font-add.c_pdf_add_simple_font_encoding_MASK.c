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
typedef  int /*<<< orphan*/  pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  Encoding ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  PDF_SIMPLE_ENCODING_CYRILLIC 130 
#define  PDF_SIMPLE_ENCODING_GREEK 129 
#define  PDF_SIMPLE_ENCODING_LATIN 128 
 int /*<<< orphan*/  WinAnsiEncoding ; 
 int /*<<< orphan*/  fz_glyph_name_from_iso8859_7 ; 
 int /*<<< orphan*/  fz_glyph_name_from_koi8u ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(fz_context *ctx, pdf_document *doc, pdf_obj *fobj, int encoding)
{
	switch (encoding)
	{
	default:
	case PDF_SIMPLE_ENCODING_LATIN:
		FUNC2(ctx, fobj, FUNC0(Encoding), FUNC0(WinAnsiEncoding));
		break;
	case PDF_SIMPLE_ENCODING_GREEK:
		FUNC1(ctx, doc, fobj, fz_glyph_name_from_iso8859_7);
		break;
	case PDF_SIMPLE_ENCODING_CYRILLIC:
		FUNC1(ctx, doc, fobj, fz_glyph_name_from_koi8u);
		break;
	}
}