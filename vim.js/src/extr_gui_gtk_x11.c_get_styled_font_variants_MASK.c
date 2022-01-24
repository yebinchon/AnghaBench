#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int font_can_bold; int /*<<< orphan*/  text_context; int /*<<< orphan*/ * norm_font; } ;
typedef  int /*<<< orphan*/  PangoFontDescription ;
typedef  int /*<<< orphan*/  PangoFont ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  PANGO_WEIGHT_BOLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ gui ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void)
{
    PangoFontDescription    *bold_font_desc;
    PangoFont		    *plain_font;
    PangoFont		    *bold_font;

    gui.font_can_bold = FALSE;

    plain_font = FUNC1(gui.text_context, gui.norm_font);

    if (plain_font == NULL)
	return;

    bold_font_desc = FUNC2(gui.norm_font);
    FUNC4(bold_font_desc, PANGO_WEIGHT_BOLD);

    bold_font = FUNC1(gui.text_context, bold_font_desc);
    /*
     * The comparison relies on the unique handle nature of a PangoFont*,
     * i.e. it's assumed that a different PangoFont* won't refer to the
     * same font.  Seems to work, and failing here isn't critical anyway.
     */
    if (bold_font != NULL)
    {
	gui.font_can_bold = (bold_font != plain_font);
	FUNC0(bold_font);
    }

    FUNC3(bold_font_desc);
    FUNC0(plain_font);
}