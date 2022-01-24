#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_vdp_video_field_t ;
struct TYPE_5__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ vlc_va_t ;
struct TYPE_6__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  type; int /*<<< orphan*/  device; int /*<<< orphan*/  vctx; } ;
typedef  TYPE_2__ vlc_va_sys_t ;
struct video_context_private {int /*<<< orphan*/  vdp; } ;
typedef  int /*<<< orphan*/  VdpVideoSurface ;
typedef  scalar_t__ VdpStatus ;

/* Variables and functions */
 struct video_context_private* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ VDP_STATUS_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static vlc_vdp_video_field_t *FUNC7(vlc_va_t *va)
{
    vlc_va_sys_t *sys = va->sys;
    struct video_context_private *vctx_priv = FUNC0(sys->vctx);
    VdpVideoSurface surface;
    VdpStatus err;

    err = FUNC4(vctx_priv->vdp, sys->device, sys->type,
                                   sys->width, sys->height, &surface);
    if (err != VDP_STATUS_OK)
    {
        FUNC1(va, "%s creation failure: %s", "video surface",
                FUNC3(vctx_priv->vdp, err));
        return NULL;
    }

    vlc_vdp_video_field_t *field = FUNC6(vctx_priv->vdp, surface);
    if (FUNC2(field == NULL))
        FUNC5(vctx_priv->vdp, surface);
    return field;
}