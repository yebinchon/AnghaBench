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
struct TYPE_4__ {scalar_t__ ga_len; int /*<<< orphan*/  ga_data; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int PRCOLOR_WHITE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prt_bufsiz ; 
 scalar_t__ prt_do_bgcol ; 
 scalar_t__ prt_do_moveto ; 
 scalar_t__ prt_do_underline ; 
 int prt_line_height ; 
 int prt_new_bgcol ; 
 scalar_t__ prt_out_mbyte ; 
 int prt_pos_x_moveto ; 
 int prt_pos_y_moveto ; 
 TYPE_1__ prt_ps_buffer ; 
 int prt_text_run ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5()
{
    if (prt_ps_buffer.ga_len > 0)
    {
	/* Any background color must be drawn first */
	if (prt_do_bgcol && (prt_new_bgcol != PRCOLOR_WHITE))
	{
	    int     r, g, b;

	    if (prt_do_moveto)
	    {
		FUNC3(prt_pos_x_moveto, 2);
		FUNC3(prt_pos_y_moveto, 2);
		FUNC4("m\n");
		prt_do_moveto = FALSE;
	    }

	    /* Size of rect of background color on which text is printed */
	    FUNC3(prt_text_run, 2);
	    FUNC3(prt_line_height, 2);

	    /* Lastly add the color of the background */
	    r = ((unsigned)prt_new_bgcol & 0xff0000) >> 16;
	    g = ((unsigned)prt_new_bgcol & 0xff00) >> 8;
	    b = prt_new_bgcol & 0xff;
	    FUNC3(r / 255.0, 3);
	    FUNC3(g / 255.0, 3);
	    FUNC3(b / 255.0, 3);
	    FUNC4("bg\n");
	}
	/* Draw underlines before the text as it makes it slightly easier to
	 * find the starting point.
	 */
	if (prt_do_underline)
	{
	    if (prt_do_moveto)
	    {
		FUNC3(prt_pos_x_moveto, 2);
		FUNC3(prt_pos_y_moveto, 2);
		FUNC4("m\n");
		prt_do_moveto = FALSE;
	    }

	    /* Underline length of text run */
	    FUNC3(prt_text_run, 2);
	    FUNC4("ul\n");
	}
	/* Draw the text
	 * Note: we write text out raw - EBCDIC conversion is handled in the
	 * PostScript world via the font encoding vector. */
#ifdef FEAT_MBYTE
	if (prt_out_mbyte)
	    prt_write_string("<");
	else
#endif
	    FUNC4("(");
	FUNC2(prt_ps_buffer.ga_data, prt_ps_buffer.ga_len);
#ifdef FEAT_MBYTE
	if (prt_out_mbyte)
	    prt_write_string(">");
	else
#endif
	    FUNC4(")");
	/* Add a moveto if need be and use the appropriate show procedure */
	if (prt_do_moveto)
	{
	    FUNC3(prt_pos_x_moveto, 2);
	    FUNC3(prt_pos_y_moveto, 2);
	    /* moveto and a show */
	    FUNC4("ms\n");
	    prt_do_moveto = FALSE;
	}
	else /* Simple show */
	    FUNC4("s\n");

	FUNC0(&prt_ps_buffer);
	FUNC1(&prt_ps_buffer, (int)sizeof(char), prt_bufsiz);
    }
}