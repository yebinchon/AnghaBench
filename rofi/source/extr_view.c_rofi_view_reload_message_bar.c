
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * mesg_box; int mesg_tb; int sw; } ;
typedef TYPE_1__ RofiViewState ;


 int WIDGET (int *) ;
 int g_free (char*) ;
 char* mode_get_message (int ) ;
 int textbox_text (int ,char*) ;
 int widget_disable (int ) ;
 int widget_enable (int ) ;

__attribute__((used)) static void rofi_view_reload_message_bar ( RofiViewState *state )
{
    if ( state->mesg_box == ((void*)0) ) {
        return;
    }
    char *msg = mode_get_message ( state->sw );
    if ( msg ) {
        textbox_text ( state->mesg_tb, msg );
        widget_enable ( WIDGET ( state->mesg_box ) );
        g_free ( msg );
    }
    else {
        widget_disable ( WIDGET ( state->mesg_box ) );
    }
}
