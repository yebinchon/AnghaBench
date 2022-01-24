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
 size_t FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,size_t) ; 

__attribute__((used)) static bool FUNC4( const char *cookie, const char *attr )
{
    size_t attrlen = FUNC1(attr);
    const char * str = FUNC0(cookie, ';');
    while( str )
    {
        /* skip ; and blank */
        str++;
        str += FUNC2( str, " " );

        if( !FUNC3( str, attr, attrlen )
         && (str[attrlen] == '=' || str[attrlen] == ';' || str[attrlen] == '\0') )
            return true;

        str = FUNC0(str, ';');
    }
    return false;
}