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
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  stream_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10( lua_State *L )
{
    vlc_object_t *p_this = FUNC9( L );

    /* Make sure that we have 1 argument (+ 1 object) */
    FUNC4( L, 2 );

    stream_t **pp_stream = (stream_t **)FUNC0( L, 1, "stream" );
    if( !*pp_stream ) return FUNC8( L );
    const char *psz_filter = NULL;

    if( FUNC2( L, 2 ) )
        psz_filter = FUNC5( L, 2 );

    if( !psz_filter || !*psz_filter )
    {
        FUNC6( p_this, "adding all automatic stream filters" );
        while( true )
        {
            /* Add next automatic stream */
            stream_t *p_filtered = FUNC7( *pp_stream, NULL );
            if( !p_filtered )
                break;
            else
            {
                FUNC6( p_this, "inserted an automatic stream filter" );
                *pp_stream = p_filtered;
            }
        }
        FUNC1( L, "stream" );
        FUNC3( L, 1 );
    }
    else
    {
        /* Add a named filter */
        stream_t *p_filter = FUNC7( *pp_stream, psz_filter );
        if( !p_filter )
            FUNC6( p_this, "Unable to open requested stream filter '%s'",
                     psz_filter );
        else
        {
            *pp_stream = p_filter;
            FUNC1( L, "stream" );
            FUNC3( L, 1 );
        }
    }

    return 1;
}