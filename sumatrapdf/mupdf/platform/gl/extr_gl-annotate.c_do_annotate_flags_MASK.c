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

/* Variables and functions */
 int PDF_ANNOT_IS_HIDDEN ; 
 int PDF_ANNOT_IS_INVISIBLE ; 
 int PDF_ANNOT_IS_LOCKED ; 
 int PDF_ANNOT_IS_LOCKED_CONTENTS ; 
 int PDF_ANNOT_IS_NO_ROTATE ; 
 int PDF_ANNOT_IS_NO_VIEW ; 
 int PDF_ANNOT_IS_NO_ZOOM ; 
 int PDF_ANNOT_IS_PRINT ; 
 int PDF_ANNOT_IS_READ_ONLY ; 
 int PDF_ANNOT_IS_TOGGLE_NO_VIEW ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  selected_annot ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static void FUNC4(void)
{
	char buf[4096];
	int f = FUNC2(ctx, selected_annot);
	FUNC1(buf, "Flags:", sizeof buf);
	if (f & PDF_ANNOT_IS_INVISIBLE) FUNC0(buf, " inv", sizeof buf);
	if (f & PDF_ANNOT_IS_HIDDEN) FUNC0(buf, " hidden", sizeof buf);
	if (f & PDF_ANNOT_IS_PRINT) FUNC0(buf, " print", sizeof buf);
	if (f & PDF_ANNOT_IS_NO_ZOOM) FUNC0(buf, " nz", sizeof buf);
	if (f & PDF_ANNOT_IS_NO_ROTATE) FUNC0(buf, " nr", sizeof buf);
	if (f & PDF_ANNOT_IS_NO_VIEW) FUNC0(buf, " nv", sizeof buf);
	if (f & PDF_ANNOT_IS_READ_ONLY) FUNC0(buf, " ro", sizeof buf);
	if (f & PDF_ANNOT_IS_LOCKED) FUNC0(buf, " lock", sizeof buf);
	if (f & PDF_ANNOT_IS_TOGGLE_NO_VIEW) FUNC0(buf, " tnv", sizeof buf);
	if (f & PDF_ANNOT_IS_LOCKED_CONTENTS) FUNC0(buf, " lc", sizeof buf);
	if (!f) FUNC0(buf, " none", sizeof buf);
	FUNC3("%s", buf);
}