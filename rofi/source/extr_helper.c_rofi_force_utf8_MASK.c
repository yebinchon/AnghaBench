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
typedef  int ssize_t ;
typedef  char gchar ;
typedef  int /*<<< orphan*/  GString ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 char* FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 scalar_t__ FUNC5 (char const*,int,char const**) ; 

char * FUNC6 ( const gchar *data, ssize_t length )
{
    if ( data == NULL ) {
        return NULL;
    }
    const char *end;
    GString    *string;

    if ( FUNC5 ( data, length, &end ) ) {
        return FUNC0 ( data, length + 1 );
    }
    string = FUNC4 ( length + 16 );

    do {
        /* Valid part of the string */
        FUNC2 ( string, data, end - data );
        /* Replacement character */
        FUNC1 ( string, "\uFFFD" );
        length -= ( end - data ) + 1;
        data    = end + 1;
    } while ( !FUNC5 ( data, length, &end ) );

    if ( length ) {
        FUNC2 ( string, data, length );
    }

    return FUNC3 ( string, FALSE );
}