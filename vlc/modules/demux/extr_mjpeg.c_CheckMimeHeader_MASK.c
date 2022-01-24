#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_10__ {int i_data_peeked; char* p_peek; char* psz_separator; } ;
typedef  TYPE_2__ demux_sys_t ;

/* Variables and functions */
 char* FUNC0 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,char*,...) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 

__attribute__((used)) static bool FUNC9( demux_t *p_demux, int *p_header_size )
{
    bool        b_jpeg = false;
    int         i_pos = 0;
    char        *psz_line;
    char        *p_ch;
    demux_sys_t *p_sys = p_demux->p_sys;

    *p_header_size = -1;
    if( !FUNC1( p_demux, true ) )
    {
        FUNC4( p_demux, "cannot peek" );
        return false;
    }
    if( p_sys->i_data_peeked < 5)
    {
        FUNC4( p_demux, "data shortage" );
        return false;
    }
    if( FUNC8( (char *)p_sys->p_peek, "--", 2 ) != 0
        && FUNC8( (char *)p_sys->p_peek, "\r\n--", 4 ) != 0 )
    {
        *p_header_size = 0;
        return false;
    }
    else
    {
        i_pos = *p_sys->p_peek == '-' ? 2 : 4;
        psz_line = FUNC0( p_demux, &i_pos );
        if( NULL == psz_line )
        {
            FUNC4( p_demux, "no EOL" );
            return false;
        }

        /* Read the separator and remember it if not yet stored */
        if( p_sys->psz_separator == NULL )
        {
            p_sys->psz_separator = psz_line;
            FUNC3( p_demux, "Multipart MIME detected, using separator: %s",
                     p_sys->psz_separator );
        }
        else
        {
            if( FUNC6( psz_line, p_sys->psz_separator ) )
            {
                FUNC5( p_demux, "separator %s does not match %s", psz_line,
                          p_sys->psz_separator );
            }
            FUNC2( psz_line );
        }
    }

    psz_line = FUNC0( p_demux, &i_pos );
    while( psz_line && *psz_line )
    {
        if( !FUNC7( psz_line, "Content-Type:", 13 ) )
        {
            p_ch = psz_line + 13;
            while( *p_ch != '\0' && ( *p_ch == ' ' || *p_ch == '\t' ) ) p_ch++;
            if( FUNC7( p_ch, "image/jpeg", 10 ) )
            {
                FUNC5( p_demux, "%s, image/jpeg is expected", psz_line );
                b_jpeg = false;
            }
            else
            {
                b_jpeg = true;
            }
        }
        else
        {
            FUNC3( p_demux, "discard MIME header: %s", psz_line );
        }
        FUNC2( psz_line );
        psz_line = FUNC0( p_demux, &i_pos );
    }

    if( NULL == psz_line )
    {
        FUNC4( p_demux, "no EOL" );
        return false;
    }

    FUNC2( psz_line );

    *p_header_size = i_pos;
    return b_jpeg;
}