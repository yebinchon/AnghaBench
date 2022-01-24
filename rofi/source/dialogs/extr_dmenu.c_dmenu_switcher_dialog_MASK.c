#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rofi_int_matcher ;
struct TYPE_13__ {char* filter; int /*<<< orphan*/  case_sensitive; scalar_t__ auto_select; } ;
struct TYPE_12__ {char* display_name; scalar_t__ private_data; } ;
struct TYPE_11__ {unsigned int cmd_list_length; int only_selected; int multi_select; int do_markup; unsigned int selected_line; int /*<<< orphan*/ * cancel; int /*<<< orphan*/  format; TYPE_1__* cmd_list; } ;
struct TYPE_10__ {int /*<<< orphan*/  entry; } ;
typedef  int /*<<< orphan*/  RofiViewState ;
typedef  int /*<<< orphan*/  MenuFlags ;
typedef  TYPE_1__ DmenuScriptEntry ;
typedef  TYPE_2__ DmenuModePrivateData ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  MENU_INDICATOR ; 
 int /*<<< orphan*/  MENU_NORMAL ; 
 int /*<<< orphan*/  MENU_PASSWORD ; 
 int TRUE ; 
 TYPE_9__ config ; 
 int /*<<< orphan*/  dmenu_finalize ; 
 TYPE_3__ dmenu_mode ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 int FUNC6 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,char*) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned int) ; 

int FUNC17 ( void )
{
    FUNC11 ( &dmenu_mode );
    MenuFlags            menu_flags = MENU_NORMAL;
    DmenuModePrivateData *pd        = (DmenuModePrivateData *) dmenu_mode.private_data;
    int                  async      = TRUE;

    // For now these only work in sync mode.
    if ( FUNC1 ( "-sync" ) >= 0 || FUNC1 ( "-dump" ) >= 0 || FUNC1 ( "-select" ) >= 0
         || FUNC1 ( "-no-custom" ) >= 0 || FUNC1 ( "-only-match" ) >= 0 || config.auto_select ||
         FUNC1 ( "-selected-row" ) >= 0 ) {
        async = FALSE;
    }
    // Check if the subsystem is setup for reading, otherwise do not read.
    if ( pd->cancel != NULL ) {
        if ( async ) {
            unsigned int pre_read = 25;
            FUNC3 ( "-async-pre-read", &pre_read );
            async = FUNC6 ( pd, pre_read );
        }
        else {
            FUNC7 ( pd );
        }
    }
    char         *input          = NULL;
    unsigned int cmd_list_length = pd->cmd_list_length;
    DmenuScriptEntry *cmd_list     = pd->cmd_list;

    pd->only_selected = FALSE;
    pd->multi_select  = FALSE;
    if ( FUNC1 ( "-multi-select" ) >= 0 ) {
        menu_flags       = MENU_INDICATOR;
        pd->multi_select = TRUE;
    }
    if ( FUNC1 ( "-markup-rows" ) >= 0 ) {
        pd->do_markup = TRUE;
    }
    if ( FUNC1 ( "-only-match" ) >= 0 || FUNC1 ( "-no-custom" ) >= 0 ) {
        pd->only_selected = TRUE;
        if ( cmd_list_length == 0 ) {
            return TRUE;
        }
    }
    if ( config.auto_select && cmd_list_length == 1 ) {
        FUNC12 ( pd->format, cmd_list[0].entry , 0, config.filter );
        return TRUE;
    }
    if ( FUNC1 ( "-password" ) >= 0 ) {
        menu_flags |= MENU_PASSWORD;
    }
    /* copy filter string */
    input = FUNC5 ( config.filter );

    char *select = NULL;
    FUNC2 ( "-select", &select );
    if ( select != NULL ) {
        rofi_int_matcher **tokens = FUNC9 ( select, config.case_sensitive );
        unsigned int     i        = 0;
        for ( i = 0; i < cmd_list_length; i++ ) {
            if ( FUNC8 ( tokens, cmd_list[i].entry ) ) {
                pd->selected_line = i;
                break;
            }
        }
        FUNC10 ( tokens );
    }
    if ( FUNC1 ( "-dump" ) >= 0 ) {
        rofi_int_matcher **tokens = FUNC9 ( config.filter ? config.filter : "", config.case_sensitive );
        unsigned int     i        = 0;
        for ( i = 0; i < cmd_list_length; i++ ) {
            if ( tokens == NULL || FUNC8 ( tokens, cmd_list[i].entry ) ) {
                FUNC12 ( pd->format, cmd_list[i].entry , i, config.filter );
            }
        }
        FUNC10 ( tokens );
        FUNC0 ( &dmenu_mode );
        FUNC4 ( input );
        return TRUE;
    }
    FUNC2 (  "-p", &( dmenu_mode.display_name ) );
    RofiViewState *state = FUNC13 ( &dmenu_mode, input, menu_flags, dmenu_finalize );
    // @TODO we should do this better.
    if ( async && ( pd->cancel != NULL ) ) {
        FUNC15 ( state, "Loading.. " );
    }
    FUNC16 ( state, pd->selected_line );
    FUNC14 ( state );

    return FALSE;
}