#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_6__ {TYPE_4__** p_overlays; } ;
struct TYPE_8__ {TYPE_1__ bdj; } ;
typedef  TYPE_3__ demux_sys_t ;
struct TYPE_9__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  status; int /*<<< orphan*/ * p_regions; } ;
typedef  TYPE_4__ bluray_overlay_t ;

/* Variables and functions */
 int /*<<< orphan*/  Outdated ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(demux_t *p_demux, int plane)
{
    demux_sys_t *p_sys = p_demux->p_sys;
    bluray_overlay_t *ov = p_sys->bdj.p_overlays[plane];

    FUNC1(&ov->lock);

    FUNC0(ov->p_regions);
    ov->p_regions = NULL;
    ov->status = Outdated;

    FUNC2(&ov->lock);
}