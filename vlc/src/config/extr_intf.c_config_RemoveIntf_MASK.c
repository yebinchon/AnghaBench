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
 int FUNC0 (char**,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,char) ; 
 size_t FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*,size_t) ; 

void FUNC8( const char *psz_intf )
{
    FUNC1( psz_intf );

    char *psz_config, *psz_parser;
    size_t i_len = FUNC6( psz_intf );

    psz_config = psz_parser = FUNC2( "extraintf" );
    while( psz_parser )
    {
        if( !FUNC7( psz_intf, psz_parser, i_len ) )
        {
            char *psz_newconfig;
            char *psz_end = psz_parser + i_len;
            if( *psz_end == ':' ) psz_end++;
            *psz_parser = '\0';
            if( FUNC0( &psz_newconfig, "%s%s", psz_config, psz_end ) != -1 )
            {
                FUNC3( "extraintf", psz_newconfig );
                FUNC4( psz_newconfig );
            }
            break;
        }
        psz_parser = FUNC5( psz_parser, ':' );
        if( psz_parser ) psz_parser++; /* skip the ':' */
    }
    FUNC4( psz_config );

    psz_config = psz_parser = FUNC2( "control" );
    while( psz_parser )
    {
        if( !FUNC7( psz_intf, psz_parser, i_len ) )
        {
            char *psz_newconfig;
            char *psz_end = psz_parser + i_len;
            if( *psz_end == ':' ) psz_end++;
            *psz_parser = '\0';
            if( FUNC0( &psz_newconfig, "%s%s", psz_config, psz_end ) != -1 )
            {
                FUNC3( "control", psz_newconfig );
                FUNC4( psz_newconfig );
            }
            break;
        }
        psz_parser = FUNC5( psz_parser, ':' );
        if( psz_parser ) psz_parser++; /* skip the ':' */
    }
    FUNC4( psz_config );
}