#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_4__ {int bpp; int /*<<< orphan*/  vs_height; int /*<<< orphan*/  vs_width; } ;
typedef  scalar_t__ GR_CURSOR_ID ;

/* Variables and functions */
 int /*<<< orphan*/  GR_ROOT_WINDOW_ID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int g_Bpp ; 
 int g_bpp ; 
 TYPE_2__ g_clip ; 
 int /*<<< orphan*/  g_directory ; 
 int /*<<< orphan*/  g_domain ; 
 int /*<<< orphan*/  g_flags ; 
 int /*<<< orphan*/  g_gc ; 
 int /*<<< orphan*/  g_gc_clean ; 
 int /*<<< orphan*/  g_height ; 
 scalar_t__ g_null_cursor ; 
 int /*<<< orphan*/  g_password ; 
 int /*<<< orphan*/  g_sck ; 
 TYPE_1__ g_screen_info ; 
 int g_server_bpp ; 
 int /*<<< orphan*/  g_servername ; 
 int /*<<< orphan*/  g_shell ; 
 int /*<<< orphan*/  g_width ; 
 int /*<<< orphan*/  g_wnd ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  nanox_event ; 
 int /*<<< orphan*/  FUNC17 (int,char**) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (void*) ; 

int FUNC21(int in_argc, char ** in_argv)
{
  FUNC15();
  /* read command line options */
  if (!FUNC17(in_argc, in_argv))
  {
    FUNC13(0);
  }
  /* connect to server */
  if (FUNC9() < 0)
  {
    FUNC14(stderr, "Couldn't connect to Nano-X server\n");
    FUNC13(1);
  }
  FUNC4(&g_screen_info);
  g_bpp = g_screen_info.bpp;
  g_Bpp = (g_screen_info.bpp + 7) / 8;
  g_width = g_screen_info.vs_width;
  g_height = g_screen_info.vs_height;
  g_clip.x = 0;
  g_clip.y = 0;
  g_clip.width = g_width;
  g_clip.height = g_height;
  if (!((g_bpp == 32 && g_server_bpp == 16) ||
        (g_bpp == 16 && g_server_bpp == 16)))
  {
    FUNC14(stderr, "unsupported bpp, server = %d, client = %d\n",
            g_server_bpp, g_bpp);
    FUNC0();
    FUNC13(0);
  }
  FUNC16();
  /* connect to server */
  if (!FUNC18(g_servername, g_flags, g_domain, g_password, g_shell,
                   g_directory))
  {
    FUNC14(stderr, "Error connecting\n");
    FUNC0();
    FUNC13(1);
  }
  /* create window */
  g_wnd = FUNC8(GR_ROOT_WINDOW_ID, 0, 0, g_width, g_height, 0, 0, 0);
  /* show window */
  FUNC6(g_wnd);
  /* create graphic context */
  g_gc = FUNC7();
  g_gc_clean = FUNC7();
  /* clear screen */
  FUNC12(g_gc, 0);
  FUNC3(g_wnd, g_gc, 0, 0, g_width, g_height);
  /* create null cursor */
  g_null_cursor = (GR_CURSOR_ID)FUNC19(0, 0, 32, 32, 0, 0);
  /* register callbacks, set mask, and run main loop */
  FUNC11(g_wnd, -1); /* all events */
  FUNC10(g_sck);
  FUNC5(nanox_event);
  /* free null cursor */
  FUNC20((void*)g_null_cursor);
  /* free graphic context */
  FUNC1(g_gc);
  FUNC1(g_gc_clean);
  /* free window */
  FUNC2(g_wnd);
  /* close connection */
  FUNC0();
  return 0;
}