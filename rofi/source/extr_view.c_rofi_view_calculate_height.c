
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int widget ;
struct TYPE_5__ {int h; } ;
struct TYPE_7__ {scalar_t__ fullscreen; TYPE_1__ mon; } ;
struct TYPE_6__ {int main_window; } ;
typedef TYPE_2__ RofiViewState ;
typedef int RofiDistance ;


 TYPE_4__ CacheState ;
 int ROFI_ORIENTATION_VERTICAL ;
 scalar_t__ TRUE ;
 int * WIDGET (int ) ;
 unsigned int distance_get_pixel (int ,int ) ;
 int rofi_theme_get_distance (int *,char*,int ) ;
 int widget_get_desired_height (int *) ;

__attribute__((used)) static int rofi_view_calculate_height ( RofiViewState *state )
{
    if ( CacheState.fullscreen == TRUE ) {
        return CacheState.mon.h;
    }

    RofiDistance h = rofi_theme_get_distance ( WIDGET ( state->main_window ), "height", 0 );
    unsigned int height = distance_get_pixel ( h, ROFI_ORIENTATION_VERTICAL );

    if ( height > 0 ) {
        return height;
    }

    widget *main_window = WIDGET ( state->main_window );
    return widget_get_desired_height ( main_window );
}
