
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int w; int h; } ;
struct TYPE_4__ {TYPE_1__ mon; } ;


 TYPE_2__ CacheState ;

void rofi_view_get_current_monitor ( int *width, int *height )
{
    if ( width ) {
        *width = CacheState.mon.w;
    }
    if ( height ) {
        *height = CacheState.mon.h;
    }
}
