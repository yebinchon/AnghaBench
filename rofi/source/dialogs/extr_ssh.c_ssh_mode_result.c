
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* hosts_list; } ;
struct TYPE_4__ {char* hostname; int port; } ;
typedef TYPE_1__ SshEntry ;
typedef TYPE_2__ SSHModePrivateData ;
typedef int ModeMode ;
typedef int Mode ;


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
 int delete_ssh (char*) ;
 int exec_ssh (TYPE_1__*) ;
 scalar_t__ mode_get_private_data (int *) ;
 int ssh_mode_destroy (int *) ;
 int ssh_mode_init (int *) ;

__attribute__((used)) static ModeMode ssh_mode_result ( Mode *sw, int mretv, char **input, unsigned int selected_line )
{
    ModeMode retv = MODE_EXIT;
    SSHModePrivateData *rmpd = (SSHModePrivateData *) mode_get_private_data ( sw );
    if ( mretv & MENU_NEXT ) {
        retv = NEXT_DIALOG;
    }
    else if ( mretv & MENU_PREVIOUS ) {
        retv = PREVIOUS_DIALOG;
    }
    else if ( mretv & MENU_QUICK_SWITCH ) {
        retv = ( mretv & MENU_LOWER_MASK );
    }
    else if ( ( mretv & MENU_OK ) && rmpd->hosts_list[selected_line].hostname != ((void*)0) ) {
        exec_ssh ( &(rmpd->hosts_list[selected_line]) );
    }
    else if ( ( mretv & MENU_CUSTOM_INPUT ) && *input != ((void*)0) && *input[0] != '\0' ) {
        SshEntry entry = { .hostname = *input, .port = 0 };
        exec_ssh ( &entry );
    }
    else if ( ( mretv & MENU_ENTRY_DELETE ) && rmpd->hosts_list[selected_line].hostname ) {
        delete_ssh ( rmpd->hosts_list[selected_line].hostname );

        retv = RELOAD_DIALOG;
        ssh_mode_destroy ( sw );
        ssh_mode_init ( sw );
    }
    return retv;
}
