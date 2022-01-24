#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_10__ ;

/* Type definitions */
struct timeval {int dummy; } ;
struct TYPE_27__ {unsigned long id; int /*<<< orphan*/  wnd; TYPE_10__* group; struct TYPE_27__* next; scalar_t__ outpos_height; scalar_t__ outpos_width; scalar_t__ outpos_yoffset; scalar_t__ outpos_xoffset; scalar_t__ outpos_serial; int /*<<< orphan*/  outstanding_position; void* position_timer; scalar_t__ desktop; int /*<<< orphan*/  state; scalar_t__ height; scalar_t__ width; scalar_t__ yoffset; scalar_t__ xoffset; scalar_t__ behind; } ;
typedef  TYPE_2__ seamless_window ;
struct TYPE_28__ {char* res_name; char* res_class; int /*<<< orphan*/  window_group; int /*<<< orphan*/  flags; } ;
typedef  TYPE_3__ XWMHints ;
typedef  TYPE_3__ XSizeHints ;
typedef  int /*<<< orphan*/  XSetWindowAttributes ;
typedef  TYPE_3__ XClassHint ;
typedef  int /*<<< orphan*/  Window ;
struct TYPE_26__ {TYPE_2__* seamless_windows; int /*<<< orphan*/  kill_atom; int /*<<< orphan*/  screen; int /*<<< orphan*/  visual; int /*<<< orphan*/  depth; int /*<<< orphan*/  seamless_active; } ;
struct TYPE_29__ {int /*<<< orphan*/  display; TYPE_1__ xwin; } ;
struct TYPE_25__ {int /*<<< orphan*/  wnd; int /*<<< orphan*/  refcnt; } ;
typedef  TYPE_6__ RDPCLIENT ;

/* Variables and functions */
 int CWBackPixel ; 
 int CWBackingStore ; 
 int CWBorderPixel ; 
 int CWColormap ; 
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  InputOutput ; 
 long PropertyChangeMask ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long SEAMLESSRDP_CREATE_MODAL ; 
 int /*<<< orphan*/  SEAMLESSRDP_NOTYETMAPPED ; 
 int /*<<< orphan*/  USPosition ; 
 int /*<<< orphan*/  WindowGroupHint ; 
 TYPE_3__* FUNC1 () ; 
 TYPE_3__* FUNC2 () ; 
 TYPE_3__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,long*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_10__* FUNC19 (TYPE_6__*,unsigned long,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC20 (TYPE_6__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (void*) ; 
 int /*<<< orphan*/  FUNC22 (char*,unsigned long) ; 
 void* FUNC23 (int) ; 

void
FUNC24(RDPCLIENT * This, unsigned long id, unsigned long group, unsigned long parent,
			  unsigned long flags)
{
	Window wnd;
	XSetWindowAttributes attribs;
	XClassHint *classhints;
	XSizeHints *sizehints;
	XWMHints *wmhints;
	long input_mask;
	seamless_window *sw, *sw_parent;

	if (!This->xwin.seamless_active)
		return;

	/* Ignore CREATEs for existing windows */
	sw = FUNC20(This, id);
	if (sw)
		return;

	FUNC17(This, &attribs);
	wnd = FUNC4(This->display, FUNC0(This->xwin.screen), -1, -1, 1, 1, 0, This->xwin.depth,
			    InputOutput, This->xwin.visual,
			    CWBackPixel | CWBackingStore | CWColormap | CWBorderPixel, &attribs);

	FUNC12(This->display, wnd, "SeamlessRDP");
	FUNC15(This, wnd, "SeamlessRDP");

	FUNC18(This, wnd);

	classhints = FUNC1();
	if (classhints != NULL)
	{
		classhints->res_name = "rdesktop";
		classhints->res_class = "SeamlessRDP";
		FUNC7(This->display, wnd, classhints);
		FUNC5(classhints);
	}

	/* WM_NORMAL_HINTS */
	sizehints = FUNC2();
	if (sizehints != NULL)
	{
		sizehints->flags = USPosition;
		FUNC10(This->display, wnd, sizehints);
		FUNC5(sizehints);
	}

	/* Parent-less transient windows */
	if (parent == 0xFFFFFFFF)
	{
		FUNC8(This->display, wnd, FUNC0(This->xwin.screen));
		/* Some buggy wm:s (kwin) do not handle the above, so fake it
		   using some other hints. */
		FUNC14(This, wnd);
	}
	/* Normal transient windows */
	else if (parent != 0x00000000)
	{
		sw_parent = FUNC20(This, parent);
		if (sw_parent)
			FUNC8(This->display, wnd, sw_parent->wnd);
		else
			FUNC22("ui_seamless_create_window: No parent window 0x%lx\n", parent);
	}

	if (flags & SEAMLESSRDP_CREATE_MODAL)
	{
		/* We do this to support buggy wm:s (*cough* metacity *cough*)
		   somewhat at least */
		if (parent == 0x00000000)
			FUNC8(This->display, wnd, FUNC0(This->xwin.screen));
		FUNC13(This, wnd);
	}

	/* FIXME: Support for Input Context:s */

	FUNC16(This, &input_mask);
	input_mask |= PropertyChangeMask;

	FUNC6(This->display, wnd, input_mask);

	/* handle the WM_DELETE_WINDOW protocol. FIXME: When killing a
	   seamless window, we could try to close the window on the
	   serverside, instead of terminating rdesktop */
	FUNC11(This->display, wnd, &This->xwin.kill_atom, 1);

	sw = FUNC23(sizeof(seamless_window));
	sw->wnd = wnd;
	sw->id = id;
	sw->behind = 0;
	sw->group = FUNC19(This, group, False);
	sw->group->refcnt++;
	sw->xoffset = 0;
	sw->yoffset = 0;
	sw->width = 0;
	sw->height = 0;
	sw->state = SEAMLESSRDP_NOTYETMAPPED;
	sw->desktop = 0;
	sw->position_timer = FUNC23(sizeof(struct timeval));
	FUNC21(sw->position_timer);

	sw->outstanding_position = False;
	sw->outpos_serial = 0;
	sw->outpos_xoffset = sw->outpos_yoffset = 0;
	sw->outpos_width = sw->outpos_height = 0;

	sw->next = This->xwin.seamless_windows;
	This->xwin.seamless_windows = sw;

	/* WM_HINTS */
	wmhints = FUNC3();
	if (wmhints)
	{
		wmhints->flags = WindowGroupHint;
		wmhints->window_group = sw->group->wnd;
		FUNC9(This->display, sw->wnd, wmhints);
		FUNC5(wmhints);
	}
}