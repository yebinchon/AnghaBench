
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int border_offset; int border_width; int * vimToolBar; int * vimToolBarGroup; int * vimMenuBar; int * vimWindow; int * vimTextArea; int * vimContainer; int * vimPanelGroup; int * event_buffer; } ;
struct TYPE_5__ {int member_0; int member_1; int w; } ;
struct TYPE_4__ {int member_1; int member_0; } ;
typedef int PtArg_t ;
typedef TYPE_1__ PhPoint_t ;
typedef int PhEvent_t ;
typedef TYPE_2__ PhDim_t ;


 int EVENT_BUFFER_SIZE ;
 int FAIL ;
 int GO_MENUS ;
 int GO_TOOLBAR ;
 int GUI_PH_MARGIN ;
 int GUI_PH_MOUSE_TYPE ;
 int OK ;
 int Ph_EV_BUT_PRESS ;
 int Ph_EV_BUT_RELEASE ;
 int Ph_EV_KEY ;
 int Ph_EV_PTR_MOTION_BUTTON ;
 int Ph_WM_CLOSE ;
 int Ph_WM_FOCUS ;
 int Ph_WM_RESIZE ;
 int PtAddCallback (int *,int ,int ,int *) ;
 int PtAddEventHandler (int *,int,int ,int *) ;
 void* PtCreateWidget (int ,int *,int,int *) ;
 int PtMenuBar ;
 int PtPane ;
 int PtPanelGroup ;
 int PtRaw ;
 int PtSetArg (int *,int ,...) ;
 int PtTimer ;
 int PtToolbar ;
 int PtToolbarGroup ;
 int PtWindow ;
 int Pt_ALL ;
 int Pt_ANCHOR_ALL ;
 int Pt_ANCHOR_LEFT_RIGHT ;
 int Pt_ARG_ANCHOR_FLAGS ;
 int Pt_ARG_BASIC_FLAGS ;
 int Pt_ARG_BEVEL_WIDTH ;
 int Pt_ARG_CONTAINER_FLAGS ;
 int Pt_ARG_CURSOR_COLOR ;
 int Pt_ARG_CURSOR_TYPE ;
 int Pt_ARG_DIM ;
 int Pt_ARG_FLAGS ;
 int Pt_ARG_MARGIN_HEIGHT ;
 int Pt_ARG_MARGIN_WIDTH ;
 int Pt_ARG_PG_PANEL_TITLES ;
 int Pt_ARG_POS ;
 int Pt_ARG_RAW_DRAW_F ;
 int Pt_ARG_RESIZE_FLAGS ;
 int Pt_ARG_WIDTH ;
 int Pt_ARG_WINDOW_MANAGED_FLAGS ;
 int Pt_ARG_WINDOW_NOTIFY_FLAGS ;
 int Pt_AUTO_EXTENT ;
 int Pt_CB_GOT_FOCUS ;
 int Pt_CB_LOST_FOCUS ;
 int Pt_CB_PG_PANEL_SWITCHING ;
 int Pt_CB_RESIZE ;
 int Pt_CB_TIMER_ACTIVATE ;
 int Pt_CB_WINDOW ;
 int Pt_CB_WINDOW_OPENING ;
 int Pt_DELAY_REALIZE ;
 int * Pt_DFLT_PARENT ;
 int Pt_FALSE ;
 int Pt_GETS_FOCUS ;
 int Pt_HIGHLIGHTED ;
 int Pt_IS_ANCHORED ;
 int Pt_RESIZE_Y_AS_REQUIRED ;
 int Pt_TOP_ANCHORED_TOP ;
 int Pt_TRUE ;
 int PxTranslateSet (int *,char*) ;
 scalar_t__ alloc (int ) ;
 int charset_translate ;
 int empty_title ;
 TYPE_3__ gui ;
 int gui_ph_handle_focus ;
 int gui_ph_handle_keyboard ;
 int gui_ph_handle_menu_resize ;
 int gui_ph_handle_mouse ;
 int gui_ph_handle_pg_change ;
 int gui_ph_handle_raw_draw ;
 int gui_ph_handle_timer_cursor ;
 int gui_ph_handle_timer_timeout ;
 int gui_ph_handle_window_cb ;
 int gui_ph_handle_window_open ;
 int gui_ph_mouse_color ;
 int gui_ph_pane_resize ;
 int * gui_ph_timer_cursor ;
 int * gui_ph_timer_timeout ;
 int p_go ;
 int vim_strchr (int ,int ) ;

int
gui_mch_init(void)
{
    PtArg_t args[10];
    int flags = 0, n = 0;

    PhDim_t window_size = {100, 100};
    PhPoint_t pos = {0, 0};

    gui.event_buffer = (PhEvent_t *) alloc(EVENT_BUFFER_SIZE);
    if (gui.event_buffer == ((void*)0))
 return FAIL;


    charset_translate = PxTranslateSet(((void*)0), "latin1");


    gui.border_offset = gui.border_width = GUI_PH_MARGIN + 2;


    PtSetArg(&args[ n++ ], Pt_ARG_WINDOW_MANAGED_FLAGS, Pt_FALSE, Ph_WM_CLOSE);
    PtSetArg(&args[ n++ ], Pt_ARG_WINDOW_NOTIFY_FLAGS, Pt_TRUE,
     Ph_WM_CLOSE | Ph_WM_RESIZE | Ph_WM_FOCUS);
    PtSetArg(&args[ n++ ], Pt_ARG_DIM, &window_size, 0);
    gui.vimWindow = PtCreateWidget(PtWindow, ((void*)0), n, args);
    if (gui.vimWindow == ((void*)0))
 return FAIL;

    PtAddCallback(gui.vimWindow, Pt_CB_WINDOW, gui_ph_handle_window_cb, ((void*)0));
    PtAddCallback(gui.vimWindow, Pt_CB_WINDOW_OPENING,
     gui_ph_handle_window_open, ((void*)0));

    n = 0;
    PtSetArg(&args[ n++ ], Pt_ARG_ANCHOR_FLAGS, Pt_ANCHOR_ALL, Pt_IS_ANCHORED);
    PtSetArg(&args[ n++ ], Pt_ARG_DIM, &window_size, 0);
    PtSetArg(&args[ n++ ], Pt_ARG_POS, &pos, 0);
    PtSetArg(&args[ n++ ], Pt_ARG_BASIC_FLAGS, Pt_FALSE, Pt_ALL);
    PtSetArg(&args[ n++ ], Pt_ARG_BEVEL_WIDTH, 0, 0);
    PtSetArg(&args[ n++ ], Pt_ARG_MARGIN_WIDTH, 0, 0);
    PtSetArg(&args[ n++ ], Pt_ARG_MARGIN_HEIGHT, 0, 0);
    PtSetArg(&args[ n++ ], Pt_ARG_CONTAINER_FLAGS, Pt_TRUE, Pt_AUTO_EXTENT);

    gui.vimContainer = PtCreateWidget(PtPane, gui.vimWindow, n, args);
    if (gui.vimContainer == ((void*)0))
 return FAIL;

    PtAddCallback(gui.vimContainer, Pt_CB_RESIZE, gui_ph_pane_resize, ((void*)0));



    n = 0;

    PtSetArg(&args[ n++ ], Pt_ARG_RAW_DRAW_F, gui_ph_handle_raw_draw, 1);
    PtSetArg(&args[ n++ ], Pt_ARG_BEVEL_WIDTH, GUI_PH_MARGIN, 0);




    PtSetArg(&args[ n++ ], Pt_ARG_FLAGS, Pt_TRUE,
     Pt_GETS_FOCUS | Pt_HIGHLIGHTED);

    PtSetArg(&args[ n++ ], Pt_ARG_CURSOR_TYPE, GUI_PH_MOUSE_TYPE, 0);
    PtSetArg(&args[ n++ ], Pt_ARG_CURSOR_COLOR, gui_ph_mouse_color, 0);


    gui.vimTextArea = PtCreateWidget(PtRaw, Pt_DFLT_PARENT, n, args);
    if (gui.vimTextArea == ((void*)0))
 return FAIL;



    PtAddEventHandler(gui.vimTextArea,
     Ph_EV_BUT_PRESS | Ph_EV_BUT_RELEASE | Ph_EV_PTR_MOTION_BUTTON,
     gui_ph_handle_mouse, ((void*)0));
    PtAddEventHandler(gui.vimTextArea, Ph_EV_KEY,
     gui_ph_handle_keyboard, ((void*)0));
    PtAddCallback(gui.vimTextArea, Pt_CB_GOT_FOCUS,
     gui_ph_handle_focus, ((void*)0));
    PtAddCallback(gui.vimTextArea, Pt_CB_LOST_FOCUS,
     gui_ph_handle_focus, ((void*)0));
    gui_ph_timer_cursor = PtCreateWidget(PtTimer, gui.vimWindow, 0, ((void*)0));
    if (gui_ph_timer_cursor == ((void*)0))
 return FAIL;

    gui_ph_timer_timeout = PtCreateWidget(PtTimer, gui.vimWindow, 0, ((void*)0));
    if (gui_ph_timer_timeout == ((void*)0))
 return FAIL;

    PtAddCallback(gui_ph_timer_cursor, Pt_CB_TIMER_ACTIVATE,
     gui_ph_handle_timer_cursor, ((void*)0));
    PtAddCallback(gui_ph_timer_timeout, Pt_CB_TIMER_ACTIVATE,
     gui_ph_handle_timer_timeout, ((void*)0));
    return OK;
}
