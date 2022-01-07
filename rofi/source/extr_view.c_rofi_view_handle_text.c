
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int refilter; int text; } ;
typedef TYPE_1__ RofiViewState ;


 int TRUE ;
 int strlen (char*) ;
 scalar_t__ textbox_append_text (int ,char*,int ) ;

void rofi_view_handle_text ( RofiViewState *state, char *text )
{
    if ( textbox_append_text ( state->text, text, strlen ( text ) ) ) {
        state->refilter = TRUE;
    }
}
