#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cairo_t ;
struct TYPE_4__ {int /*<<< orphan*/  message; } ;
typedef  int /*<<< orphan*/  PangoLayout ;
typedef  int /*<<< orphan*/  PangoFontDescription ;
typedef  int /*<<< orphan*/  PangoAttrList ;
typedef  TYPE_1__ GError ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (double) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ FUNC13 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **,char**,int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 

PangoLayout *FUNC15(cairo_t *cairo, const char *font,
		const char *text, double scale, bool markup) {
	PangoLayout *layout = FUNC6(cairo);
	PangoAttrList *attrs;
	if (markup) {
		char *buf;
		GError *error = NULL;
		if (FUNC13(text, -1, 0, &attrs, &buf, NULL, &error)) {
			FUNC12(layout, buf, -1);
			FUNC0(buf);
		} else {
			FUNC14(SWAY_ERROR, "pango_parse_markup '%s' -> error %s", text,
					error->message);
			FUNC1(error);
			markup = false; // fallback to plain text
		}
	}
	if (!markup) {
		attrs = FUNC3();
		FUNC12(layout, text, -1);
	}

	FUNC2(attrs, FUNC5(scale));
	PangoFontDescription *desc = FUNC8(font);
	FUNC10(layout, desc);
	FUNC11(layout, 1);
	FUNC9(layout, attrs);
	FUNC4(attrs);
	FUNC7(desc);
	return layout;
}