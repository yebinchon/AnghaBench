#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_14__ {int /*<<< orphan*/  lock; } ;
struct TYPE_16__ {TYPE_1__ bdj; } ;
typedef  TYPE_3__ demux_sys_t ;
struct TYPE_17__ {int cmd; int plane; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
typedef  TYPE_4__ BD_OVERLAY ;

/* Variables and functions */
#define  BD_OVERLAY_CLEAR 133 
#define  BD_OVERLAY_CLOSE 132 
#define  BD_OVERLAY_DRAW 131 
#define  BD_OVERLAY_FLUSH 130 
#define  BD_OVERLAY_INIT 129 
#define  BD_OVERLAY_WIPE 128 
 int MAX_OVERLAY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_4__ const* const) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(void *ptr, const BD_OVERLAY *const overlay)
{
    demux_t *p_demux = (demux_t*)ptr;
    demux_sys_t *p_sys = p_demux->p_sys;

    FUNC7(&p_sys->bdj.lock);

    if (!overlay) {
        FUNC5(p_demux, "Closing overlays.");
        for (int i = 0; i < MAX_OVERLAY; i++)
            FUNC2(p_demux, i);
        FUNC8(&p_sys->bdj.lock);
        return;
    }

    switch (overlay->cmd) {
    case BD_OVERLAY_INIT:
        FUNC5(p_demux, "Initializing overlay");
        FUNC4(p_demux, overlay->plane, overlay->w, overlay->h);
        break;
    case BD_OVERLAY_CLOSE:
        FUNC1(p_demux, overlay->plane);
        FUNC2(p_demux, overlay->plane);
        break;
    case BD_OVERLAY_CLEAR:
        FUNC1(p_demux, overlay->plane);
        break;
    case BD_OVERLAY_FLUSH:
        FUNC0(p_demux, overlay->plane);
        break;
    case BD_OVERLAY_DRAW:
    case BD_OVERLAY_WIPE:
        FUNC3(p_demux, overlay);
        break;
    default:
        FUNC6(p_demux, "Unknown BD overlay command: %u", overlay->cmd);
        break;
    }

    FUNC8(&p_sys->bdj.lock);
}