
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int h; int w; scalar_t__ x; scalar_t__ y; } ;
struct TYPE_9__ {TYPE_1__ mon; scalar_t__ fullscreen; } ;
struct TYPE_8__ {size_t location; int y_offset; int x_offset; } ;
struct TYPE_7__ {int height; int width; scalar_t__ y; scalar_t__ x; int main_window; int list_view; } ;
typedef TYPE_2__ RofiViewState ;
typedef int RofiDistance ;


 TYPE_5__ CacheState ;
 int ROFI_ORIENTATION_HORIZONTAL ;
 int ROFI_ORIENTATION_VERTICAL ;
 int WIDGET (int ) ;
 TYPE_4__ config ;
 scalar_t__ distance_get_pixel (int ,int ) ;
 int listview_get_fixed_num_lines (int ) ;
 int* loc_transtable ;
 int rofi_theme_get_distance (int ,char*,int ) ;
 int rofi_theme_get_position (int ,char*,int) ;

__attribute__((used)) static void rofi_view_calculate_window_position ( RofiViewState *state )
{
    int location = rofi_theme_get_position ( WIDGET ( state->main_window ), "location", loc_transtable[config.location] );
    int anchor = location;
    if ( !listview_get_fixed_num_lines ( state->list_view ) ) {
        anchor = location;
        if ( location == 136 ) {
            anchor = 134;
        }
        else if ( location == 135 ) {
            anchor = 133;
        }
        else if ( location == 128 ) {
            anchor = 132;
        }
    }
    anchor = rofi_theme_get_position ( WIDGET ( state->main_window ), "anchor", anchor );

    if ( CacheState.fullscreen ) {
        state->x = CacheState.mon.x;
        state->y = CacheState.mon.y;
        return;
    }
    state->y = CacheState.mon.y + ( CacheState.mon.h ) / 2;
    state->x = CacheState.mon.x + ( CacheState.mon.w ) / 2;

    switch ( location )
    {
    case 132:
        state->x = CacheState.mon.x;

    case 134:
        state->y = CacheState.mon.y;
        break;
    case 133:
        state->y = CacheState.mon.y;

    case 135:
        state->x = CacheState.mon.x + CacheState.mon.w;
        break;
    case 130:
        state->x = CacheState.mon.x + CacheState.mon.w;

    case 131:
        state->y = CacheState.mon.y + CacheState.mon.h;
        break;
    case 129:
        state->y = CacheState.mon.y + CacheState.mon.h;

    case 128:
        state->x = CacheState.mon.x;
        break;
    case 136:
        ;

    default:
        break;
    }
    switch ( anchor )
    {
    case 129:
        state->y -= state->height;
        break;
    case 131:
        state->x -= state->width / 2;
        state->y -= state->height;
        break;
    case 130:
        state->x -= state->width;
        state->y -= state->height;
        break;
    case 133:
        state->x -= state->width;
        break;
    case 132:
        break;
    case 134:
        state->x -= state->width / 2;
        break;
    case 135:
        state->x -= state->width;
        state->y -= state->height / 2;
        break;
    case 128:
        state->y -= state->height / 2;
        break;
    case 136:
        state->y -= state->height / 2;
        state->x -= state->width / 2;
        break;
    default:
        break;
    }

    RofiDistance x = rofi_theme_get_distance ( WIDGET ( state->main_window ), "x-offset", config.x_offset );
    RofiDistance y = rofi_theme_get_distance ( WIDGET ( state->main_window ), "y-offset", config.y_offset );
    state->x += distance_get_pixel ( x, ROFI_ORIENTATION_HORIZONTAL );
    state->y += distance_get_pixel ( y, ROFI_ORIENTATION_VERTICAL );
}
