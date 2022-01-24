#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * gpointer ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_4__ {int /*<<< orphan*/  message; } ;
typedef  int /*<<< orphan*/  RofiHelperExecuteContext ;
typedef  int /*<<< orphan*/ * GSpawnChildSetupFunc ;
typedef  TYPE_1__ GError ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  G_SPAWN_SEARCH_PATH ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__**) ; 
 char* FUNC4 (char*,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

gboolean FUNC7 ( const char *wd, char **args, const char *error_precmd, const char *error_cmd, RofiHelperExecuteContext *context )
{
    gboolean             retv   = TRUE;
    GError               *error = NULL;

    GSpawnChildSetupFunc child_setup = NULL;
    gpointer             user_data   = NULL;

    FUNC0 ( context, &child_setup, &user_data );

    FUNC3 ( wd, args, NULL, G_SPAWN_SEARCH_PATH, child_setup, user_data, NULL, &error );
    if ( error != NULL ) {
        char *msg = FUNC4 ( "Failed to execute: '%s%s'\nError: '%s'", error_precmd, error_cmd, error->message );
        FUNC6 ( msg, FALSE  );
        FUNC2 ( msg );
        // print error.
        FUNC1 ( error );
        retv = FALSE;
    }

    // Free the args list.
    FUNC5 ( args );
    return retv;
}