
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int * sw; } ;
typedef TYPE_1__ RofiViewState ;
typedef int ModeMode ;
typedef int Mode ;
typedef int MenuReturn ;


 int MODE_EXIT ;
 int NEXT_DIALOG ;
 int PREVIOUS_DIALOG ;
 int RELOAD_DIALOG ;
 int RESET_DIALOG ;
 int curr_switcher ;
 int g_free (char*) ;
 char* g_strdup (int ) ;
 int mode_result (int *,int ,char**,unsigned int) ;
 int * modi ;
 int num_modi ;
 int rofi_view_clear_input (TYPE_1__*) ;
 int rofi_view_free (TYPE_1__*) ;
 int rofi_view_get_return_value (TYPE_1__*) ;
 unsigned int rofi_view_get_selected_line (TYPE_1__*) ;
 int rofi_view_get_user_input (TYPE_1__*) ;
 int rofi_view_set_active (TYPE_1__*) ;
 int rofi_view_switch_mode (TYPE_1__*,int ) ;

void process_result ( RofiViewState *state )
{
    Mode *sw = state->sw;
    rofi_view_set_active ( ((void*)0) );
    if ( sw != ((void*)0) ) {
        unsigned int selected_line = rofi_view_get_selected_line ( state );;
        MenuReturn mretv = rofi_view_get_return_value ( state );
        char *input = g_strdup ( rofi_view_get_user_input ( state ) );
        ModeMode retv = mode_result ( sw, mretv, &input, selected_line );
        g_free ( input );

        ModeMode mode = curr_switcher;

        if ( retv == NEXT_DIALOG ) {
            mode = ( mode + 1 ) % num_modi;
        }
        else if ( retv == PREVIOUS_DIALOG ) {
            if ( mode == 0 ) {
                mode = num_modi - 1;
            }
            else {
                mode = ( mode - 1 ) % num_modi;
            }
        }
        else if ( retv == RELOAD_DIALOG ) {

        }
        else if ( retv == RESET_DIALOG ) {
            rofi_view_clear_input ( state );
        }
        else if ( retv < MODE_EXIT ) {
            mode = ( retv ) % num_modi;
        }
        else {
            mode = retv;
        }
        if ( mode != MODE_EXIT ) {



            rofi_view_switch_mode ( state, modi[mode] );
            rofi_view_set_active ( state );
            curr_switcher = mode;
            return;
        }
    }
    rofi_view_free ( state );
}
