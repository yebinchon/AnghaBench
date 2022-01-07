
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void rofi_view_get_current_monitor ( int *width, int *height )
{
    if ( width ) {
        *width = 1920;
    }
    if ( height ) {
        *height = 1080;
    }
}
