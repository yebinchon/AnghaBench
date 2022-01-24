#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ y0; scalar_t__ y1; scalar_t__ x0; scalar_t__ x1; } ;
struct TYPE_3__ {int lineheight; } ;

/* Variables and functions */
 char* FZ_META_ENCRYPTION ; 
 char* FZ_META_FORMAT ; 
 char* FZ_META_INFO_AUTHOR ; 
 char* FZ_META_INFO_TITLE ; 
 int /*<<< orphan*/  FZ_PERMISSION_ANNOTATE ; 
 int /*<<< orphan*/  FZ_PERMISSION_COPY ; 
 int /*<<< orphan*/  FZ_PERMISSION_EDIT ; 
 int /*<<< orphan*/  FZ_PERMISSION_PRINT ; 
 int /*<<< orphan*/  T ; 
 int /*<<< orphan*/  W ; 
 int /*<<< orphan*/  X ; 
 int /*<<< orphan*/  ctx ; 
 scalar_t__ currenticc ; 
 int /*<<< orphan*/  currentpage ; 
 scalar_t__ currentseparations ; 
 int /*<<< orphan*/  doc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 TYPE_2__ page_bounds ; 
 char* FUNC5 (int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*) ; 
 TYPE_1__ ui ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(void)
{
	char buf[100];

	FUNC8(500, 14 * ui.lineheight);
	FUNC11(T, X, W, 0, 0);

	if (FUNC2(ctx, doc, FZ_META_INFO_TITLE, buf, sizeof buf) > 0)
		FUNC10("Title: %s", buf);
	if (FUNC2(ctx, doc, FZ_META_INFO_AUTHOR, buf, sizeof buf) > 0)
		FUNC10("Author: %s", buf);
	if (FUNC2(ctx, doc, FZ_META_FORMAT, buf, sizeof buf) > 0)
		FUNC10("Format: %s", buf);
	if (FUNC2(ctx, doc, FZ_META_ENCRYPTION, buf, sizeof buf) > 0)
		FUNC10("Encryption: %s", buf);
	if (FUNC6(ctx, doc))
	{
		if (FUNC2(ctx, doc, "info:Creator", buf, sizeof buf) > 0)
			FUNC10("PDF Creator: %s", buf);
		if (FUNC2(ctx, doc, "info:Producer", buf, sizeof buf) > 0)
			FUNC10("PDF Producer: %s", buf);
		buf[0] = 0;
		if (FUNC1(ctx, doc, FZ_PERMISSION_PRINT))
			FUNC4(buf, "print, ", sizeof buf);
		if (FUNC1(ctx, doc, FZ_PERMISSION_COPY))
			FUNC4(buf, "copy, ", sizeof buf);
		if (FUNC1(ctx, doc, FZ_PERMISSION_EDIT))
			FUNC4(buf, "edit, ", sizeof buf);
		if (FUNC1(ctx, doc, FZ_PERMISSION_ANNOTATE))
			FUNC4(buf, "annotate, ", sizeof buf);
		if (FUNC7(buf) > 2)
			buf[FUNC7(buf)-2] = 0;
		else
			FUNC4(buf, "none", sizeof buf);
		FUNC10("Permissions: %s", buf);
	}
	FUNC10("Page: %d / %d", FUNC3(ctx, doc, currentpage)+1, FUNC0(ctx, doc));
	{
		int w = (int)(page_bounds.x1 - page_bounds.x0 + 0.5f);
		int h = (int)(page_bounds.y1 - page_bounds.y0 + 0.5f);
		const char *size = FUNC5(w, h);
		if (!size)
			size = FUNC5(h, w);
		if (size)
			FUNC10("Size: %d x %d (%s)", w, h, size);
		else
			FUNC10("Size: %d x %d", w, h);
	}
	FUNC10("ICC rendering: %s.", currenticc ? "on" : "off");
	FUNC10("Spot rendering: %s.", currentseparations ? "on" : "off");

	FUNC9();
}