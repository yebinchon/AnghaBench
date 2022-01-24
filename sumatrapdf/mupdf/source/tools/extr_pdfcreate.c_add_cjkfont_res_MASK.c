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
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  doc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ ,int,int*,int*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char const*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

__attribute__((used)) static void FUNC12(pdf_obj *resources, char *name, char *lang, char *wm, char *style)
{
	const unsigned char *data;
	int size, index, ordering, wmode, serif;
	fz_font *font;
	pdf_obj *subres, *ref;

	ordering = FUNC3(lang);

	if (wm && !FUNC11(wm, "V"))
		wmode = 1;
	else
		wmode = 0;

	if (style && (!FUNC11(style, "sans") || !FUNC11(style, "sans-serif")))
		serif = 0;
	else
		serif = 1;

	data = FUNC2(ctx, ordering, &size, &index);
	font = FUNC4(ctx, NULL, data, size, index, 0);

	subres = FUNC6(ctx, resources, FUNC0(Font));
	if (!subres)
	{
		subres = FUNC10(ctx, doc, 10);
		FUNC7(ctx, resources, FUNC0(Font), subres);
	}

	ref = FUNC5(ctx, doc, font, ordering, wmode, serif);
	FUNC8(ctx, subres, name, ref);
	FUNC9(ctx, ref);

	FUNC1(ctx, font);
}