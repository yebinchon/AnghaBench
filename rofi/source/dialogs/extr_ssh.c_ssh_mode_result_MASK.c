#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* hosts_list; } ;
struct TYPE_4__ {char* hostname; int /*<<< orphan*/  port; } ;
typedef  TYPE_1__ SshEntry ;
typedef  TYPE_2__ SSHModePrivateData ;
typedef  int ModeMode ;
typedef  int /*<<< orphan*/  Mode ;

/* Variables and functions */
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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ModeMode FUNC5 ( Mode *sw, int mretv, char **input, unsigned int selected_line )
{
    ModeMode           retv  = MODE_EXIT;
    SSHModePrivateData *rmpd = (SSHModePrivateData *) FUNC2 ( sw );
    if ( mretv & MENU_NEXT ) {
        retv = NEXT_DIALOG;
    }
    else if ( mretv & MENU_PREVIOUS ) {
        retv = PREVIOUS_DIALOG;
    }
    else if ( mretv & MENU_QUICK_SWITCH ) {
        retv = ( mretv & MENU_LOWER_MASK );
    }
    else if ( ( mretv & MENU_OK ) && rmpd->hosts_list[selected_line].hostname != NULL ) {
        FUNC1 ( &(rmpd->hosts_list[selected_line]) );
    }
    else if ( ( mretv & MENU_CUSTOM_INPUT ) && *input != NULL && *input[0] != '\0' ) {
        SshEntry entry = { .hostname = *input, .port = 0 };
        FUNC1 ( &entry );
    }
    else if ( ( mretv & MENU_ENTRY_DELETE ) && rmpd->hosts_list[selected_line].hostname ) {
        FUNC0 ( rmpd->hosts_list[selected_line].hostname );
        // Stay
        retv = RELOAD_DIALOG;
        FUNC3 ( sw );
        FUNC4 ( sw );
    }
    return retv;
}