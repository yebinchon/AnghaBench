#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  psz_location; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_6__ {void* psz_ports; void* i_channels; } ;
typedef  TYPE_2__ demux_sys_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 void* FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    char *psz_dup = FUNC4( p_demux->psz_location );
    char *psz_parser = psz_dup;

    if( !FUNC6( psz_parser, "channels=", FUNC5( "channels=" ) ) )
    {
        p_sys->i_channels = FUNC0( FUNC8( psz_parser + FUNC5( "channels=" ),
            &psz_parser, 0 ) );
    }
    else if( !FUNC6( psz_parser, "ports=", FUNC5( "ports=" ) ) )
    {
        int i_len;
        psz_parser += FUNC5( "ports=" );
        if( FUNC3( psz_parser, ':' ) )
        {
            i_len = FUNC3( psz_parser, ':' ) - psz_parser;
        }
        else
        {
            i_len = FUNC5( psz_parser );
        }
        p_sys->psz_ports = FUNC7( psz_parser, i_len );
        psz_parser += i_len;
    }
    else
    {
        FUNC2( p_demux, "unknown option" );
    }

    while( *psz_parser && *psz_parser != ':' )
    {
        psz_parser++;
    }

    if( *psz_parser == ':' )
    {
        for( ;; )
        {
            *psz_parser++ = '\0';
            if( !FUNC6( psz_parser, "channels=", FUNC5( "channels=" ) ) )
            {
                p_sys->i_channels = FUNC0( FUNC8(
                    psz_parser + FUNC5( "channels=" ), &psz_parser, 0 ) );
            }
            else if( !FUNC6( psz_parser, "ports=", FUNC5( "ports=" ) ) )
            {
                int i_len;
                psz_parser += FUNC5( "ports=" );
                if( FUNC3( psz_parser, ':' ) )
                {
                    i_len = FUNC3( psz_parser, ':' ) - psz_parser;
                }
                else
                {
                    i_len = FUNC5( psz_parser );
                }
                p_sys->psz_ports = FUNC7( psz_parser, i_len );
                psz_parser += i_len;
            }
            else
            {
                FUNC2( p_demux, "unknown option" );
            }
            while( *psz_parser && *psz_parser != ':' )
            {
                psz_parser++;
            }

            if( *psz_parser == '\0' )
            {
                break;
            }
        }
    }

    FUNC1( psz_dup );
}