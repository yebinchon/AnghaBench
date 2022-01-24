#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
struct TYPE_21__ {char* res_name; char* res_class; int flags; int min_width; int max_width; int min_height; int max_height; } ;
typedef  TYPE_3__ XSizeHints ;
typedef  int /*<<< orphan*/  XSetWindowAttributes ;
struct TYPE_19__ {scalar_t__ state; } ;
struct TYPE_22__ {scalar_t__ type; TYPE_1__ xvisibility; } ;
typedef  TYPE_4__ XEvent ;
typedef  TYPE_3__ XClassHint ;
typedef  int /*<<< orphan*/  Window ;
struct TYPE_20__ {scalar_t__ backstore; int /*<<< orphan*/ * null_cursor; void* kill_atom; void* protocol_atom; void* mouse_in_wnd; void* focused; int /*<<< orphan*/ * IC; int /*<<< orphan*/ * IM; int /*<<< orphan*/ * gc; int /*<<< orphan*/  screen; int /*<<< orphan*/  depth; int /*<<< orphan*/ * create_bitmap_gc; int /*<<< orphan*/  visual; } ;
struct TYPE_23__ {int width; int height; scalar_t__ xpos; int pos; scalar_t__ ypos; int Unobscured; TYPE_2__ xwin; int /*<<< orphan*/  wnd; int /*<<< orphan*/  display; scalar_t__ embed_wnd; scalar_t__ hide_decorations; int /*<<< orphan*/  title; scalar_t__ ownbackstore; scalar_t__ fullscreen; } ;
typedef  TYPE_6__ RDPCLIENT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CWBackPixel ; 
 int CWBackingStore ; 
 int CWBorderPixel ; 
 int CWColormap ; 
 int CWOverrideRedirect ; 
 void* False ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InputOutput ; 
 int PMaxSize ; 
 int PMinSize ; 
 int PPosition ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  VisibilityChangeMask ; 
 scalar_t__ VisibilityNotify ; 
 scalar_t__ VisibilityUnobscured ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 () ; 
 TYPE_3__* FUNC5 () ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long*,int /*<<< orphan*/ *) ; 
 int XIMPreeditNothing ; 
 int XIMStatusNothing ; 
 void* FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  XNClientWindow ; 
 int /*<<< orphan*/  XNFilterEvents ; 
 int /*<<< orphan*/  XNFocusWindow ; 
 int /*<<< orphan*/  XNInputStyle ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_6__*,long*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC26 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_6__*) ; 

BOOL
FUNC28(RDPCLIENT * This)
{
	uint8 null_pointer_mask[1] = { 0x80 };
	uint8 null_pointer_data[24] = { 0x00 };

	XSetWindowAttributes attribs;
	XClassHint *classhints;
	XSizeHints *sizehints;
	int wndwidth, wndheight;
	long input_mask, ic_input_mask;
	XEvent xevent;

	wndwidth = This->fullscreen ? FUNC3(This->xwin.screen) : This->width;
	wndheight = This->fullscreen ? FUNC1(This->xwin.screen) : This->height;

	/* Handle -x-y portion of geometry string */
	if (This->xpos < 0 || (This->xpos == 0 && (This->pos & 2)))
		This->xpos = FUNC3(This->xwin.screen) + This->xpos - This->width;
	if (This->ypos < 0 || (This->ypos == 0 && (This->pos & 4)))
		This->ypos = FUNC1(This->xwin.screen) + This->ypos - This->height;

	FUNC24(This, &attribs);

	This->wnd = FUNC9(This->display, FUNC2(This->xwin.screen), This->xpos, This->ypos, wndwidth,
			      wndheight, 0, This->xwin.depth, InputOutput, This->xwin.visual,
			      CWBackPixel | CWBackingStore | CWOverrideRedirect | CWColormap |
			      CWBorderPixel, &attribs);

	if (This->xwin.gc == NULL)
	{
		This->xwin.gc = FUNC6(This->display, This->wnd, 0, NULL);
		FUNC27(This);
	}

	if (This->xwin.create_bitmap_gc == NULL)
		This->xwin.create_bitmap_gc = FUNC6(This->display, This->wnd, 0, NULL);

	if ((This->ownbackstore) && (This->xwin.backstore == 0))
	{
		This->xwin.backstore = FUNC8(This->display, This->wnd, This->width, This->height, This->xwin.depth);

		/* clear to prevent rubbish being exposed at startup */
		FUNC19(This->display, This->xwin.gc, FUNC0(This->xwin.screen));
		FUNC10(This->display, This->xwin.backstore, This->xwin.gc, 0, 0, This->width, This->height);
	}

	FUNC22(This->display, This->wnd, This->title);

	if (This->hide_decorations)
		FUNC25(This, This->wnd);

	classhints = FUNC4();
	if (classhints != NULL)
	{
		classhints->res_name = classhints->res_class = "rdesktop";
		FUNC18(This->display, This->wnd, classhints);
		FUNC11(classhints);
	}

	sizehints = FUNC5();
	if (sizehints)
	{
		sizehints->flags = PMinSize | PMaxSize;
		if (This->pos)
			sizehints->flags |= PPosition;
		sizehints->min_width = sizehints->max_width = This->width;
		sizehints->min_height = sizehints->max_height = This->height;
		FUNC20(This->display, This->wnd, sizehints);
		FUNC11(sizehints);
	}

	if (This->embed_wnd)
	{
		FUNC16(This->display, This->wnd, (Window) This->embed_wnd, 0, 0);
	}

	FUNC23(This, &input_mask);

	if (This->xwin.IM != NULL)
	{
		This->xwin.IC = FUNC7(This->xwin.IM, XNInputStyle, (XIMPreeditNothing | XIMStatusNothing),
				 XNClientWindow, This->wnd, XNFocusWindow, This->wnd, NULL);

		if ((This->xwin.IC != NULL)
		    && (FUNC12(This->xwin.IC, XNFilterEvents, &ic_input_mask, NULL) == NULL))
			input_mask |= ic_input_mask;
	}

	FUNC17(This->display, This->wnd, input_mask);
	FUNC14(This->display, This->wnd);

	/* wait for VisibilityNotify */
	do
	{
		FUNC15(This->display, VisibilityChangeMask, &xevent);
	}
	while (xevent.type != VisibilityNotify);
	This->Unobscured = xevent.xvisibility.state == VisibilityUnobscured;

	This->xwin.focused = False;
	This->xwin.mouse_in_wnd = False;

	/* handle the WM_DELETE_WINDOW protocol */
	This->xwin.protocol_atom = FUNC13(This->display, "WM_PROTOCOLS", True);
	This->xwin.kill_atom = FUNC13(This->display, "WM_DELETE_WINDOW", True);
	FUNC21(This->display, This->wnd, &This->xwin.kill_atom, 1);

	/* create invisible 1x1 cursor to be used as null cursor */
	if (This->xwin.null_cursor == NULL)
		This->xwin.null_cursor = FUNC26(This, 0, 0, 1, 1, null_pointer_mask, null_pointer_data);

	return True;
}