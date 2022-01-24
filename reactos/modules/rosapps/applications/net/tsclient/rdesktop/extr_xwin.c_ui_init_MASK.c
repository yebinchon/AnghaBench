#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8 ;
typedef  void* uint32 ;
typedef  int uint16 ;
struct TYPE_10__ {int host_be; int xserver_be; int depth; scalar_t__ bpp; int /*<<< orphan*/  IM; int /*<<< orphan*/  mod_map; int /*<<< orphan*/  screen; void* using_full_workarea; int /*<<< orphan*/  visual; int /*<<< orphan*/  xcolmap; scalar_t__ no_translate_image; int /*<<< orphan*/  x_socket; } ;
struct TYPE_11__ {scalar_t__ server_depth; int width; int height; TYPE_1__ xwin; scalar_t__ seamless_rdp; int /*<<< orphan*/ * display; scalar_t__ enable_compose; scalar_t__ fullscreen; void* ownbackstore; int /*<<< orphan*/  owncolmap; } ;
typedef  TYPE_2__ RDPCLIENT ;
typedef  void* BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AllocNone ; 
 scalar_t__ Always ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 void* False ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ MSBFirst ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 void* True ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 scalar_t__ FUNC18 (TYPE_2__*,void**,void**,void**,void**) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (char*,...) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 

BOOL
FUNC24(RDPCLIENT * This)
{
	int screen_num;

	This->display = FUNC14(NULL);
	if (This->display == NULL)
	{
		FUNC16("Failed to open display: %s\n", FUNC12(NULL));
		return False;
	}

	{
		uint16 endianess_test = 1;
		This->xwin.host_be = !(BOOL) (*(uint8 *) (&endianess_test));
	}

	/*This->xwin.old_error_handler = XSetErrorHandler(error_handler);*/
	This->xwin.xserver_be = (FUNC7(This->display) == MSBFirst);
	screen_num = FUNC4(This->display);
	This->xwin.x_socket = FUNC0(This->display);
	This->xwin.screen = FUNC9(This->display, screen_num);
	This->xwin.depth = FUNC3(This->xwin.screen);

	if (!FUNC20(This))
		return False;

	if (This->xwin.no_translate_image)
	{
		FUNC1(("Performance optimization possible: avoiding image translation (colour depth conversion).\n"));
	}

	if (This->server_depth > This->xwin.bpp)
	{
		FUNC21("Remote desktop colour depth %d higher than display colour depth %d.\n",
			This->server_depth, This->xwin.bpp);
	}

	FUNC1(("RDP depth: %d, display depth: %d, display bpp: %d, X server BE: %d, host BE: %d\n",
	       This->server_depth, This->xwin.depth, This->xwin.bpp, This->xwin.xserver_be, This->xwin.host_be));

	if (!This->owncolmap)
	{
		This->xwin.xcolmap =
			FUNC11(This->display, FUNC8(This->xwin.screen), This->xwin.visual,
					AllocNone);
		if (This->xwin.depth <= 8)
			FUNC21("Display colour depth is %d bit: you may want to use -C for a private colourmap.\n", This->xwin.depth);
	}

	if ((!This->ownbackstore) && (FUNC5(This->xwin.screen) != Always))
	{
		FUNC21("External BackingStore not available. Using internal.\n");
		This->ownbackstore = True;
	}

	/*
	 * Determine desktop size
	 */
	if (This->fullscreen)
	{
		This->width = FUNC10(This->xwin.screen);
		This->height = FUNC6(This->xwin.screen);
		This->xwin.using_full_workarea = True;
	}
	else if (This->width < 0)
	{
		/* Percent of screen */
		if (-This->width >= 100)
			This->xwin.using_full_workarea = True;
		This->height = FUNC6(This->xwin.screen) * (-This->width) / 100;
		This->width = FUNC10(This->xwin.screen) * (-This->width) / 100;
	}
	else if (This->width == 0)
	{
		/* Fetch geometry from _NET_WORKAREA */
		uint32 x, y, cx, cy;
		if (FUNC18(This, &x, &y, &cx, &cy) == 0)
		{
			This->width = cx;
			This->height = cy;
			This->xwin.using_full_workarea = True;
		}
		else
		{
			FUNC21("Failed to get workarea: probably your window manager does not support extended hints\n");
			This->width = FUNC10(This->xwin.screen);
			This->height = FUNC6(This->xwin.screen);
		}
	}

	/* make sure width is a multiple of 4 */
	This->width = (This->width + 3) & ~3;

	This->xwin.mod_map = FUNC13(This->display);

	FUNC23(This);

	if (This->enable_compose)
		This->xwin.IM = FUNC15(This->display, NULL, NULL, NULL);

	FUNC22(This);
	FUNC17(This);
	if (This->seamless_rdp)
		FUNC19(This);

	FUNC2(("server bpp %d client bpp %d depth %d\n", This->server_depth, This->xwin.bpp, This->xwin.depth));

	return True;
}