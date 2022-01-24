#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_13__ {int /*<<< orphan*/  lock; } ;
struct TYPE_15__ {TYPE_1__ bdj; } ;
typedef  TYPE_3__ demux_sys_t ;
struct TYPE_16__ {int cmd; int /*<<< orphan*/  plane; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
typedef  TYPE_4__ BD_ARGB_OVERLAY ;

/* Variables and functions */
#define  BD_ARGB_OVERLAY_CLOSE 131 
#define  BD_ARGB_OVERLAY_DRAW 130 
#define  BD_ARGB_OVERLAY_FLUSH 129 
#define  BD_ARGB_OVERLAY_INIT 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_4__ const* const) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(void *ptr, const BD_ARGB_OVERLAY *const overlay)
{
    demux_t *p_demux = (demux_t*)ptr;
    demux_sys_t *p_sys = p_demux->p_sys;

    switch (overlay->cmd) {
    case BD_ARGB_OVERLAY_INIT:
        FUNC6(&p_sys->bdj.lock);
        FUNC4(p_demux, overlay->plane, overlay->w, overlay->h);
        FUNC7(&p_sys->bdj.lock);
        break;
    case BD_ARGB_OVERLAY_CLOSE:
        FUNC6(&p_sys->bdj.lock);
        FUNC1(p_demux, overlay->plane);
        FUNC2(p_demux, overlay->plane);
        FUNC7(&p_sys->bdj.lock);
        break;
    case BD_ARGB_OVERLAY_FLUSH:
        FUNC0(p_demux, overlay->plane);
        break;
    case BD_ARGB_OVERLAY_DRAW:
        FUNC3(p_demux, overlay);
        break;
    default:
        FUNC5(p_demux, "Unknown BD ARGB overlay command: %u", overlay->cmd);
        break;
    }
}