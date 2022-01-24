#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_8__ {int /*<<< orphan*/  lock; TYPE_4__** p_overlays; } ;
struct TYPE_10__ {TYPE_1__ bdj; } ;
typedef  TYPE_3__ demux_sys_t ;
struct TYPE_11__ {scalar_t__ status; int /*<<< orphan*/  b_on_vout; int /*<<< orphan*/  lock; } ;
typedef  TYPE_4__ bluray_overlay_t ;

/* Variables and functions */
 int MAX_OVERLAY ; 
 scalar_t__ ToDisplay ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(demux_t *p_demux)
{
    demux_sys_t *p_sys = p_demux->p_sys;
    FUNC1(&p_sys->bdj.lock);

    for (int i = 0; i < MAX_OVERLAY; i++) {
        bluray_overlay_t *ov = p_sys->bdj.p_overlays[i];
        if (!ov) {
            continue;
        }
        FUNC1(&ov->lock);
        bool display = ov->status == ToDisplay;
        FUNC2(&ov->lock);
        if (display && !ov->b_on_vout)
        {
            /* NOTE: we might want to enable background video always when there's no video stream playing.
               Now, with some discs, there are perioids (even seconds) during which the video window
               disappears and just playlist is shown.
               (sometimes BD-J runs slowly ...)
            */
            FUNC0(p_demux, i, ov);
        }
    }

    FUNC2(&p_sys->bdj.lock);
}