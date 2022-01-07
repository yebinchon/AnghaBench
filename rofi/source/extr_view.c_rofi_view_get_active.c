
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RofiViewState ;


 int * current_active_menu ;

RofiViewState * rofi_view_get_active ( void )
{
    return current_active_menu;
}
