#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gsize ;
typedef  char gchar ;
struct TYPE_7__ {int /*<<< orphan*/  message; } ;
struct TYPE_6__ {int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ RofiHelperExecuteContext ;
typedef  TYPE_2__ GError ;

/* Variables and functions */
 int /*<<< orphan*/  RUN_CACHE_FILE ; 
 int /*<<< orphan*/  cache_dir ; 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 

__attribute__((used)) static void FUNC8 ( const char *cmd, int run_in_term )
{
    GError *error = NULL;
    if ( !cmd || !cmd[0] ) {
        return;
    }
    gsize lf_cmd_size = 0;
    gchar *lf_cmd     = FUNC3 ( cmd, -1, NULL, &lf_cmd_size, &error );
    if ( error != NULL ) {
        FUNC4 ( "Failed to convert command to locale encoding: %s", error->message );
        FUNC1 ( error );
        return;
    }

    char                     *path   = FUNC0 ( cache_dir, RUN_CACHE_FILE, NULL );
    RofiHelperExecuteContext context = { .name = NULL };
    // FIXME: assume startup notification support for terminals
    if (  FUNC5 ( NULL, lf_cmd, run_in_term, run_in_term ? &context : NULL ) ) {
        /**
         * This happens in non-critical time (After launching app)
         * It is allowed to be a bit slower.
         */

        FUNC7 ( path, cmd );
    }
    else {
        FUNC6 ( path, cmd );
    }
    FUNC2 ( path );
    FUNC2 ( lf_cmd );
}