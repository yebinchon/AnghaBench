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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  hb_face ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  hb_font ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10 (void)
{
  FUNC8();

  FUNC9("fonts/MathTestFontNone.otf");
  FUNC2(!FUNC7 (hb_face)); // MATH table not available
  FUNC1();

  FUNC9("fonts/MathTestFontEmpty.otf");
  FUNC2(FUNC7 (hb_face)); // MATH table available
  FUNC1();

  hb_face = FUNC3 ();
  hb_font = FUNC4 (hb_face);
  FUNC2(!FUNC7 (hb_face)); // MATH table not available

  hb_font = FUNC5 ();
  hb_face = FUNC6 (hb_font);
  FUNC2(!FUNC7 (hb_face)); // MATH table not available

  FUNC0();
}