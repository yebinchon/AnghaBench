#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  (* presentation_queue_get_background_color ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef  TYPE_2__ vdp_t ;
typedef  int /*<<< orphan*/  VdpStatus ;
typedef  int /*<<< orphan*/  VdpPresentationQueue ;
typedef  int /*<<< orphan*/  VdpColor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRESENTATION_QUEUE_GET_BACKGROUND_COLOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

VdpStatus FUNC2(const vdp_t *vdp,
    VdpPresentationQueue queue, VdpColor *color)
{
    FUNC0(PRESENTATION_QUEUE_GET_BACKGROUND_COLOR);
    return vdp->vt.presentation_queue_get_background_color(queue, color);
}