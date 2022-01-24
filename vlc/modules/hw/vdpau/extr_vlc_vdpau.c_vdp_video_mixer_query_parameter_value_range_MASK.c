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
struct TYPE_4__ {int /*<<< orphan*/  (* video_mixer_query_parameter_value_range ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void*) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef  TYPE_2__ vdp_t ;
typedef  int /*<<< orphan*/  VdpVideoMixerParameter ;
typedef  int /*<<< orphan*/  VdpStatus ;
typedef  int /*<<< orphan*/  VdpDevice ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIDEO_MIXER_QUERY_PARAMETER_VALUE_RANGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void*) ; 

VdpStatus FUNC2(const vdp_t *vdp,
    VdpDevice device, VdpVideoMixerParameter parameter, void *min, void *max)
{
    FUNC0(VIDEO_MIXER_QUERY_PARAMETER_VALUE_RANGE);
    return vdp->vt.video_mixer_query_parameter_value_range(device, parameter,
        min, max);
}