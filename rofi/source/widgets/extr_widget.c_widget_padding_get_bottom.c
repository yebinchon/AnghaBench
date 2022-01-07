
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int bottom; } ;
struct TYPE_7__ {int bottom; } ;
struct TYPE_6__ {int bottom; } ;
struct TYPE_9__ {TYPE_3__ margin; TYPE_2__ border; TYPE_1__ padding; } ;
typedef TYPE_4__ widget ;


 int ROFI_ORIENTATION_VERTICAL ;
 int distance_get_pixel (int ,int ) ;

int widget_padding_get_bottom ( const widget *wid )
{
    if ( wid == ((void*)0) ) {
        return 0;
    }
    int distance = distance_get_pixel ( wid->padding.bottom, ROFI_ORIENTATION_VERTICAL );
    distance += distance_get_pixel ( wid->border.bottom, ROFI_ORIENTATION_VERTICAL );
    distance += distance_get_pixel ( wid->margin.bottom, ROFI_ORIENTATION_VERTICAL );
    return distance;
}
