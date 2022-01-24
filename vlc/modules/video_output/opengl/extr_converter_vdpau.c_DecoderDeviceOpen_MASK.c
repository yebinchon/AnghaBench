#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  x11; } ;
struct TYPE_8__ {TYPE_1__ display; } ;
typedef  TYPE_2__ vout_window_t ;
struct TYPE_9__ {int /*<<< orphan*/ * opaque; int /*<<< orphan*/  type; int /*<<< orphan*/ * ops; } ;
typedef  TYPE_3__ vlc_decoder_device ;
typedef  int /*<<< orphan*/  vdp_t ;
typedef  int /*<<< orphan*/  VdpDevice ;

/* Variables and functions */
 scalar_t__ VDP_STATUS_OK ; 
 int /*<<< orphan*/  VLC_DECODER_DEVICE_VDPAU ; 
 int VLC_EGENERIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  dev_ops ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(vlc_decoder_device *device, vout_window_t *window)
{
    if (!window || !FUNC2(FUNC0(window)))
        return VLC_EGENERIC;

    vdp_t *vdp;
    VdpDevice vdpdevice;

    if (FUNC1(window->display.x11, -1, &vdp, &vdpdevice) != VDP_STATUS_OK)
        return VLC_EGENERIC;

    device->ops = &dev_ops;
    device->type = VLC_DECODER_DEVICE_VDPAU;
    device->opaque = vdp;
    return VLC_SUCCESS;
}