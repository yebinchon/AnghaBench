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
typedef  int /*<<< orphan*/  fz_font ;

/* Variables and functions */
 int /*<<< orphan*/  Font ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PDF_SIMPLE_ENCODING_CYRILLIC ; 
 int PDF_SIMPLE_ENCODING_GREEK ; 
 int PDF_SIMPLE_ENCODING_LATIN ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  doc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*,unsigned char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

__attribute__((used)) static void FUNC12(pdf_obj *resources, char *name, char *path, char *encname)
{
	const unsigned char *data;
	int size, enc;
	fz_font *font;
	pdf_obj *subres, *ref;

	data = FUNC2(ctx, path, &size);
	if (data)
		font = FUNC4(ctx, path, data, size, 0, 0);
	else
		font = FUNC3(ctx, NULL, path, 0, 0);

	subres = FUNC6(ctx, resources, FUNC0(Font));
	if (!subres)
	{
		subres = FUNC10(ctx, doc, 10);
		FUNC7(ctx, resources, FUNC0(Font), subres);
	}

	enc = PDF_SIMPLE_ENCODING_LATIN;
	if (encname)
	{
		if (!FUNC11(encname, "Latin") || !FUNC11(encname, "Latn"))
			enc = PDF_SIMPLE_ENCODING_LATIN;
		else if (!FUNC11(encname, "Greek") || !FUNC11(encname, "Grek"))
			enc = PDF_SIMPLE_ENCODING_GREEK;
		else if (!FUNC11(encname, "Cyrillic") || !FUNC11(encname, "Cyrl"))
			enc = PDF_SIMPLE_ENCODING_CYRILLIC;
	}

	ref = FUNC5(ctx, doc, font, enc);
	FUNC8(ctx, subres, name, ref);
	FUNC9(ctx, ref);

	FUNC1(ctx, font);
}