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
struct TYPE_4__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ vout_display_t ;
struct TYPE_5__ {void* bkg_resource; void* bkg_element; scalar_t__ layer; int /*<<< orphan*/  dmx_handle; } ;
typedef  TYPE_2__ vout_display_sys_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  color ;
typedef  int /*<<< orphan*/  VC_RECT_T ;
typedef  int /*<<< orphan*/  DISPMANX_UPDATE_HANDLE_T ;

/* Variables and functions */
 void* DISPMANX_NO_HANDLE ; 
 int /*<<< orphan*/  DISPMANX_PROTECTION_NONE ; 
 int /*<<< orphan*/  VC_IMAGE_RGBA32 ; 
 int /*<<< orphan*/  VC_IMAGE_ROT0 ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(vout_display_t *vd, bool enable)
{
    vout_display_sys_t *sys = vd->sys;
    uint32_t image_ptr, color = 0xFF000000;
    VC_RECT_T dst_rect, src_rect;
    DISPMANX_UPDATE_HANDLE_T update;

    if (enable && !sys->bkg_element) {
        sys->bkg_resource = FUNC3(VC_IMAGE_RGBA32, 1, 1,
                        &image_ptr);
        FUNC2(&dst_rect, 0, 0, 1, 1);
        FUNC5(sys->bkg_resource, VC_IMAGE_RGBA32,
                        sizeof(color), &color, &dst_rect);
        FUNC2(&src_rect, 0, 0, 1 << 16, 1 << 16);
        FUNC2(&dst_rect, 0, 0, 0, 0);
        update = FUNC6(0);
        sys->bkg_element = FUNC0(update, sys->dmx_handle,
                        sys->layer - 1, &dst_rect, sys->bkg_resource, &src_rect,
                        DISPMANX_PROTECTION_NONE, NULL, NULL, VC_IMAGE_ROT0);
        FUNC7(update);
    } else if (!enable && sys->bkg_element) {
        update = FUNC6(0);
        FUNC1(update, sys->bkg_element);
        FUNC4(sys->bkg_resource);
        FUNC7(update);
        sys->bkg_element = DISPMANX_NO_HANDLE;
        sys->bkg_resource = DISPMANX_NO_HANDLE;
    }
}