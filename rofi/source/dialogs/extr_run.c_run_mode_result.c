
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_7__ {scalar_t__ private_data; } ;
struct TYPE_6__ {char** cmd_list; } ;
typedef TYPE_1__ RunModePrivateData ;
typedef int ModeMode ;
typedef TYPE_2__ Mode ;


 int MENU_CUSTOM_ACTION ;
 int MENU_CUSTOM_INPUT ;
 int MENU_ENTRY_DELETE ;
 int MENU_LOWER_MASK ;
 int MENU_NEXT ;
 int MENU_OK ;
 int MENU_PREVIOUS ;
 int MENU_QUICK_SWITCH ;
 int MODE_EXIT ;
 int NEXT_DIALOG ;
 int PREVIOUS_DIALOG ;
 int RELOAD_DIALOG ;
 int delete_entry (char*) ;
 int exec_cmd (char*,int) ;
 int run_mode_destroy (TYPE_2__*) ;
 int run_mode_init (TYPE_2__*) ;

__attribute__((used)) static ModeMode run_mode_result ( Mode *sw, int mretv, char **input, unsigned int selected_line )
{
    RunModePrivateData *rmpd = (RunModePrivateData *) sw->private_data;
    ModeMode retv = MODE_EXIT;

    gboolean run_in_term = ( ( mretv & MENU_CUSTOM_ACTION ) == MENU_CUSTOM_ACTION );

    if ( mretv & MENU_NEXT ) {
        retv = NEXT_DIALOG;
    }
    else if ( mretv & MENU_PREVIOUS ) {
        retv = PREVIOUS_DIALOG;
    }
    else if ( mretv & MENU_QUICK_SWITCH ) {
        retv = ( mretv & MENU_LOWER_MASK );
    }
    else if ( ( mretv & MENU_OK ) && rmpd->cmd_list[selected_line] != ((void*)0) ) {
        exec_cmd ( rmpd->cmd_list[selected_line], run_in_term );
    }
    else if ( ( mretv & MENU_CUSTOM_INPUT ) && *input != ((void*)0) && *input[0] != '\0' ) {
        exec_cmd ( *input, run_in_term );
    }
    else if ( ( mretv & MENU_ENTRY_DELETE ) && rmpd->cmd_list[selected_line] ) {
        delete_entry ( rmpd->cmd_list[selected_line] );


        retv = RELOAD_DIALOG;
        run_mode_destroy ( sw );
        run_mode_init ( sw );
    }
    return retv;
}
