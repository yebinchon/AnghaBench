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
struct TYPE_2__ {int /*<<< orphan*/  back_pixel; int /*<<< orphan*/  vimTextArea; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (short,short,short) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Pt_ARG_CURSOR_COLOR ; 
 int /*<<< orphan*/  Pt_ARG_FILL_COLOR ; 
 int FUNC5 (short) ; 
 TYPE_1__ gui ; 
 short FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gui_ph_mouse_color ; 

void
FUNC7(void)
{
#if 0 /* Don't bother changing the cursor colour */
    short color_diff;

    /*
     * If there isn't enough difference between the background colour and
     * the mouse pointer colour then change the mouse pointer colour
     */
    color_diff = gui_get_lightness(gui_ph_mouse_color)
					  - gui_get_lightness(gui.back_pixel);

    if (abs(color_diff) < 64)
    {
	short r, g, b;
	/* not a great algorithm... */
	r = PgRedValue(gui_ph_mouse_color) ^ 255;
	g = PgGreenValue(gui_ph_mouse_color) ^ 255;
	b = PgBlueValue(gui_ph_mouse_color) ^ 255;

#ifndef FEAT_MOUSESHAPE
	gui_ph_mouse_color = PgRGB(r, g, b);
	PtSetResource(gui.vimTextArea, Pt_ARG_CURSOR_COLOR,
		gui_ph_mouse_color, 0);
#endif
    }
#endif

    FUNC4(gui.vimTextArea, Pt_ARG_FILL_COLOR, gui.back_pixel, 0);
}