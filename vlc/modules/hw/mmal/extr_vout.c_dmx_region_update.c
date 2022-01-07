
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dmx_region_t {TYPE_2__* picture; int resource; int element; int bmp_rect; } ;
struct TYPE_5__ {TYPE_1__* p; } ;
typedef TYPE_2__ picture_t ;
struct TYPE_4__ {int p_pixels; int i_pitch; } ;
typedef int DISPMANX_UPDATE_HANDLE_T ;


 int VC_IMAGE_RGBA32 ;
 int vc_dispmanx_element_change_source (int ,int ,int ) ;
 int vc_dispmanx_resource_write_data (int ,int ,int ,int ,int *) ;

__attribute__((used)) static void dmx_region_update(struct dmx_region_t *dmx_region,
                DISPMANX_UPDATE_HANDLE_T update, picture_t *picture)
{
    vc_dispmanx_resource_write_data(dmx_region->resource, VC_IMAGE_RGBA32,
                    picture->p[0].i_pitch, picture->p[0].p_pixels, &dmx_region->bmp_rect);
    vc_dispmanx_element_change_source(update, dmx_region->element, dmx_region->resource);
    dmx_region->picture = picture;
}
