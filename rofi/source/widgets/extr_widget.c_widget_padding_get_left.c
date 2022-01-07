
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int left; } ;
struct TYPE_7__ {int left; } ;
struct TYPE_6__ {int left; } ;
struct TYPE_9__ {TYPE_3__ margin; TYPE_2__ border; TYPE_1__ padding; } ;
typedef TYPE_4__ widget ;


 int ROFI_ORIENTATION_HORIZONTAL ;
 int distance_get_pixel (int ,int ) ;

int widget_padding_get_left ( const widget *wid )
{
    if ( wid == ((void*)0) ) {
        return 0;
    }
    int distance = distance_get_pixel ( wid->padding.left, ROFI_ORIENTATION_HORIZONTAL );
    distance += distance_get_pixel ( wid->border.left, ROFI_ORIENTATION_HORIZONTAL );
    distance += distance_get_pixel ( wid->margin.left, ROFI_ORIENTATION_HORIZONTAL );
    return distance;
}
