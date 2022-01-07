
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ num_modi; struct TYPE_4__* modi; struct TYPE_4__* distance; struct TYPE_4__* line_map; int main_window; int * tokens; } ;
typedef TYPE_1__ RofiViewState ;


 int WIDGET (int ) ;
 int g_free (TYPE_1__*) ;
 int helper_tokenize_free (int *) ;
 int widget_free (int ) ;

void rofi_view_free ( RofiViewState *state )
{
    if ( state->tokens ) {
        helper_tokenize_free ( state->tokens );
        state->tokens = ((void*)0);
    }


    widget_free ( WIDGET ( state->main_window ) );

    g_free ( state->line_map );
    g_free ( state->distance );


    g_free ( state->modi );
    state->num_modi = 0;
    g_free ( state );
}
