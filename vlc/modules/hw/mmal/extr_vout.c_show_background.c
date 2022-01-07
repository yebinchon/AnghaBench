
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_5__ {void* bkg_resource; void* bkg_element; scalar_t__ layer; int dmx_handle; } ;
typedef TYPE_2__ vout_display_sys_t ;
typedef int uint32_t ;
typedef int color ;
typedef int VC_RECT_T ;
typedef int DISPMANX_UPDATE_HANDLE_T ;


 void* DISPMANX_NO_HANDLE ;
 int DISPMANX_PROTECTION_NONE ;
 int VC_IMAGE_RGBA32 ;
 int VC_IMAGE_ROT0 ;
 void* vc_dispmanx_element_add (int ,int ,scalar_t__,int *,void*,int *,int ,int *,int *,int ) ;
 int vc_dispmanx_element_remove (int ,void*) ;
 int vc_dispmanx_rect_set (int *,int ,int ,int,int) ;
 void* vc_dispmanx_resource_create (int ,int,int,int*) ;
 int vc_dispmanx_resource_delete (void*) ;
 int vc_dispmanx_resource_write_data (void*,int ,int,int*,int *) ;
 int vc_dispmanx_update_start (int ) ;
 int vc_dispmanx_update_submit_sync (int ) ;

__attribute__((used)) static void show_background(vout_display_t *vd, bool enable)
{
    vout_display_sys_t *sys = vd->sys;
    uint32_t image_ptr, color = 0xFF000000;
    VC_RECT_T dst_rect, src_rect;
    DISPMANX_UPDATE_HANDLE_T update;

    if (enable && !sys->bkg_element) {
        sys->bkg_resource = vc_dispmanx_resource_create(VC_IMAGE_RGBA32, 1, 1,
                        &image_ptr);
        vc_dispmanx_rect_set(&dst_rect, 0, 0, 1, 1);
        vc_dispmanx_resource_write_data(sys->bkg_resource, VC_IMAGE_RGBA32,
                        sizeof(color), &color, &dst_rect);
        vc_dispmanx_rect_set(&src_rect, 0, 0, 1 << 16, 1 << 16);
        vc_dispmanx_rect_set(&dst_rect, 0, 0, 0, 0);
        update = vc_dispmanx_update_start(0);
        sys->bkg_element = vc_dispmanx_element_add(update, sys->dmx_handle,
                        sys->layer - 1, &dst_rect, sys->bkg_resource, &src_rect,
                        DISPMANX_PROTECTION_NONE, ((void*)0), ((void*)0), VC_IMAGE_ROT0);
        vc_dispmanx_update_submit_sync(update);
    } else if (!enable && sys->bkg_element) {
        update = vc_dispmanx_update_start(0);
        vc_dispmanx_element_remove(update, sys->bkg_element);
        vc_dispmanx_resource_delete(sys->bkg_resource);
        vc_dispmanx_update_submit_sync(update);
        sys->bkg_element = DISPMANX_NO_HANDLE;
        sys->bkg_resource = DISPMANX_NO_HANDLE;
    }
}
