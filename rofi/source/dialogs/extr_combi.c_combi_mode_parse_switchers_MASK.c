#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  combi_modi; } ;
struct TYPE_7__ {int /*<<< orphan*/ * mode; void* disable; } ;
struct TYPE_6__ {int num_switchers; TYPE_2__* switchers; } ;
typedef  int /*<<< orphan*/  Mode ;
typedef  TYPE_1__ CombiModePrivateData ;
typedef  TYPE_2__ CombiMode ;

/* Variables and functions */
 void* FALSE ; 
 TYPE_5__ config ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 char* FUNC7 (char*,char const* const,char**) ; 

__attribute__((used)) static void FUNC8 ( Mode *sw )
{
    CombiModePrivateData *pd     = FUNC4 ( sw );
    char                 *savept = NULL;
    // Make a copy, as strtok will modify it.
    char                 *switcher_str = FUNC2 ( config.combi_modi );
    const char * const   sep           = ",#";
    // Split token on ','. This modifies switcher_str.
    for ( char *token = FUNC7 ( switcher_str, sep, &savept ); token != NULL;
          token = FUNC7 ( NULL, sep, &savept ) ) {
        // Resize and add entry.
        pd->switchers = (CombiMode  *) FUNC1 ( pd->switchers,
                                                   sizeof ( CombiMode ) * ( pd->num_switchers + 1 ) );

        Mode *mode = FUNC5 ( token );
        if (  mode ) {
            pd->switchers[pd->num_switchers].disable = FALSE;
            pd->switchers[pd->num_switchers++].mode  = mode;
        }
        else {
            // If not build in, use custom switchers.
            Mode *sw = FUNC6 ( token );
            if ( sw != NULL ) {
                pd->switchers[pd->num_switchers].disable = FALSE;
                pd->switchers[pd->num_switchers++].mode  = sw;
            }
            else {
                // Report error, don't continue.
                FUNC3 ( "Invalid script switcher: %s", token );
                token = NULL;
            }
        }
    }
    // Free string that was modified by strtok_r
    FUNC0 ( switcher_str );
}