
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int orientation; int i_x_offset; int i_visible_width; int i_y_offset; int i_visible_height; } ;
struct TYPE_10__ {TYPE_8__ source; int cfg; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_11__ {int const width; int const height; int x; int y; } ;
typedef TYPE_2__ vout_display_place_t ;
struct TYPE_12__ {int i_x; int i_y; int b_double_click; int i_pressed; } ;
typedef TYPE_3__ vlc_mouse_t ;
typedef int int64_t ;
 int memset (TYPE_3__*,int ,int) ;
 int vlc_assert_unreachable () ;
 int vout_display_PlacePicture (TYPE_2__*,TYPE_8__*,int ) ;

void vout_display_TranslateMouseState(vout_display_t *vd, vlc_mouse_t *video,
                                      const vlc_mouse_t *window)
{
    vout_display_place_t place;


    vout_display_PlacePicture(&place, &vd->source, vd->cfg);

    if (place.width <= 0 || place.height <= 0) {
        memset(video, 0, sizeof (*video));
        return;
    }

    const int wx = window->i_x, wy = window->i_y;
    int x, y;

    switch (vd->source.orientation) {
        case 129:
            x = wx;
            y = wy;
            break;
        case 128:
            x = place.width - wx;
            y = wy;
            break;
        case 135:
            x = wx;
            y = place.height - wy;
            break;
        case 134:
            x = place.width - wx;
            y = place.height - wy;
            break;
        case 132:
            x = wy;
            y = wx;
            break;
        case 133:
            x = wy;
            y = place.width - wx;
            break;
        case 130:
            x = place.height - wy;
            y = wx;
            break;
        case 131:
            x = place.height - wy;
            y = place.width - wx;
            break;
        default:
            vlc_assert_unreachable();
    }

    video->i_x = vd->source.i_x_offset
        + (int64_t)(x - place.x) * vd->source.i_visible_width / place.width;
    video->i_y = vd->source.i_y_offset
        + (int64_t)(y - place.y) * vd->source.i_visible_height / place.height;
    video->i_pressed = window->i_pressed;
    video->b_double_click = window->b_double_click;
}
