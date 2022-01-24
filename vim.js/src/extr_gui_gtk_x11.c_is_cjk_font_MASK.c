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
typedef  int gunichar ;
struct TYPE_2__ {int /*<<< orphan*/  text_context; } ;
typedef  int /*<<< orphan*/  PangoFontDescription ;
typedef  int /*<<< orphan*/  PangoFont ;
typedef  int /*<<< orphan*/  PangoCoverage ;

/* Variables and functions */
 int FALSE ; 
 unsigned int FUNC0 (char const* const*) ; 
 scalar_t__ PANGO_COVERAGE_EXACT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ gui ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const* const) ; 

__attribute__((used)) static int
FUNC7(PangoFontDescription *font_desc)
{
    static const char * const cjk_langs[] =
	{"zh_CN", "zh_TW", "zh_HK", "ja", "ko"};

    PangoFont	*font;
    unsigned	i;
    int		is_cjk = FALSE;

    font = FUNC2(gui.text_context, font_desc);

    if (font == NULL)
	return FALSE;

    for (i = 0; !is_cjk && i < FUNC0(cjk_langs); ++i)
    {
	PangoCoverage	*coverage;
	gunichar	uc;

	coverage = FUNC5(
		font, FUNC6(cjk_langs[i]));

	if (coverage != NULL)
	{
	    uc = (cjk_langs[i][0] == 'k') ? 0xAC00 : 0x4E00;
	    is_cjk = (FUNC3(coverage, uc) == PANGO_COVERAGE_EXACT);
	    FUNC4(coverage);
	}
    }

    FUNC1(font);

    return is_cjk;
}