#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  run_command; } ;
struct TYPE_5__ {int /*<<< orphan*/  message; } ;
typedef  TYPE_1__ GError ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  G_SPAWN_SEARCH_PATH ; 
 TYPE_4__ config ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,TYPE_1__**) ; 
 char* FUNC3 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char***,int*,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

int FUNC7 ( const char * cmd )
{
    char **args = NULL;
    int  argv   = 0;
    FUNC5 ( config.run_command, &args, &argv, "{cmd}", cmd, (char *) 0 );

    int    fd     = -1;
    GError *error = NULL;
    FUNC2 ( NULL, args, NULL, G_SPAWN_SEARCH_PATH, NULL, NULL, NULL, NULL, &fd, NULL, &error );

    if ( error != NULL ) {
        char *msg = FUNC3 ( "Failed to execute: '%s'\nError: '%s'", cmd, error->message );
        FUNC6 ( msg, FALSE );
        FUNC1 ( msg );
        // print error.
        FUNC0 ( error );
        fd = -1;
    }
    FUNC4 ( args );
    return fd;
}