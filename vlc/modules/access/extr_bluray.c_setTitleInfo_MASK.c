#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  pl_info_lock; TYPE_2__* p_pl_info; int /*<<< orphan*/ * p_clip_info; } ;
typedef  TYPE_1__ demux_sys_t ;
struct TYPE_7__ {int /*<<< orphan*/ * clips; scalar_t__ clip_count; } ;
typedef  TYPE_2__ BLURAY_TITLE_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(demux_sys_t *p_sys, BLURAY_TITLE_INFO *info)
{
    FUNC1(&p_sys->pl_info_lock);

    if (p_sys->p_pl_info) {
        FUNC0(p_sys->p_pl_info);
    }
    p_sys->p_pl_info   = info;
    p_sys->p_clip_info = NULL;

    if (p_sys->p_pl_info && p_sys->p_pl_info->clip_count) {
        p_sys->p_clip_info = &p_sys->p_pl_info->clips[0];
    }

    FUNC2(&p_sys->pl_info_lock);
}