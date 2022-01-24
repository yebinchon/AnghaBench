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
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_2__ {int /*<<< orphan*/  modi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (char*) ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,char const* const,char**) ; 

__attribute__((used)) static gboolean FUNC5 ( void )
{
    const char *const sep     = ",#";
    char              *savept = NULL;
    // Make a copy, as strtok will modify it.
    char              *switcher_str = FUNC2 ( config.modi );
    // Split token on ','. This modifies switcher_str.
    for ( char *token = FUNC4 ( switcher_str, sep, &savept ); token != NULL; token = FUNC4 ( NULL, sep, &savept ) ) {
        if ( FUNC0 ( token ) == -1 ) {
            FUNC3 ( token );
        }
    }
    // Free string that was modified by strtok_r
    FUNC1 ( switcher_str );
    return FALSE;
}