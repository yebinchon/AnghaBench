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
typedef  int /*<<< orphan*/  demux_t ;

/* Variables and functions */
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,...) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int*) ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static int FUNC6 ( demux_t *p_demux, char *psz_line )
{
    char        *psz_bol;
    char        *psz_value;

    psz_bol = psz_line;
    /* Remove unnecessary tabs or spaces at the beginning of line */
    while( *psz_bol == ' ' || *psz_bol == '\t' ||
           *psz_bol == '\n' || *psz_bol == '\r' )
    {
        psz_bol++;
    }
    psz_value = FUNC4( psz_bol, '=' );
    if( psz_value == NULL )
    {
        return 0; /* a [Address] or [Formats] line or something else we will ignore */
    }
    *psz_value = '\0';
    psz_value++;
 
    if( !FUNC5( psz_value, "0x", 2 ) )
    {
        int i_value;
        FUNC3( psz_value, "%x", &i_value );
        FUNC1( p_demux, "%s = %d", psz_bol, i_value );
    }
    else if( !FUNC5( psz_bol, "Format", 6 ) )
    {
        FUNC1( p_demux, "%s = asf header", psz_bol );
    }
    else
    {
        /* This should be NSC encoded strings in the values */
        char *psz_out;
        psz_out = FUNC2( (vlc_object_t *)p_demux, psz_value );
        if( psz_out )
        {
            FUNC1( p_demux, "%s = %s", psz_bol, psz_out );
            FUNC0( psz_out );
        }
    }
    return VLC_SUCCESS;
}