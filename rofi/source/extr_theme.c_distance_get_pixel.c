
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int distance; } ;
typedef scalar_t__ RofiOrientation ;
typedef TYPE_1__ RofiDistance ;


 scalar_t__ ROFI_ORIENTATION_VERTICAL ;
 scalar_t__ ROFI_PU_CH ;
 scalar_t__ ROFI_PU_EM ;
 scalar_t__ ROFI_PU_PERCENT ;
 int rofi_view_get_current_monitor (int*,int*) ;
 int textbox_get_estimated_ch () ;
 int textbox_get_estimated_char_height () ;

int distance_get_pixel ( RofiDistance d, RofiOrientation ori )
{
    if ( d.type == ROFI_PU_EM ) {
        return d.distance * textbox_get_estimated_char_height ();
    }
    else if ( d.type == ROFI_PU_CH ) {
        return d.distance * textbox_get_estimated_ch ();
    }
    else if ( d.type == ROFI_PU_PERCENT ) {
        if ( ori == ROFI_ORIENTATION_VERTICAL ) {
            int height = 0;
            rofi_view_get_current_monitor ( ((void*)0), &height );
            return ( d.distance * height ) / ( 100.0 );
        }
        else {
            int width = 0;
            rofi_view_get_current_monitor ( &width, ((void*)0) );
            return ( d.distance * width ) / ( 100.0 );
        }
    }
    return d.distance;
}
