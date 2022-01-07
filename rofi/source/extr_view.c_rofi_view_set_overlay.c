
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * overlay; int * list_view; } ;
typedef TYPE_1__ RofiViewState ;


 int WIDGET (int *) ;
 int rofi_view_queue_redraw () ;
 int textbox_text (int *,char const*) ;
 int widget_disable (int ) ;
 int widget_enable (int ) ;

void rofi_view_set_overlay ( RofiViewState *state, const char *text )
{
    if ( state->overlay == ((void*)0) || state->list_view == ((void*)0) ) {
        return;
    }
    if ( text == ((void*)0) ) {
        widget_disable ( WIDGET ( state->overlay ) );
        return;
    }
    widget_enable ( WIDGET ( state->overlay ) );
    textbox_text ( state->overlay, text );

    rofi_view_queue_redraw ( );
}
