#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  char gchar ;
struct TYPE_7__ {char* str; } ;
typedef  TYPE_1__ GString ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*) ; 

__attribute__((used)) static gchar *FUNC9 ( const char * input )
{
    GString *str = FUNC6 ( "" );
    gchar   *r   = FUNC1 ( input, -1 );
    gchar   *iter;
    int     first = 1;
    for ( iter = r; iter && *iter != '\0'; iter = FUNC8 ( iter ) ) {
        if ( first ) {
            FUNC2 ( str, "(" );
        }
        else {
            FUNC2 ( str, ".*(" );
        }
        if ( *iter == '\\' ) {
            FUNC3 ( str, '\\' );
            iter = FUNC8 ( iter );
            // If EOL, break out of for loop.
            if ( ( *iter ) == '\0' ) {
                break;
            }
        }
        FUNC4 ( str, FUNC7 ( iter ) );
        FUNC2 ( str, ")" );
        first = 0;
    }
    FUNC0 ( r );
    char *retv = str->str;
    FUNC5 ( str, FALSE );
    return retv;
}