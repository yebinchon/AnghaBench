
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int rofi_int_matcher ;
struct TYPE_13__ {char* filter; int case_sensitive; scalar_t__ auto_select; } ;
struct TYPE_12__ {char* display_name; scalar_t__ private_data; } ;
struct TYPE_11__ {unsigned int cmd_list_length; int only_selected; int multi_select; int do_markup; unsigned int selected_line; int * cancel; int format; TYPE_1__* cmd_list; } ;
struct TYPE_10__ {int entry; } ;
typedef int RofiViewState ;
typedef int MenuFlags ;
typedef TYPE_1__ DmenuScriptEntry ;
typedef TYPE_2__ DmenuModePrivateData ;


 int FALSE ;
 int MENU_INDICATOR ;
 int MENU_NORMAL ;
 int MENU_PASSWORD ;
 int TRUE ;
 TYPE_9__ config ;
 int dmenu_finalize ;
 TYPE_3__ dmenu_mode ;
 int dmenu_mode_free (TYPE_3__*) ;
 scalar_t__ find_arg (char*) ;
 int find_arg_str (char*,char**) ;
 int find_arg_uint (char*,unsigned int*) ;
 int g_free (char*) ;
 char* g_strdup (char*) ;
 int get_dmenu_async (TYPE_2__*,unsigned int) ;
 int get_dmenu_sync (TYPE_2__*) ;
 scalar_t__ helper_token_match (int **,int ) ;
 int ** helper_tokenize (char*,int ) ;
 int helper_tokenize_free (int **) ;
 int mode_init (TYPE_3__*) ;
 int rofi_output_formatted_line (int ,int ,unsigned int,char*) ;
 int * rofi_view_create (TYPE_3__*,char*,int ,int ) ;
 int rofi_view_set_active (int *) ;
 int rofi_view_set_overlay (int *,char*) ;
 int rofi_view_set_selected_line (int *,unsigned int) ;

int dmenu_switcher_dialog ( void )
{
    mode_init ( &dmenu_mode );
    MenuFlags menu_flags = MENU_NORMAL;
    DmenuModePrivateData *pd = (DmenuModePrivateData *) dmenu_mode.private_data;
    int async = TRUE;


    if ( find_arg ( "-sync" ) >= 0 || find_arg ( "-dump" ) >= 0 || find_arg ( "-select" ) >= 0
         || find_arg ( "-no-custom" ) >= 0 || find_arg ( "-only-match" ) >= 0 || config.auto_select ||
         find_arg ( "-selected-row" ) >= 0 ) {
        async = FALSE;
    }

    if ( pd->cancel != ((void*)0) ) {
        if ( async ) {
            unsigned int pre_read = 25;
            find_arg_uint ( "-async-pre-read", &pre_read );
            async = get_dmenu_async ( pd, pre_read );
        }
        else {
            get_dmenu_sync ( pd );
        }
    }
    char *input = ((void*)0);
    unsigned int cmd_list_length = pd->cmd_list_length;
    DmenuScriptEntry *cmd_list = pd->cmd_list;

    pd->only_selected = FALSE;
    pd->multi_select = FALSE;
    if ( find_arg ( "-multi-select" ) >= 0 ) {
        menu_flags = MENU_INDICATOR;
        pd->multi_select = TRUE;
    }
    if ( find_arg ( "-markup-rows" ) >= 0 ) {
        pd->do_markup = TRUE;
    }
    if ( find_arg ( "-only-match" ) >= 0 || find_arg ( "-no-custom" ) >= 0 ) {
        pd->only_selected = TRUE;
        if ( cmd_list_length == 0 ) {
            return TRUE;
        }
    }
    if ( config.auto_select && cmd_list_length == 1 ) {
        rofi_output_formatted_line ( pd->format, cmd_list[0].entry , 0, config.filter );
        return TRUE;
    }
    if ( find_arg ( "-password" ) >= 0 ) {
        menu_flags |= MENU_PASSWORD;
    }

    input = g_strdup ( config.filter );

    char *select = ((void*)0);
    find_arg_str ( "-select", &select );
    if ( select != ((void*)0) ) {
        rofi_int_matcher **tokens = helper_tokenize ( select, config.case_sensitive );
        unsigned int i = 0;
        for ( i = 0; i < cmd_list_length; i++ ) {
            if ( helper_token_match ( tokens, cmd_list[i].entry ) ) {
                pd->selected_line = i;
                break;
            }
        }
        helper_tokenize_free ( tokens );
    }
    if ( find_arg ( "-dump" ) >= 0 ) {
        rofi_int_matcher **tokens = helper_tokenize ( config.filter ? config.filter : "", config.case_sensitive );
        unsigned int i = 0;
        for ( i = 0; i < cmd_list_length; i++ ) {
            if ( tokens == ((void*)0) || helper_token_match ( tokens, cmd_list[i].entry ) ) {
                rofi_output_formatted_line ( pd->format, cmd_list[i].entry , i, config.filter );
            }
        }
        helper_tokenize_free ( tokens );
        dmenu_mode_free ( &dmenu_mode );
        g_free ( input );
        return TRUE;
    }
    find_arg_str ( "-p", &( dmenu_mode.display_name ) );
    RofiViewState *state = rofi_view_create ( &dmenu_mode, input, menu_flags, dmenu_finalize );

    if ( async && ( pd->cancel != ((void*)0) ) ) {
        rofi_view_set_overlay ( state, "Loading.. " );
    }
    rofi_view_set_selected_line ( state, pd->selected_line );
    rofi_view_set_active ( state );

    return FALSE;
}
