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
struct passwd {int /*<<< orphan*/  pw_dir; } ;

/* Variables and functions */
 char const G_DIR_SEPARATOR ; 
 int /*<<< orphan*/  G_DIR_SEPARATOR_S ; 
 char* FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 char** FUNC6 (char const*,int /*<<< orphan*/ ,int) ; 
 struct passwd* FUNC7 (char*) ; 

char *FUNC8 ( const char *input )
{
    char **str = FUNC6 ( input, G_DIR_SEPARATOR_S, -1 );
    for ( unsigned int i = 0; str && str[i]; i++ ) {
        // Replace ~ with current user homedir.
        if ( str[i][0] == '~' && str[i][1] == '\0' ) {
            FUNC1 ( str[i] );
            str[i] = FUNC3 ( FUNC2 () );
        }
        // If other user, ask getpwnam.
        else if ( str[i][0] == '~' ) {
            struct passwd *p = FUNC7 ( &( str[i][1] ) );
            if ( p != NULL ) {
                FUNC1 ( str[i] );
                str[i] = FUNC3 ( p->pw_dir );
            }
        }
        else if ( i == 0 ) {
            char * s = str[i];
            if ( input[0] == G_DIR_SEPARATOR ) {
                str[i] = FUNC4 ( "%s%s", G_DIR_SEPARATOR_S, s );
                FUNC1 ( s );
            }
        }
    }
    char *retv = FUNC0 ( str );
    FUNC5 ( str );
    return retv;
}