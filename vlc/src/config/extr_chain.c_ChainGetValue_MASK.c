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
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*,int) ; 

__attribute__((used)) static char *FUNC5( const char **ppsz_string )
{
    const char *p = *ppsz_string;

    char *psz_value = NULL;
    const char *end;
    bool b_keep_brackets = (*p == '{');

    if( *p == '=' )
        p++;

    end = FUNC0( p );
    if( end <= p )
    {
        psz_value = NULL;
    }
    else
    {
        /* Skip heading and trailing spaces.
         * This ain't necessary but will avoid simple
         * user mistakes. */
        FUNC1( p );
    }

    if( end <= p )
    {
        psz_value = NULL;
    }
    else
    {
        if( *p == '\'' || *p == '"' || ( !b_keep_brackets && *p == '{' ) )
        {
            p++;

            if( *(end-1) != '\'' && *(end-1) == '"' )
                FUNC2( p, end );

            if( end - 1 <= p )
                psz_value = NULL;
            else
                psz_value = FUNC4( p, end -1 - p );
        }
        else
        {
            FUNC2( p, end );
            if( end <= p )
                psz_value = NULL;
            else
                psz_value = FUNC4( p, end - p );
        }
    }

    /* */
    if( psz_value )
        FUNC3( psz_value );

    /* */
    *ppsz_string = end;
    return psz_value;
}