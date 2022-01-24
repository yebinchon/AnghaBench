#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_6__ {scalar_t__ p_input_item; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_7__ {char* psz_icy_title; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int*,int*,int const) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (int const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,char*) ; 
 char* FUNC6 (char*,char*) ; 
 char* FUNC7 (char*,char) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  vlc_meta_NowPlaying ; 

__attribute__((used)) static int FUNC12( stream_t *p_access )
{
    access_sys_t *p_sys = p_access->p_sys;

    uint8_t buffer;
    char *p, *psz_meta;
    int i_read;

    /* Read meta data length */
    if( FUNC1( p_access, &i_read, &buffer, 1 ) )
        return VLC_EGENERIC;
    if( i_read != 1 )
        return VLC_EGENERIC;
    const int i_size = buffer << 4;
    /* msg_Dbg( p_access, "ICY meta size=%u", i_size); */

    psz_meta = FUNC4( i_size + 1 );
    for( i_read = 0; i_read < i_size; )
    {
        int i_tmp;
        if( FUNC1( p_access, &i_tmp, (uint8_t *)&psz_meta[i_read], i_size - i_read ) || i_tmp <= 0 )
        {
            FUNC2( psz_meta );
            return VLC_EGENERIC;
        }
        i_read += i_tmp;
    }
    psz_meta[i_read] = '\0'; /* Just in case */

    /* msg_Dbg( p_access, "icy-meta=%s", psz_meta ); */

    /* Now parse the meta */
    /* Look for StreamTitle= */
    p = FUNC6( (char *)psz_meta, "StreamTitle=" );
    if( p )
    {
        p += FUNC10( "StreamTitle=" );
        if( *p == '\'' || *p == '"' )
        {
            char closing[] = { p[0], ';', '\0' };
            char *psz = FUNC11( &p[1], closing );
            if( !psz )
                psz = FUNC7( &p[1], ';' );

            if( psz ) *psz = '\0';
            p++;
        }
        else
        {
            char *psz = FUNC7( p, ';' );
            if( psz ) *psz = '\0';
        }

        if( !p_sys->psz_icy_title ||
            FUNC8( p_sys->psz_icy_title, p ) )
        {
            FUNC2( p_sys->psz_icy_title );
            char *psz_tmp = FUNC9( p );
            p_sys->psz_icy_title = FUNC0( psz_tmp );
            if( !p_sys->psz_icy_title )
                FUNC2( psz_tmp );

            FUNC5( p_access, "New Icy-Title=%s", p_sys->psz_icy_title );
            if( p_access->p_input_item )
                FUNC3( p_access->p_input_item, vlc_meta_NowPlaying,
                                    p_sys->psz_icy_title );
        }
    }
    FUNC2( psz_meta );

    return VLC_SUCCESS;
}