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
typedef  int guint ;
typedef  scalar_t__ guicolor_T ;
typedef  int /*<<< orphan*/  char_u ;
struct TYPE_2__ {int char_width; int char_height; int /*<<< orphan*/  toolbar_h; int /*<<< orphan*/  menubar_h; int /*<<< orphan*/  mainwin; int /*<<< orphan*/  drawarea; int /*<<< orphan*/  formwin; scalar_t__ def_back_pixel; scalar_t__ def_norm_pixel; int /*<<< orphan*/ * geom; } ;

/* Variables and functions */
 int Columns ; 
 int /*<<< orphan*/  GO_MENUS ; 
 int /*<<< orphan*/  GO_TOOLBAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int HeightValue ; 
 scalar_t__ INVALCOLOR ; 
 int OK ; 
 int Rows ; 
 int TOOLBAR_ICONS ; 
 int TOOLBAR_TEXT ; 
 int WidthValue ; 
 int XNegative ; 
 int FUNC4 (char*,int*,int*,unsigned int*,unsigned int*) ; 
 int XValue ; 
 int YNegative ; 
 int YValue ; 
 int /*<<< orphan*/ * background_argument ; 
 int /*<<< orphan*/  check_startup_plug_hints ; 
 int /*<<< orphan*/  drag_data_received_cb ; 
 int /*<<< orphan*/ * foreground_argument ; 
 int /*<<< orphan*/  form_configure_event ; 
 scalar_t__ found_iconic_arg ; 
 scalar_t__ found_reverse_arg ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 () ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 
 char* FUNC9 (char*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 () ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ gtk_socket_id ; 
 int /*<<< orphan*/  gtk_widget_hide ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__ gui ; 
 int /*<<< orphan*/  FUNC18 () ; 
 scalar_t__ FUNC19 () ; 
 scalar_t__ FUNC20 () ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int*,int*) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int gui_win_x ; 
 int gui_win_y ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int init_window_hints_state ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  mainwin_destroy_cb ; 
 scalar_t__ FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int p_ghr ; 
 int /*<<< orphan*/  p_go ; 
 long p_window ; 
 char* role_argument ; 
 int /*<<< orphan*/  FUNC30 () ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ *) ; 
 int toolbar_flags ; 
 int /*<<< orphan*/  FUNC32 (int,int) ; 
 scalar_t__ using_gnome ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC35(void)
{
    guicolor_T fg_pixel = INVALCOLOR;
    guicolor_T bg_pixel = INVALCOLOR;
    guint		pixel_width;
    guint		pixel_height;

    /*
     * Allow setting a window role on the command line, or invent one
     * if none was specified.  This is mainly useful for GNOME session
     * support; allowing the WM to restore window placement.
     */
    if (role_argument != NULL)
    {
	FUNC17(FUNC2(gui.mainwin), role_argument);
    }
    else
    {
	char *role;

	/* Invent a unique-enough ID string for the role */
	role = FUNC9("vim-%u-%u-%u",
			       (unsigned)FUNC28(),
			       (unsigned)FUNC6(),
			       (unsigned)FUNC31(NULL));

	FUNC17(FUNC2(gui.mainwin), role);
	FUNC5(role);
    }

    if (gui_win_x != -1 && gui_win_y != -1)
	FUNC15(FUNC2(gui.mainwin), gui_win_x, gui_win_y);

    /* Determine user specified geometry, if present. */
    if (gui.geom != NULL)
    {
	int		mask;
	unsigned int	w, h;
	int		x = 0;
	int		y = 0;

	mask = FUNC4((char *)gui.geom, &x, &y, &w, &h);

	if (mask & WidthValue)
	    Columns = w;
	if (mask & HeightValue)
	{
	    if (p_window > (long)h - 1 || !FUNC29((char_u *)"window"))
		p_window = h - 1;
	    Rows = h;
	}
	FUNC27();

	pixel_width = (guint)(FUNC20() + Columns * gui.char_width);
	pixel_height = (guint)(FUNC19() + Rows * gui.char_height);

	pixel_width  += FUNC12();
	pixel_height += FUNC11();

	if (mask & (XValue | YValue))
	{
	    int ww, hh;
	    FUNC23(&ww, &hh);
	    hh += p_ghr + FUNC11();
	    ww += FUNC12();
	    if (mask & XNegative)
		x += ww - pixel_width;
	    if (mask & YNegative)
		y += hh - pixel_height;
	    FUNC15(FUNC2(gui.mainwin), x, y);
	}
	FUNC33(gui.geom);
	gui.geom = NULL;

	/* From now until everyone's stopped trying to set the window hints
	 * to their correct minimum values, stop them being set as we need
	 * them to remain at our required size for the parent GtkSocket to
	 * give us the right initial size.
	 */
	if (gtk_socket_id != 0  &&  (mask & WidthValue || mask & HeightValue))
	{
	    FUNC32(pixel_width, pixel_height);
	    init_window_hints_state = 1;
	    FUNC10(1000, check_startup_plug_hints, NULL);
	}
    }

    pixel_width = (guint)(FUNC20() + Columns * gui.char_width);
    pixel_height = (guint)(FUNC19() + Rows * gui.char_height);
    /* For GTK2 changing the size of the form widget doesn't cause window
     * resizing. */
    if (gtk_socket_id == 0)
	FUNC16(FUNC2(gui.mainwin), pixel_width, pixel_height);
    FUNC32(0, 0);

    if (foreground_argument != NULL)
	fg_pixel = FUNC21((char_u *)foreground_argument);
    if (fg_pixel == INVALCOLOR)
	fg_pixel = FUNC21((char_u *)"Black");

    if (background_argument != NULL)
	bg_pixel = FUNC21((char_u *)background_argument);
    if (bg_pixel == INVALCOLOR)
	bg_pixel = FUNC21((char_u *)"White");

    if (found_reverse_arg)
    {
	gui.def_norm_pixel = bg_pixel;
	gui.def_back_pixel = fg_pixel;
    }
    else
    {
	gui.def_norm_pixel = fg_pixel;
	gui.def_back_pixel = bg_pixel;
    }

    /* Get the colors from the "Normal" and "Menu" group (set in syntax.c or
     * in a vimrc file) */
    FUNC30();

    /* Check that none of the colors are the same as the background color */
    FUNC18();

    /* Get the colors for the highlight groups (gui_check_colors() might have
     * changed them). */
    FUNC26();	/* re-init colors and fonts */

    FUNC13(FUNC0(gui.mainwin), "destroy",
		       FUNC1(mainwin_destroy_cb), NULL);

#ifdef FEAT_HANGULIN
    hangul_keyboard_set();
#endif

    /*
     * Notify the fixed area about the need to resize the contents of the
     * gui.formwin, which we use for random positioning of the included
     * components.
     *
     * We connect this signal deferred finally after anything is in place,
     * since this is intended to handle resizements coming from the window
     * manager upon us and should not interfere with what VIM is requesting
     * upon startup.
     */
    FUNC13(FUNC0(gui.formwin), "configure_event",
		       FUNC1(form_configure_event), NULL);

#ifdef FEAT_DND
    /* Set up for receiving DND items. */
    gui_gtk_set_dnd_targets();

    gtk_signal_connect(GTK_OBJECT(gui.drawarea), "drag_data_received",
		       GTK_SIGNAL_FUNC(drag_data_received_cb), NULL);
#endif

	/* With GTK+ 2, we need to iconify the window before calling show()
	 * to avoid mapping the window for a short time. */
	if (found_iconic_arg && gtk_socket_id == 0)
	    FUNC24();

    {
#if defined(FEAT_GUI_GNOME) && defined(FEAT_MENU)
	unsigned long menu_handler = 0;
# ifdef FEAT_TOOLBAR
	unsigned long tool_handler = 0;
# endif
	/*
	 * Urgh hackish :/  For some reason BonoboDockLayout always forces a
	 * show when restoring the saved layout configuration.	We can't just
	 * hide the widgets again after gtk_widget_show(gui.mainwin) since it's
	 * a toplevel window and thus will be realized immediately.  Instead,
	 * connect signal handlers to hide the widgets just after they've been
	 * marked visible, but before the main window is realized.
	 */
	if (using_gnome && vim_strchr(p_go, GO_MENUS) == NULL)
	    menu_handler = g_signal_connect_after(gui.menubar_h, "show",
						  G_CALLBACK(&gtk_widget_hide),
						  NULL);
# ifdef FEAT_TOOLBAR
	if (using_gnome && vim_strchr(p_go, GO_TOOLBAR) == NULL
		&& (toolbar_flags & (TOOLBAR_TEXT | TOOLBAR_ICONS)))
	    tool_handler = g_signal_connect_after(gui.toolbar_h, "show",
						  G_CALLBACK(&gtk_widget_hide),
						  NULL);
# endif
#endif
	FUNC14(gui.mainwin);

#if defined(FEAT_GUI_GNOME) && defined(FEAT_MENU)
	if (menu_handler != 0)
	    g_signal_handler_disconnect(gui.menubar_h, menu_handler);
# ifdef FEAT_TOOLBAR
	if (tool_handler != 0)
	    g_signal_handler_disconnect(gui.toolbar_h, tool_handler);
# endif
#endif
    }

    return OK;
}