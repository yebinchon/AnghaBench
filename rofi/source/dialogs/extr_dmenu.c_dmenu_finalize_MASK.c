#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {scalar_t__ private_data; } ;
struct TYPE_6__ {unsigned int cmd_list_length; size_t selected_line; scalar_t__ selected_count; int /*<<< orphan*/ * selected_list; scalar_t__ multi_select; scalar_t__ only_selected; TYPE_1__* cmd_list; } ;
struct TYPE_5__ {int /*<<< orphan*/ * entry; } ;
typedef  int /*<<< orphan*/  RofiViewState ;
typedef  int MenuReturn ;
typedef  TYPE_1__ DmenuScriptEntry ;
typedef  TYPE_2__ DmenuModePrivateData ;

/* Variables and functions */
 int FALSE ; 
 int MENU_CANCEL ; 
 int MENU_CUSTOM_ACTION ; 
 int MENU_CUSTOM_INPUT ; 
 int MENU_LOWER_MASK ; 
 int MENU_OK ; 
 int MENU_QUICK_SWITCH ; 
 void* FUNC0 (unsigned int,unsigned int) ; 
 int TRUE ; 
 size_t UINT32_MAX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 void* FUNC7 (int) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (char*,scalar_t__,int) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 size_t FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC18 ( RofiViewState *state )
{
    int                  retv            = FALSE;
    DmenuModePrivateData *pd             = (DmenuModePrivateData *) FUNC10 ( state )->private_data;
    unsigned int         cmd_list_length = pd->cmd_list_length;
    DmenuScriptEntry       *cmd_list      = pd->cmd_list;

    char                 *input = FUNC8 ( FUNC14 ( state ) );
    pd->selected_line = FUNC13 ( state );;
    MenuReturn           mretv    = FUNC12 ( state );
    unsigned int         next_pos = FUNC11 ( state );
    int                  restart  = 0;
    // Special behavior.
    if ( pd->only_selected ) {
        /**
         * Select item mode.
         */
        restart = 1;
        // Skip if no valid item is selected.
        if ( ( mretv & MENU_CANCEL ) == MENU_CANCEL ) {
            // In no custom mode we allow canceling.
            restart = ( FUNC5 ( "-only-match" ) >= 0 );
        }
        else if ( pd->selected_line != UINT32_MAX ) {
            if ( ( mretv & MENU_CUSTOM_ACTION ) && pd->multi_select ) {
                restart = TRUE;
                if ( pd->selected_list == NULL ) {
                    pd->selected_list = FUNC7 ( sizeof ( uint32_t ) * ( pd->cmd_list_length / 32 + 1 ) );
                }
                pd->selected_count += ( FUNC1 ( pd->selected_list, pd->selected_line ) ? ( -1 ) : ( 1 ) );
                FUNC2 ( pd->selected_list, pd->selected_line );
                // Move to next line.
                pd->selected_line = FUNC0 ( next_pos, cmd_list_length - 1 );
                if ( pd->selected_count > 0 ) {
                    char *str = FUNC9 ( "%u/%u", pd->selected_count, pd->cmd_list_length );
                    FUNC16 ( state, str );
                    FUNC6 ( str );
                }
                else {
                    FUNC16 ( state, NULL );
                }
            }
            else if ( ( mretv & ( MENU_OK | MENU_QUICK_SWITCH ) ) && cmd_list[pd->selected_line].entry != NULL ) {
                FUNC4 ( pd, input );
                retv = TRUE;
                if ( ( mretv & MENU_QUICK_SWITCH ) ) {
                    retv = 10 + ( mretv & MENU_LOWER_MASK );
                }
                FUNC6 ( input );
                FUNC3 ( state, retv );
                return;
            }
            else {
                pd->selected_line = next_pos - 1;
            }
        }
        // Restart
        FUNC15 ( state );
        FUNC17 ( state, pd->selected_line );
        if ( !restart ) {
            FUNC3 ( state, retv );
        }
        return;
    }
    // We normally do not want to restart the loop.
    restart = FALSE;
    // Normal mode
    if ( ( mretv & MENU_OK  ) && pd->selected_line != UINT32_MAX && cmd_list[pd->selected_line].entry != NULL ) {
        if ( ( mretv & MENU_CUSTOM_ACTION ) && pd->multi_select ) {
            restart = TRUE;
            if ( pd->selected_list == NULL ) {
                pd->selected_list = FUNC7 ( sizeof ( uint32_t ) * ( pd->cmd_list_length / 32 + 1 ) );
            }
            pd->selected_count += ( FUNC1 ( pd->selected_list, pd->selected_line ) ? ( -1 ) : ( 1 ) );
            FUNC2 ( pd->selected_list, pd->selected_line );
            // Move to next line.
            pd->selected_line = FUNC0 ( next_pos, cmd_list_length - 1 );
            if ( pd->selected_count > 0 ) {
                char *str = FUNC9 ( "%u/%u", pd->selected_count, pd->cmd_list_length );
                FUNC16 ( state, str );
                FUNC6 ( str );
            }
            else {
                FUNC16 ( state, NULL );
            }
        }
        else {
            FUNC4 ( pd, input );
        }
        retv = TRUE;
    }
    // Custom input
    else if ( ( mretv & ( MENU_CUSTOM_INPUT ) ) ) {
        FUNC4 ( pd, input );

        retv = TRUE;
    }
    // Quick switch with entry selected.
    else if ( ( mretv & MENU_QUICK_SWITCH ) ) {
        FUNC4 ( pd, input );

        restart = FALSE;
        retv    = 10 + ( mretv & MENU_LOWER_MASK );
    }
    FUNC6 ( input );
    if ( restart ) {
        FUNC15 ( state );
        FUNC17 ( state, pd->selected_line );
    }
    else {
        FUNC3 ( state, retv );
    }
}