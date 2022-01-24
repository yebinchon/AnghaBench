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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (char*,char*) ; 
 int FUNC4 (char*,char*) ; 

__attribute__((used)) static char *FUNC5( char *psz_subtitle )
{
    char *psz_text = FUNC0( psz_subtitle );
    char *s;

    if( !psz_text )
        return NULL;

    s = FUNC3( psz_text, "\t\r\n " );
    while( s )
    {
        char  spc = ' ';
        int   i_whitespace = FUNC4( s, "\t\r\n " );

        /* Favour '\n' over other whitespaces - if one of these
         * occurs in the whitespace use a '\n' as our value,
         * otherwise just use a ' '
         */
        for( int k = 0; k < i_whitespace; k++ )
            if( s[k] == '\n' ) spc = '\n';

        if( i_whitespace > 1 )
        {
            FUNC1( &s[1],
                     &s[i_whitespace],
                     FUNC2( s ) - i_whitespace + 1 );
        }
        *s++ = spc;

        s = FUNC3( s, "\t\r\n " );
    }
    return psz_text;
}