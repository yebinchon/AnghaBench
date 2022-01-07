
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ text; } ;
typedef TYPE_1__ RofiViewState ;


 int rofi_view_set_selected_line (TYPE_1__*,int ) ;
 int textbox_text (scalar_t__,char*) ;

void rofi_view_clear_input ( RofiViewState *state )
{
    if ( state->text ) {
        textbox_text ( state->text, "" );
        rofi_view_set_selected_line ( state, 0 );
    }
}
