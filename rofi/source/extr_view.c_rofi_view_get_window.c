
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xcb_window_t ;
struct TYPE_2__ {int main_window; } ;


 TYPE_1__ CacheState ;

xcb_window_t rofi_view_get_window ( void )
{
    return CacheState.main_window;
}
