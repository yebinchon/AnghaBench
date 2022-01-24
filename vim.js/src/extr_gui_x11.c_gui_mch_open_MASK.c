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
typedef  int /*<<< orphan*/ * XtPointer ;
struct TYPE_2__ {int /*<<< orphan*/  toolbar_height; int /*<<< orphan*/  menu_width; int /*<<< orphan*/  menu_height; int /*<<< orphan*/  dpy; int /*<<< orphan*/  blank_pointer; int /*<<< orphan*/  wid; } ;
typedef  int /*<<< orphan*/  EventMask ;

/* Variables and functions */
 size_t DELETE_WINDOW_IDX ; 
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  NoEventMask ; 
 int OK ; 
 int /*<<< orphan*/  PropertyChangeMask ; 
 size_t SAVE_YOURSELF_IDX ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _XEditResCheckMessages ; 
 int /*<<< orphan*/  commWindow ; 
 TYPE_1__ gui ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  gui_x11_send_event_handler ; 
 int /*<<< orphan*/  gui_x11_wm_protocol_handler ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * serverDelayedStartName ; 
 int /*<<< orphan*/ * serverName ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vimShell ; 
 int /*<<< orphan*/ * wm_atoms ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 

int
FUNC17()
{
    /* Actually open the window */
    FUNC5(vimShell);
    FUNC3(FUNC4(vimShell, "*vimForm"));

    gui.wid = FUNC10();
    gui.blank_pointer = FUNC9();

    /*
     * Add a callback for the Close item on the window managers menu, and the
     * save-yourself event.
     */
    wm_atoms[SAVE_YOURSELF_IDX] =
			      FUNC0(gui.dpy, "WM_SAVE_YOURSELF", False);
    wm_atoms[DELETE_WINDOW_IDX] =
			      FUNC0(gui.dpy, "WM_DELETE_WINDOW", False);
    FUNC1(gui.dpy, FUNC6(vimShell), wm_atoms, 2);
    FUNC2(vimShell, NoEventMask, True, gui_x11_wm_protocol_handler,
							     NULL);
#ifdef HAVE_X11_XMU_EDITRES_H
    /*
     * Enable editres protocol (see "man editres").
     * Usually will need to add -lXmu to the linker line as well.
     */
    XtAddEventHandler(vimShell, (EventMask)0, True, _XEditResCheckMessages,
	    (XtPointer)NULL);
#endif

#ifdef FEAT_CLIENTSERVER
    if (serverName == NULL && serverDelayedStartName != NULL)
    {
	/* This is a :gui command in a plain vim with no previous server */
	commWindow = XtWindow(vimShell);
	(void)serverRegisterName(gui.dpy, serverDelayedStartName);
    }
    else
    {
	/*
	 * Cannot handle "widget-less" windows with XtProcessEvent() we'll
	 * have to change the "server" registration to that of the main window
	 * If we have not registered a name yet, remember the window
	 */
	serverChangeRegisteredWindow(gui.dpy, XtWindow(vimShell));
    }
    XtAddEventHandler(vimShell, PropertyChangeMask, False,
		      gui_x11_send_event_handler, NULL);
#endif


#if defined(FEAT_MENU) && defined(FEAT_GUI_ATHENA)
    /* The Athena GUI needs this again after opening the window */
    gui_position_menu();
# ifdef FEAT_TOOLBAR
    gui_mch_set_toolbar_pos(0, gui.menu_height, gui.menu_width,
			    gui.toolbar_height);
# endif
#endif

    /* Get the colors for the highlight groups (gui_check_colors() might have
     * changed them) */
    FUNC12();		/* re-init colors and fonts */

#ifdef FEAT_HANGULIN
    hangul_keyboard_set();
#endif
#ifdef FEAT_XIM
    xim_init();
#endif
#ifdef FEAT_SUN_WORKSHOP
    workshop_postinit();
#endif

    return OK;
}