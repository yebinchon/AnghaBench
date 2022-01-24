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
typedef  char chtype ;

/* Variables and functions */
 char ACS_VLINE ; 
 int /*<<< orphan*/  LINE_TITLE_BLUR ; 
 scalar_t__ display_sep ; 
 char FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ opt_line_graphics ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void
FUNC4(bool clear)
{
	if (display_sep) {
		chtype separator = opt_line_graphics ? ACS_VLINE : '|';

		if (clear)
			FUNC2(display_sep);
		FUNC1(display_sep, separator + FUNC0(NULL, LINE_TITLE_BLUR));
		FUNC3(display_sep);
	}
}