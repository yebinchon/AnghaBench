
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int * event; } ;
typedef TYPE_2__ vout_display_sys_win32_t ;
struct TYPE_16__ {int height; int width; int y; int x; } ;
typedef TYPE_3__ vout_display_place_t ;
struct TYPE_14__ {scalar_t__ vertical; } ;
struct TYPE_17__ {TYPE_1__ align; } ;
typedef TYPE_4__ vout_display_cfg_t ;
typedef int vlc_object_t ;
struct TYPE_19__ {int i_height; int i_width; int i_visible_height; int i_visible_width; int i_y_offset; int i_x_offset; } ;
struct TYPE_18__ {int place_changed; TYPE_3__ place; TYPE_7__ texture_source; TYPE_4__ vdcfg; } ;
typedef TYPE_5__ display_win32_area_t ;


 int CommonChangeThumbnailClip (int *,TYPE_2__*,int) ;
 scalar_t__ VLC_VIDEO_ALIGN_BOTTOM ;
 scalar_t__ VLC_VIDEO_ALIGN_TOP ;
 int msg_Dbg (int *,char*,int ,int ,int ,int ,...) ;
 int vout_display_PlaceEquals (TYPE_3__*,TYPE_3__*) ;
 int vout_display_PlacePicture (TYPE_3__*,TYPE_7__*,TYPE_4__*) ;

void CommonPlacePicture(vlc_object_t *obj, display_win32_area_t *area, vout_display_sys_win32_t *sys)
{

    vout_display_cfg_t place_cfg = area->vdcfg;
    vout_display_place_t before_place = area->place;
    vout_display_PlacePicture(&area->place, &area->texture_source, &place_cfg);


    if (!vout_display_PlaceEquals(&before_place, &area->place))
    {
        area->place_changed |= 1;


        msg_Dbg(obj, "UpdateRects source offset: %i,%i visible: %ix%i decoded: %ix%i",
            area->texture_source.i_x_offset, area->texture_source.i_y_offset,
            area->texture_source.i_visible_width, area->texture_source.i_visible_height,
            area->texture_source.i_width, area->texture_source.i_height);
        msg_Dbg(obj, "UpdateRects image_dst coords: %i,%i %ix%i",
            area->place.x, area->place.y, area->place.width, area->place.height);



        if (sys->event != ((void*)0))
        {
            CommonChangeThumbnailClip(obj, sys, 1);
        }

    }
}
