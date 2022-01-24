#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * sw; } ;
typedef  TYPE_1__ RofiViewState ;
typedef  int ModeMode ;
typedef  int /*<<< orphan*/  Mode ;
typedef  int /*<<< orphan*/  MenuReturn ;

/* Variables and functions */
 int MODE_EXIT ; 
 int NEXT_DIALOG ; 
 int PREVIOUS_DIALOG ; 
 int RELOAD_DIALOG ; 
 int RESET_DIALOG ; 
 int curr_switcher ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,unsigned int) ; 
 int /*<<< orphan*/ * modi ; 
 int num_modi ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 unsigned int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC10 ( RofiViewState *state )
{
    Mode *sw = state->sw;
    FUNC8 ( NULL );
    if ( sw != NULL ) {
        unsigned int selected_line = FUNC6 ( state );;
        MenuReturn   mretv         = FUNC5 ( state );
        char         *input        = FUNC1 ( FUNC7 ( state ) );
        ModeMode     retv          = FUNC2 ( sw, mretv, &input, selected_line );
        FUNC0 ( input );

        ModeMode mode = curr_switcher;
        // Find next enabled
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
            // do nothing.
        }
        else if ( retv == RESET_DIALOG ) {
            FUNC3 ( state );
        }
        else if ( retv < MODE_EXIT ) {
            mode = ( retv ) % num_modi;
        }
        else {
            mode = retv;
        }
        if ( mode != MODE_EXIT ) {
            /**
             * Load in the new mode.
             */
            FUNC9 ( state, modi[mode] );
            FUNC8 ( state );
            curr_switcher = mode;
            return;
        }
    }
    FUNC4 ( state );
}