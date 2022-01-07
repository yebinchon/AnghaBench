
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ prompt; int sw; } ;
typedef TYPE_1__ RofiViewState ;


 char* mode_get_display_name (int ) ;
 int textbox_text (scalar_t__,char const*) ;

__attribute__((used)) static void rofi_view_update_prompt ( RofiViewState *state )
{
    if ( state->prompt ) {
        const char *str = mode_get_display_name ( state->sw );
        textbox_text ( state->prompt, str );
    }
}
