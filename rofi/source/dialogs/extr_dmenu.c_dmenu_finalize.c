
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {scalar_t__ private_data; } ;
struct TYPE_6__ {unsigned int cmd_list_length; size_t selected_line; scalar_t__ selected_count; int * selected_list; scalar_t__ multi_select; scalar_t__ only_selected; TYPE_1__* cmd_list; } ;
struct TYPE_5__ {int * entry; } ;
typedef int RofiViewState ;
typedef int MenuReturn ;
typedef TYPE_1__ DmenuScriptEntry ;
typedef TYPE_2__ DmenuModePrivateData ;


 int FALSE ;
 int MENU_CANCEL ;
 int MENU_CUSTOM_ACTION ;
 int MENU_CUSTOM_INPUT ;
 int MENU_LOWER_MASK ;
 int MENU_OK ;
 int MENU_QUICK_SWITCH ;
 void* MIN (unsigned int,unsigned int) ;
 int TRUE ;
 size_t UINT32_MAX ;
 scalar_t__ bitget (int *,size_t) ;
 int bittoggle (int *,size_t) ;
 int dmenu_finish (int *,int) ;
 int dmenu_print_results (TYPE_2__*,char*) ;
 scalar_t__ find_arg (char*) ;
 int g_free (char*) ;
 void* g_malloc0 (int) ;
 char* g_strdup (int ) ;
 char* g_strdup_printf (char*,scalar_t__,int) ;
 TYPE_3__* rofi_view_get_mode (int *) ;
 unsigned int rofi_view_get_next_position (int *) ;
 int rofi_view_get_return_value (int *) ;
 size_t rofi_view_get_selected_line (int *) ;
 int rofi_view_get_user_input (int *) ;
 int rofi_view_restart (int *) ;
 int rofi_view_set_overlay (int *,char*) ;
 int rofi_view_set_selected_line (int *,unsigned int) ;

__attribute__((used)) static void dmenu_finalize ( RofiViewState *state )
{
    int retv = FALSE;
    DmenuModePrivateData *pd = (DmenuModePrivateData *) rofi_view_get_mode ( state )->private_data;
    unsigned int cmd_list_length = pd->cmd_list_length;
    DmenuScriptEntry *cmd_list = pd->cmd_list;

    char *input = g_strdup ( rofi_view_get_user_input ( state ) );
    pd->selected_line = rofi_view_get_selected_line ( state );;
    MenuReturn mretv = rofi_view_get_return_value ( state );
    unsigned int next_pos = rofi_view_get_next_position ( state );
    int restart = 0;

    if ( pd->only_selected ) {



        restart = 1;

        if ( ( mretv & MENU_CANCEL ) == MENU_CANCEL ) {

            restart = ( find_arg ( "-only-match" ) >= 0 );
        }
        else if ( pd->selected_line != UINT32_MAX ) {
            if ( ( mretv & MENU_CUSTOM_ACTION ) && pd->multi_select ) {
                restart = TRUE;
                if ( pd->selected_list == ((void*)0) ) {
                    pd->selected_list = g_malloc0 ( sizeof ( uint32_t ) * ( pd->cmd_list_length / 32 + 1 ) );
                }
                pd->selected_count += ( bitget ( pd->selected_list, pd->selected_line ) ? ( -1 ) : ( 1 ) );
                bittoggle ( pd->selected_list, pd->selected_line );

                pd->selected_line = MIN ( next_pos, cmd_list_length - 1 );
                if ( pd->selected_count > 0 ) {
                    char *str = g_strdup_printf ( "%u/%u", pd->selected_count, pd->cmd_list_length );
                    rofi_view_set_overlay ( state, str );
                    g_free ( str );
                }
                else {
                    rofi_view_set_overlay ( state, ((void*)0) );
                }
            }
            else if ( ( mretv & ( MENU_OK | MENU_QUICK_SWITCH ) ) && cmd_list[pd->selected_line].entry != ((void*)0) ) {
                dmenu_print_results ( pd, input );
                retv = TRUE;
                if ( ( mretv & MENU_QUICK_SWITCH ) ) {
                    retv = 10 + ( mretv & MENU_LOWER_MASK );
                }
                g_free ( input );
                dmenu_finish ( state, retv );
                return;
            }
            else {
                pd->selected_line = next_pos - 1;
            }
        }

        rofi_view_restart ( state );
        rofi_view_set_selected_line ( state, pd->selected_line );
        if ( !restart ) {
            dmenu_finish ( state, retv );
        }
        return;
    }

    restart = FALSE;

    if ( ( mretv & MENU_OK ) && pd->selected_line != UINT32_MAX && cmd_list[pd->selected_line].entry != ((void*)0) ) {
        if ( ( mretv & MENU_CUSTOM_ACTION ) && pd->multi_select ) {
            restart = TRUE;
            if ( pd->selected_list == ((void*)0) ) {
                pd->selected_list = g_malloc0 ( sizeof ( uint32_t ) * ( pd->cmd_list_length / 32 + 1 ) );
            }
            pd->selected_count += ( bitget ( pd->selected_list, pd->selected_line ) ? ( -1 ) : ( 1 ) );
            bittoggle ( pd->selected_list, pd->selected_line );

            pd->selected_line = MIN ( next_pos, cmd_list_length - 1 );
            if ( pd->selected_count > 0 ) {
                char *str = g_strdup_printf ( "%u/%u", pd->selected_count, pd->cmd_list_length );
                rofi_view_set_overlay ( state, str );
                g_free ( str );
            }
            else {
                rofi_view_set_overlay ( state, ((void*)0) );
            }
        }
        else {
            dmenu_print_results ( pd, input );
        }
        retv = TRUE;
    }

    else if ( ( mretv & ( MENU_CUSTOM_INPUT ) ) ) {
        dmenu_print_results ( pd, input );

        retv = TRUE;
    }

    else if ( ( mretv & MENU_QUICK_SWITCH ) ) {
        dmenu_print_results ( pd, input );

        restart = FALSE;
        retv = 10 + ( mretv & MENU_LOWER_MASK );
    }
    g_free ( input );
    if ( restart ) {
        rofi_view_restart ( state );
        rofi_view_set_selected_line ( state, pd->selected_line );
    }
    else {
        dmenu_finish ( state, retv );
    }
}
