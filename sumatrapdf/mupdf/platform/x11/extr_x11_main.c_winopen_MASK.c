#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int flags; char* res_name; char* res_class; void* icon_mask; void* icon_pixmap; } ;
typedef  TYPE_1__ XWMHints ;
typedef  TYPE_1__ XClassHint ;
struct TYPE_13__ {int /*<<< orphan*/  ctx; } ;
struct TYPE_12__ {int red; int green; int blue; } ;

/* Variables and functions */
 int ButtonPressMask ; 
 int ButtonReleaseMask ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ExposureMask ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  False ; 
 int IconMaskHint ; 
 int IconPixmapHint ; 
 int /*<<< orphan*/  InputOutput ; 
 int KeyPressMask ; 
 void* NET_WM_NAME ; 
 void* NET_WM_STATE ; 
 void* NET_WM_STATE_FULLSCREEN ; 
 scalar_t__ None ; 
 int PointerMotionMask ; 
 int StructureNotifyMask ; 
 void* WM_DELETE_WINDOW ; 
 void* WM_RELOAD_PAGE ; 
 void* XA_CLIPBOARD ; 
 void* XA_TARGETS ; 
 void* XA_TIMESTAMP ; 
 void* XA_UTF8_STRING ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_1__* FUNC7 () ; 
 int /*<<< orphan*/  XC_hand2 ; 
 int /*<<< orphan*/  XC_left_ptr ; 
 int /*<<< orphan*/  XC_watch ; 
 int /*<<< orphan*/  XC_xterm ; 
 void* FUNC8 (int /*<<< orphan*/ ,scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 void* FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,scalar_t__,void**,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_4__ gapp ; 
 scalar_t__ mapped ; 
 scalar_t__ mupdf_icon_bitmap_16_bits ; 
 int /*<<< orphan*/  mupdf_icon_bitmap_16_height ; 
 scalar_t__ mupdf_icon_bitmap_16_mask_bits ; 
 int /*<<< orphan*/  mupdf_icon_bitmap_16_mask_height ; 
 int /*<<< orphan*/  mupdf_icon_bitmap_16_mask_width ; 
 int /*<<< orphan*/  mupdf_icon_bitmap_16_width ; 
 int /*<<< orphan*/  x11fd ; 
 TYPE_3__ xbgcolor ; 
 void* xcarrow ; 
 void* xccaret ; 
 void* xchand ; 
 void* xcwait ; 
 int /*<<< orphan*/  xdpy ; 
 int /*<<< orphan*/  xgc ; 
 void* xicon ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* xmask ; 
 int /*<<< orphan*/  xscr ; 
 scalar_t__ xwin ; 

__attribute__((used)) static void FUNC27(void)
{
	XWMHints *wmhints;
	XClassHint *classhint;

#ifdef HAVE_CURL
	if (!XInitThreads())
		fz_throw(gapp.ctx, FZ_ERROR_GENERIC, "cannot initialize X11 for multi-threading");
#endif

	xdpy = FUNC16(NULL);
	if (!xdpy)
		FUNC22(gapp.ctx, FZ_ERROR_GENERIC, "cannot open display");

	XA_CLIPBOARD = FUNC15(xdpy, "CLIPBOARD", False);
	XA_TARGETS = FUNC15(xdpy, "TARGETS", False);
	XA_TIMESTAMP = FUNC15(xdpy, "TIMESTAMP", False);
	XA_UTF8_STRING = FUNC15(xdpy, "UTF8_STRING", False);
	WM_DELETE_WINDOW = FUNC15(xdpy, "WM_DELETE_WINDOW", False);
	NET_WM_NAME = FUNC15(xdpy, "_NET_WM_NAME", False);
	NET_WM_STATE = FUNC15(xdpy, "_NET_WM_STATE", False);
	NET_WM_STATE_FULLSCREEN = FUNC15(xdpy, "_NET_WM_STATE_FULLSCREEN", False);
	WM_RELOAD_PAGE = FUNC15(xdpy, "_WM_RELOAD_PAGE", False);

	xscr = FUNC3(xdpy);

	FUNC26(xdpy, xscr, FUNC4(xdpy, xscr));

	xcarrow = FUNC9(xdpy, XC_left_ptr);
	xchand = FUNC9(xdpy, XC_hand2);
	xcwait = FUNC9(xdpy, XC_watch);
	xccaret = FUNC9(xdpy, XC_xterm);

	xbgcolor.red = 0x7000;
	xbgcolor.green = 0x7000;
	xbgcolor.blue = 0x7000;

	FUNC6(xdpy, FUNC1(xdpy, xscr), &xbgcolor);

	xwin = FUNC11(xdpy, FUNC2(xdpy),
		10, 10, 200, 100, 0,
		FUNC24(),
		InputOutput,
		FUNC25(),
		0,
		NULL);
	if (xwin == None)
		FUNC22(gapp.ctx, FZ_ERROR_GENERIC, "cannot create window");

	FUNC21(xdpy, xwin, FUNC23());
	FUNC17(xdpy, xwin,
		StructureNotifyMask | ExposureMask | KeyPressMask |
		PointerMotionMask | ButtonPressMask | ButtonReleaseMask);

	mapped = 0;

	xgc = FUNC10(xdpy, xwin, 0, NULL);

	FUNC12(xdpy, xwin, xcarrow);

	wmhints = FUNC7();
	if (wmhints)
	{
		wmhints->flags = IconPixmapHint | IconMaskHint;
		xicon = FUNC8(xdpy, xwin,
			(char*)mupdf_icon_bitmap_16_bits,
			mupdf_icon_bitmap_16_width,
			mupdf_icon_bitmap_16_height);
		xmask = FUNC8(xdpy, xwin,
			(char*)mupdf_icon_bitmap_16_mask_bits,
			mupdf_icon_bitmap_16_mask_width,
			mupdf_icon_bitmap_16_mask_height);
		if (xicon && xmask)
		{
			wmhints->icon_pixmap = xicon;
			wmhints->icon_mask = xmask;
			FUNC19(xdpy, xwin, wmhints);
		}
		FUNC13(wmhints);
	}

	classhint = FUNC5();
	if (classhint)
	{
		classhint->res_name = "mupdf";
		classhint->res_class = "MuPDF";
		FUNC18(xdpy, xwin, classhint);
		FUNC13(classhint);
	}

	FUNC20(xdpy, xwin, &WM_DELETE_WINDOW, 1);

	x11fd = FUNC0(xdpy);
}