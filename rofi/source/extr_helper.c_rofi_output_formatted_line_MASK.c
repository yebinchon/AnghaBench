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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 

void FUNC7 ( const char *format, const char *string, int selected_line, const char *filter )
{
    for ( int i = 0; format && format[i]; i++ ) {
        if ( format[i] == 'i' ) {
            FUNC1 ( stdout, "%d", selected_line );
        }
        else if ( format[i] == 'd' ) {
            FUNC1 ( stdout, "%d", ( selected_line + 1 ) );
        }
        else if ( format[i] == 's' ) {
            FUNC3 ( string, stdout );
        }
        else if ( format[i] == 'p' ) {
            char *esc = NULL;
            FUNC6(string, -1, 0, NULL, &esc, NULL, NULL);
            if ( esc ){
                FUNC3 ( esc, stdout );
                FUNC4 ( esc );
            } else {
                FUNC3 ( "invalid string" , stdout );
            }
        }
        else if ( format[i] == 'q' ) {
            char *quote = FUNC5 ( string );
            FUNC3 ( quote, stdout );
            FUNC4 ( quote );
        }
        else if ( format[i] == 'f' ) {
            if ( filter ) {
                FUNC3 ( filter, stdout );
            }
        }
        else if ( format[i] == 'F' ) {
            if ( filter ) {
                char *quote = FUNC5 ( filter );
                FUNC3 ( quote, stdout );
                FUNC4 ( quote );
            }
        }
        else {
            FUNC2 ( format[i], stdout );
        }
    }
    FUNC2 ( '\n', stdout );
    FUNC0 ( stdout );
}