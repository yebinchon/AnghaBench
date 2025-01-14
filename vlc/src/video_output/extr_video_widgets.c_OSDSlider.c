
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const i_visible_width; int i_visible_height; int const i_x_offset; int const i_y_offset; } ;
typedef TYPE_1__ video_format_t ;
typedef int uint8_t ;
typedef int subpicture_region_t ;


 int COL_BLUE ;
 int COL_BLUE_SHADE ;
 int DrawRect (int *,int ,int ,int,int,int,int) ;
 int * OSDRegion (int,int,int,int) ;
 int OSD_HOR_SLIDER ;
 int const SLIDER_MARGIN_BASE ;
 int STYLE_FILLED ;
 void* __MAX (int const,int) ;
 int __MIN (int const,int const) ;

__attribute__((used)) static subpicture_region_t *OSDSlider(int type, int position,
                                      const video_format_t *fmt)
{
    const int size = __MAX(fmt->i_visible_width, fmt->i_visible_height);
    const int margin = size * SLIDER_MARGIN_BASE;
    const int marginbottom = size * SLIDER_MARGIN_BASE * 0.6;
    uint8_t i_padding = __MIN(5, size * 0.25);

    int x, y;
    int width, height;
    if (type == OSD_HOR_SLIDER) {
        width = __MAX(fmt->i_visible_width - 2 * margin, 1);
        height = __MAX(fmt->i_visible_height * 0.05, 1);
        x = __MIN(fmt->i_x_offset + margin, fmt->i_visible_width - width);
        y = __MAX(fmt->i_y_offset + fmt->i_visible_height - marginbottom, 0);
    } else {
        width = __MAX(fmt->i_visible_width * 0.025, 1);
        height = __MAX(fmt->i_visible_height - 2 * margin, 1);
        x = __MAX(fmt->i_x_offset + fmt->i_visible_width - margin, 0);
        y = __MIN(fmt->i_y_offset + margin, fmt->i_visible_height - height);
    }

    if( (width < 1 + 2 * i_padding) || (height < 1 + 2 * i_padding) )
        return ((void*)0);

    subpicture_region_t *r = OSDRegion(x, y, width, height);
    if( !r)
        return ((void*)0);

    int pos_x = i_padding;
    int pos_y, pos_xend;
    int pos_yend = height - 1 - i_padding;

    if (type == OSD_HOR_SLIDER ) {
        pos_y = i_padding;
        pos_xend = pos_x + (width - 2 * i_padding) * position / 100;
    } else {
        pos_y = height - (height - 2 * i_padding) * position / 100;
        pos_xend = width - 1 - i_padding;
    }


    DrawRect(r, STYLE_FILLED, COL_BLUE_SHADE, 0, 0, width - 1, height - 1);
    DrawRect(r, STYLE_FILLED, COL_BLUE, pos_x, pos_y, pos_xend, pos_yend);

    return r;
}
