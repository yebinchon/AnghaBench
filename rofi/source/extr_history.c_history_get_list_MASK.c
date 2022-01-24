#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ disable_history; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 char** FUNC0 (int /*<<< orphan*/ *,unsigned int*) ; 
 TYPE_1__ config ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

char ** FUNC5 ( const char *filename, unsigned int *length )
{
    *length = 0;

    if ( config.disable_history ) {
        return NULL;
    }
    char **retv = NULL;
    // Open file.
    FILE *fd = FUNC2 ( filename, "r" );
    if ( fd == NULL ) {
        // File that does not exists is not an error, so ignore it.
        // Everything else? panic.
        if ( errno != ENOENT ) {
            FUNC4 ( "Failed to open file: %s", FUNC3 ( errno ) );
        }
        return NULL;
    }
    // Get list.
    retv = FUNC0 ( fd, length );

    // Close file, if fails let user know on stderr.
    if ( FUNC1 ( fd ) != 0 ) {
        FUNC4 ( "Failed to close history file: %s", FUNC3 ( errno ) );
    }
    return retv;
}