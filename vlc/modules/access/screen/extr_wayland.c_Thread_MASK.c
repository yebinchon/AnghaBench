#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct wl_display {int dummy; } ;
struct pollfd {int /*<<< orphan*/  events; int /*<<< orphan*/  fd; } ;
struct TYPE_8__ {int /*<<< orphan*/  out; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_9__ {float rate; int /*<<< orphan*/ * es; struct wl_display* display; } ;
typedef  TYPE_2__ demux_sys_t ;
struct TYPE_10__ {int /*<<< orphan*/  i_pts; int /*<<< orphan*/  i_dts; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 float CLOCK_FREQ ; 
 scalar_t__ FUNC0 (TYPE_1__*,struct wl_display*) ; 
 int /*<<< orphan*/  POLLIN ; 
 TYPE_3__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  cleanup_wl_display_read ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (float) ; 
 scalar_t__ FUNC5 (struct pollfd*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct wl_display*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct wl_display*) ; 
 int /*<<< orphan*/  FUNC12 (struct wl_display*) ; 
 int /*<<< orphan*/  FUNC13 (struct wl_display*) ; 
 scalar_t__ FUNC14 (struct wl_display*) ; 
 int /*<<< orphan*/  FUNC15 (struct wl_display*) ; 

__attribute__((used)) static void *FUNC16(void *data)
{
    demux_t *demux = data;
    demux_sys_t *sys = demux->p_sys;
    struct wl_display *display = sys->display;
    struct pollfd ufd[1];
    unsigned interval = FUNC4(CLOCK_FREQ / (sys->rate * 1000.f));

    int canc = FUNC9();
    FUNC7(cleanup_wl_display_read, display);

    ufd[0].fd = FUNC13(display);
    ufd[0].events = POLLIN;

    for (;;)
    {
        if (FUNC0(demux, display))
            break;

        if (sys->es != NULL)
        {
            block_t *block = FUNC1(demux);

            block->i_pts = block->i_dts = FUNC10();
            FUNC3(demux->out, block->i_pts);
            FUNC2(demux->out, sys->es, block);
        }

        while (FUNC14(display) != 0)
            FUNC11(display);
        FUNC12(display);
        FUNC8(canc);

        while (FUNC5(ufd, 1, interval) < 0);

        canc = FUNC9();
        FUNC15(display);
        FUNC11(display);
    }
    FUNC6();
    FUNC8(canc);
    return NULL;
}