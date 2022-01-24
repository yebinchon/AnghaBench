#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
typedef  char gchar ;
struct TYPE_3__ {scalar_t__* columns; int /*<<< orphan*/  column_separator; } ;
typedef  TYPE_1__ DmenuModePrivateData ;

/* Variables and functions */
 int /*<<< orphan*/  G_REGEX_CASELESS ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char** FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 char* FUNC5 (char*,char*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static gchar * FUNC6 ( const DmenuModePrivateData *pd, const char *input )
{
    if ( pd->columns == NULL ) {
        return FUNC3 ( input );
    }
    char     *retv       = NULL;
    char     ** splitted = FUNC2 ( pd->column_separator, input, G_REGEX_CASELESS, 00 );
    uint32_t ns          = 0;
    for (; splitted && splitted[ns]; ns++ ) {
        ;
    }
    for ( uint32_t i = 0; pd->columns && pd->columns[i]; i++ ) {
        unsigned int index = (unsigned int ) FUNC0 ( pd->columns[i], NULL, 10 );
        if ( index < ns && index > 0 ) {
            if ( retv == NULL ) {
                retv = FUNC3 ( splitted[index - 1] );
            }
            else {
                gchar *t = FUNC5 ( "\t", retv, splitted[index - 1], NULL );
                FUNC1 ( retv );
                retv = t;
            }
        }
    }
    FUNC4 ( splitted );
    return retv ? retv : FUNC3 ( "" );
}