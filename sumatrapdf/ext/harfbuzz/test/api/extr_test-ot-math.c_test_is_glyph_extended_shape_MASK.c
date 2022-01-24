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
typedef  int /*<<< orphan*/  hb_codepoint_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  hb_face ; 
 int /*<<< orphan*/  hb_font ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7 (void)
{
  hb_codepoint_t glyph;
  FUNC5();

  FUNC6("fonts/MathTestFontEmpty.otf");
  FUNC2(FUNC3 (hb_font, "space", -1, &glyph));
  FUNC2(!FUNC4 (hb_face, glyph)); // MathGlyphInfo not available
  FUNC1();

  FUNC6("fonts/MathTestFontPartial1.otf");
  FUNC2(FUNC3 (hb_font, "space", -1, &glyph));
  FUNC2(!FUNC4 (hb_face, glyph)); // MathGlyphInfo empty
  FUNC1();

  FUNC6("fonts/MathTestFontFull.otf");
  FUNC2(FUNC3 (hb_font, "G", -1, &glyph));
  FUNC2(!FUNC4 (hb_face, glyph));
  FUNC2(FUNC3 (hb_font, "H", -1, &glyph));
  FUNC2(FUNC4 (hb_face, glyph));
  FUNC1();

  FUNC0();
}