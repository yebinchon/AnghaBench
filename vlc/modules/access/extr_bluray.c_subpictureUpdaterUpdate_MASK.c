#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const* vlc_tick_t ;
typedef  int /*<<< orphan*/  video_format_t ;
struct TYPE_9__ {int /*<<< orphan*/ * p_sys; } ;
struct TYPE_10__ {TYPE_3__* p_region; TYPE_1__ updater; } ;
typedef  TYPE_2__ subpicture_t ;
struct TYPE_11__ {struct TYPE_11__* p_next; } ;
typedef  TYPE_3__ subpicture_region_t ;
typedef  int /*<<< orphan*/  bluray_spu_updater_sys_t ;
struct TYPE_12__ {int /*<<< orphan*/  status; TYPE_3__* p_regions; } ;
typedef  TYPE_4__ bluray_overlay_t ;

/* Variables and functions */
 int /*<<< orphan*/  Displayed ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 TYPE_3__* FUNC1 (TYPE_3__*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(subpicture_t *p_subpic,
                                    const video_format_t *p_fmt_src,
                                    const video_format_t *p_fmt_dst,
                                    vlc_tick_t i_ts)
{
    FUNC0(p_fmt_src);
    FUNC0(p_fmt_dst);
    FUNC0(i_ts);
    bluray_spu_updater_sys_t *p_upd_sys = p_subpic->updater.p_sys;
    bluray_overlay_t         *p_overlay = FUNC2(p_upd_sys);

    if (!p_overlay) {
        return;
    }

    /*
     * When this function is called, all p_subpic regions are gone.
     * We need to duplicate our regions (stored internaly) to this subpic.
     */
    subpicture_region_t *p_src = p_overlay->p_regions;
    if (!p_src) {
        FUNC3(p_upd_sys);
        return;
    }

    subpicture_region_t **p_dst = &p_subpic->p_region;
    while (p_src != NULL) {
        *p_dst = FUNC1(p_src);
        if (*p_dst == NULL)
            break;
        p_dst = &(*p_dst)->p_next;
        p_src = p_src->p_next;
    }
    if (*p_dst != NULL)
        (*p_dst)->p_next = NULL;
    p_overlay->status = Displayed;

    FUNC3(p_upd_sys);
}