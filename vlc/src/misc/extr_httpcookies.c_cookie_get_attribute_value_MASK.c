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
 char* FUNC0 (char const*,char) ; 
 size_t FUNC1 (char const*,char*) ; 
 size_t FUNC2 (char const*) ; 
 char* FUNC3 (char const*,size_t) ; 
 int FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*,size_t) ; 

__attribute__((used)) static char *FUNC6( const char *cookie, const char *attr )
{
    size_t attrlen = FUNC2( attr );
    const char * str = FUNC0( cookie, ';' );
    while( str )
    {
        /* skip ; and blank */
        str++;
        str = str + FUNC4( str, " " );

        if( !FUNC5( str, attr, attrlen )
         && (str[attrlen] == '=') )
        {
            str += attrlen + 1;
            size_t value_length = FUNC1( str, ";" );
            return FUNC3( str, value_length );
        }

        str = FUNC0( str, ';' );
    }
    return NULL;
}