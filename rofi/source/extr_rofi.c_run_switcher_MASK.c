#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  filter; } ;
struct TYPE_10__ {char* name; } ;
struct TYPE_9__ {int /*<<< orphan*/  str; } ;
typedef  int /*<<< orphan*/  RofiViewState ;
typedef  size_t ModeMode ;
typedef  TYPE_1__ GString ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_MSG_MARKUP ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_8__ config ; 
 size_t curr_switcher ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (char*) ; 
 int /*<<< orphan*/  main_loop ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_2__** modi ; 
 unsigned int num_modi ; 
 int /*<<< orphan*/  process_result ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9 ( ModeMode mode )
{
    // Otherwise check if requested mode is enabled.
    for ( unsigned int i = 0; i < num_modi; i++ ) {
        if ( !FUNC4 ( modi[i] ) ) {
            GString *str = FUNC3 ( "Failed to initialize the mode: " );
            FUNC1 ( str, modi[i]->name );
            FUNC1 ( str, "\n" );

            FUNC6 ( str->str, ERROR_MSG_MARKUP );
            FUNC2 ( str, FALSE );
            break;
        }
    }
    // Error dialog must have been created.
    if ( FUNC7 () != NULL ) {
        return;
    }
    curr_switcher = mode;
    RofiViewState * state = FUNC5 ( modi[mode], config.filter, 0, process_result );
    if ( state ) {
        FUNC8 ( state );
    }
    if ( FUNC7 () == NULL ) {
        FUNC0 ( main_loop  );
    }
}