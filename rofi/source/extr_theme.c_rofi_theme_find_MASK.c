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
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  ThemeWidget ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC3 (char*,char*,char**) ; 

__attribute__((used)) static ThemeWidget *FUNC4 ( ThemeWidget *widget, const char *name, const gboolean exact )
{
    if ( widget == NULL || name == NULL ) {
        return widget;
    }
    char *tname   = FUNC1 ( name );
    char *saveptr = NULL;
    int  found    = TRUE;
    for ( const char *iter = FUNC3 ( tname, ".", &saveptr ); iter != NULL; iter = FUNC3 ( NULL, ".", &saveptr ) ) {
        found = FALSE;
        ThemeWidget *f = FUNC2 ( widget, iter );
        if ( f != widget ) {
            widget = f;
            found  = TRUE;
        }
        else if ( exact ) {
            break;
        }
    }
    FUNC0 ( tname );
    if ( !exact || found ) {
        return widget;
    }
    else {
        return NULL;
    }
}