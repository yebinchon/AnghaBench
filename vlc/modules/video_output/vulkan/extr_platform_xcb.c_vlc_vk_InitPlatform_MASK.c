#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_connection_t ;
struct TYPE_8__ {int /*<<< orphan*/ * platform_sys; TYPE_2__* window; } ;
typedef  TYPE_3__ vlc_vk_t ;
struct TYPE_6__ {char* x11; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_1__ display; } ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 scalar_t__ VOUT_WINDOW_TYPE_XID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(vlc_vk_t *vk)
{
    if (vk->window->type != VOUT_WINDOW_TYPE_XID)
        return VLC_EGENERIC;

    const char *display = vk->window->display.x11;
    xcb_connection_t *conn = vk->platform_sys = FUNC1(display, NULL);
    if (FUNC2(conn))
    {
        FUNC0(vk, "Failed connecting to X server (%s)",
                display ? display : "default");
        FUNC3(conn);
        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}