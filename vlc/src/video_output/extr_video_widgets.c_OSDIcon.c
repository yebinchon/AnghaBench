
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const i_visible_width; float const i_x_offset; float const i_y_offset; scalar_t__ i_visible_height; } ;
typedef TYPE_1__ video_format_t ;
typedef int subpicture_region_t ;


 int COL_BLUE ;
 int COL_TRANSPARENT ;
 int COL_WHITE ;
 int DrawRect (int *,int ,int ,int const,int,int const,int const) ;
 int DrawTriangle (int *,int ,int ,int const,int ,int const,int) ;
 int * OSDRegion (int,int const,int const,int const) ;
 int OSD_MUTE_ICON ;
 int OSD_PAUSE_ICON ;
 int OSD_PLAY_ICON ;
 int STYLE_FILLED ;
 int __MAX (int const,scalar_t__) ;
 int const __MIN (int const,int const) ;

__attribute__((used)) static subpicture_region_t *OSDIcon(int type, const video_format_t *fmt)
{
    const float size_ratio = 0.05;
    const float margin_ratio = 0.07;

    const int size = __MAX(fmt->i_visible_width, fmt->i_visible_height);
    const int width = size * size_ratio;
    const int height = size * size_ratio;
    const int x = fmt->i_x_offset + fmt->i_visible_width - margin_ratio * size - width;
    const int y = fmt->i_y_offset + margin_ratio * size;

    if( width < 1 || height < 1 )
        return ((void*)0);

    subpicture_region_t *r = OSDRegion(__MAX(x, 0),
                                       __MIN(y, (int)fmt->i_visible_height - height),
                                       width, height);
    if (!r)
        return ((void*)0);

    DrawRect(r, STYLE_FILLED, COL_TRANSPARENT, 0, 0, width - 1, height - 1);

    if (type == OSD_PAUSE_ICON) {
        int bar_width = width / 3;
        DrawRect(r, STYLE_FILLED, COL_WHITE, 0, 0, bar_width - 1, height -1);
        DrawRect(r, STYLE_FILLED, COL_WHITE, width - bar_width, 0, width - 1, height - 1);
    } else if (type == OSD_PLAY_ICON) {
        int mid = height >> 1;
        int delta = (width - mid) >> 1;
        int y2 = ((height - 1) >> 1) * 2;
        DrawTriangle(r, STYLE_FILLED, COL_WHITE, delta, 0, width - delta, y2);
    } else {
        int mid = height >> 1;
        int delta = (width - mid) >> 1;
        int y2 = ((height - 1) >> 1) * 2;
        DrawRect(r, STYLE_FILLED, COL_WHITE, delta, mid / 2, width - delta, height - 1 - mid / 2);
        DrawTriangle(r, STYLE_FILLED, COL_WHITE, width - delta, 0, delta, y2);
        if (type == OSD_MUTE_ICON) {
            for(int y1 = 0; y1 <= height -1; y1++)
                DrawRect(r, STYLE_FILLED, COL_BLUE, y1, y1, __MIN(y1 + delta, width - 1), y1);
        }
    }
    return r;
}
