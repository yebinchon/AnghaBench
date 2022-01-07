
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ i_visible_width; scalar_t__ i_visible_height; scalar_t__ i_x_offset; scalar_t__ i_y_offset; } ;
struct TYPE_18__ {TYPE_5__ source; TYPE_8__* sys; } ;
typedef TYPE_7__ vout_display_t ;
struct TYPE_17__ {int hvideownd; } ;
struct TYPE_14__ {scalar_t__ width; scalar_t__ height; int y; int x; } ;
struct TYPE_12__ {int height; int width; } ;
struct TYPE_13__ {TYPE_1__ display; } ;
struct TYPE_15__ {int place_changed; TYPE_3__ place; TYPE_2__ vdcfg; } ;
struct TYPE_19__ {TYPE_6__ sys; int off_dc; TYPE_4__ area; int off_bitmap; } ;
typedef TYPE_8__ vout_display_sys_t ;
typedef int picture_t ;
struct TYPE_20__ {int bottom; int top; int right; int left; } ;
typedef TYPE_9__ RECT ;
typedef int HDC ;


 int BLACK_BRUSH ;
 int BitBlt (int ,int ,int ,scalar_t__,scalar_t__,int ,scalar_t__,scalar_t__,int ) ;
 int COLORONCOLOR ;
 int FillRect (int ,TYPE_9__*,int ) ;
 int GetDC (int ) ;
 int GetStockObject (int ) ;
 int ReleaseDC (int ,int ) ;
 int SRCCOPY ;
 int SelectObject (int ,int ) ;
 int SetStretchBltMode (int ,int ) ;
 int StretchBlt (int ,int ,int ,scalar_t__,scalar_t__,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int VLC_UNUSED (int *) ;

__attribute__((used)) static void Display(vout_display_t *vd, picture_t *picture)
{
    vout_display_sys_t *sys = vd->sys;
    VLC_UNUSED(picture);

    HDC hdc = GetDC(sys->sys.hvideownd);

    if (sys->area.place_changed)
    {

        RECT display = {
            .left = 0,
            .right = sys->area.vdcfg.display.width,
            .top = 0,
            .bottom = sys->area.vdcfg.display.height,
        };
        FillRect(hdc, &display, GetStockObject(BLACK_BRUSH));
        sys->area.place_changed = 0;
    }

    SelectObject(sys->off_dc, sys->off_bitmap);

    if (sys->area.place.width != vd->source.i_visible_width ||
        sys->area.place.height != vd->source.i_visible_height) {
        SetStretchBltMode(hdc, COLORONCOLOR);

        StretchBlt(hdc, sys->area.place.x, sys->area.place.y,
                   sys->area.place.width, sys->area.place.height,
                   sys->off_dc,
                   vd->source.i_x_offset, vd->source.i_y_offset,
                   vd->source.i_x_offset + vd->source.i_visible_width,
                   vd->source.i_y_offset + vd->source.i_visible_height,
                   SRCCOPY);
    } else {
        BitBlt(hdc, sys->area.place.x, sys->area.place.y,
               sys->area.place.width, sys->area.place.height,
               sys->off_dc,
               vd->source.i_x_offset, vd->source.i_y_offset,
               SRCCOPY);
    }

    ReleaseDC(sys->sys.hvideownd, hdc);
}
