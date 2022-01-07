
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int list_view; } ;
typedef TYPE_1__ RofiViewState ;


 int listview_set_selected (int ,int ) ;

__attribute__((used)) inline static void rofi_view_nav_first ( RofiViewState * state )
{

    listview_set_selected ( state->list_view, 0 );
}
