#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_7__ {TYPE_4__** p_overlays; } ;
struct TYPE_9__ {TYPE_1__ bdj; } ;
typedef  TYPE_3__ demux_sys_t ;
struct TYPE_10__ {int width; int height; int b_on_vout; int /*<<< orphan*/  lock; } ;
typedef  TYPE_4__ bluray_overlay_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(demux_t *p_demux, int plane, int width, int height)
{
    demux_sys_t *p_sys = p_demux->p_sys;

    FUNC0(p_sys->bdj.p_overlays[plane] == NULL);

    bluray_overlay_t *ov = FUNC1(1, sizeof(*ov));
    if (FUNC2(ov == NULL))
        return;

    ov->width = width;
    ov->height = height;
    ov->b_on_vout = false;

    FUNC3(&ov->lock);

    p_sys->bdj.p_overlays[plane] = ov;
}