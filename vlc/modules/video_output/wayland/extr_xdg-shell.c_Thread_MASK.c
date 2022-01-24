#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct wl_display* wl; } ;
struct TYPE_5__ {TYPE_1__ display; TYPE_3__* sys; } ;
typedef  TYPE_2__ vout_window_t ;
struct TYPE_6__ {int /*<<< orphan*/  seats; } ;
typedef  TYPE_3__ vout_window_sys_t ;
struct wl_display {int dummy; } ;
struct pollfd {int /*<<< orphan*/  events; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  cleanup_wl_display_read ; 
 int FUNC0 (struct pollfd*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct wl_display*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct wl_display*) ; 
 int /*<<< orphan*/  FUNC9 (struct wl_display*) ; 
 int /*<<< orphan*/  FUNC10 (struct wl_display*) ; 
 scalar_t__ FUNC11 (struct wl_display*) ; 
 int /*<<< orphan*/  FUNC12 (struct wl_display*) ; 

__attribute__((used)) static void *FUNC13(void *data)
{
    vout_window_t *wnd = data;
    vout_window_sys_t *sys = wnd->sys;
    struct wl_display *display = wnd->display.wl;
    struct pollfd ufd[1];

    int canc = FUNC7();
    FUNC5(cleanup_wl_display_read, display);

    ufd[0].fd = FUNC10(display);
    ufd[0].events = POLLIN;

    for (;;)
    {
        int timeout;

        while (FUNC11(display) != 0)
            FUNC8(display);

        FUNC9(display);
        timeout = FUNC1(&sys->seats);
        FUNC6(canc);

        int val = FUNC0(ufd, 1, timeout);

        canc = FUNC7();
        if (val == 0)
            FUNC2(&sys->seats);

        FUNC12(display);
        FUNC8(display);
    }
    FUNC3();
    FUNC4();
    //vlc_restorecancel(canc);
    //return NULL;
}