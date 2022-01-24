#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int FUNC0 (char const* const) ; 
 char FUNC1 (int /*<<< orphan*/ ) ; 
 int stored_argc ; 
 int /*<<< orphan*/ * stored_argv ; 

int FUNC2 ( const char * const key, char *val )
{
    int i = FUNC0 ( key );

    if ( val != NULL && i > 0 && i < ( stored_argc - 1 ) ) {
        *val = FUNC1 ( stored_argv[i + 1] );
        return TRUE;
    }
    return FALSE;
}