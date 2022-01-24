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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char) ; 
 size_t FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 

bool FUNC6( const char *psz_intf )
{
    FUNC0( psz_intf );

    char *psz_config, *psz_parser;
    size_t i_len = FUNC4( psz_intf );

    psz_config = psz_parser = FUNC1( "extraintf" );
    while( psz_parser )
    {
        if( !FUNC5( psz_parser, psz_intf, i_len ) )
        {
            FUNC2( psz_config );
            return true;
        }
        psz_parser = FUNC3( psz_parser, ':' );
        if( psz_parser ) psz_parser++; /* skip the ':' */
    }
    FUNC2( psz_config );

    psz_config = psz_parser = FUNC1( "control" );
    while( psz_parser )
    {
        if( !FUNC5( psz_parser, psz_intf, i_len ) )
        {
            FUNC2( psz_config );
            return true;
        }
        psz_parser = FUNC3( psz_parser, ':' );
        if( psz_parser ) psz_parser++; /* skip the ':' */
    }
    FUNC2( psz_config );

    return false;
}