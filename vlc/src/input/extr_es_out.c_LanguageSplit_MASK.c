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
 int /*<<< orphan*/  FUNC1 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 char* FUNC5 (char const*) ; 

__attribute__((used)) static char **FUNC6( const char *psz_langs )
{
    char *psz_dup;
    char *psz_parser;
    char **ppsz = NULL;
    int i_psz = 0;

    if( psz_langs == NULL ) return NULL;

    psz_parser = psz_dup = FUNC5(psz_langs);

    while( psz_parser && *psz_parser )
    {
        char *psz;
        char *psz_code;

        psz = FUNC3(psz_parser, ',' );
        if( psz ) *psz++ = '\0';

        if( !FUNC4( psz_parser, "any" ) )
        {
            FUNC1( i_psz, ppsz, FUNC5("any") );
        }
        else if( !FUNC4( psz_parser, "none" ) )
        {
            FUNC1( i_psz, ppsz, FUNC5("none") );
        }
        else
        {
            psz_code = FUNC0( psz_parser );
            if( FUNC4( psz_code, "??" ) )
            {
                FUNC1( i_psz, ppsz, psz_code );
            }
            else
            {
                FUNC2( psz_code );
            }
        }

        psz_parser = psz;
    }

    if( i_psz )
    {
        FUNC1( i_psz, ppsz, NULL );
    }

    FUNC2( psz_dup );
    return ppsz;
}