#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_12__ {int /*<<< orphan*/ * psz_uri; int /*<<< orphan*/  i_media_type; } ;
typedef  TYPE_1__ sdp_t ;
struct TYPE_13__ {int /*<<< orphan*/  pf_demux; int /*<<< orphan*/  pf_control; TYPE_3__* p_sys; int /*<<< orphan*/  s; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_14__ {TYPE_1__* p_sdp; } ;
typedef  TYPE_3__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  Control ; 
 int /*<<< orphan*/  Demux ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*) ; 
 char* FUNC11 (char*,size_t) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,char*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int) ; 
 size_t FUNC15 (int /*<<< orphan*/ ,char*,int const) ; 

__attribute__((used)) static int FUNC16( vlc_object_t *p_this )
{
    demux_t *p_demux = (demux_t *)p_this;
    const uint8_t *p_peek;
    char *psz_sdp = NULL;
    sdp_t *p_sdp = NULL;
    int errval = VLC_EGENERIC;
    size_t i_len;

    if( !FUNC13( p_demux, "sap-parse" ) )
    {
        /* We want livedotcom module to parse this SDP file */
        return VLC_EGENERIC;
    }

    FUNC6( p_demux->s ); /* this is NOT an access_demux */

    /* Probe for SDP */
    if( FUNC14( p_demux->s, &p_peek, 7 ) < 7 )
        return VLC_EGENERIC;

    if( FUNC8( p_peek, "v=0\r\no=", 7 ) && FUNC8( p_peek, "v=0\no=", 6 ) )
        return VLC_EGENERIC;

    /* Gather the complete sdp file */
    for( i_len = 0, psz_sdp = NULL; i_len < 65536; )
    {
        const int i_read_max = 1024;
        char *psz_sdp_new = FUNC11( psz_sdp, i_len + i_read_max + 1 );
        size_t i_read;
        if( psz_sdp_new == NULL )
        {
            errval = VLC_ENOMEM;
            goto error;
        }
        psz_sdp = psz_sdp_new;

        i_read = FUNC15( p_demux->s, &psz_sdp[i_len], i_read_max );
        if( (int)i_read < 0 )
        {
            FUNC9( p_demux, "cannot read SDP" );
            goto error;
        }
        i_len += i_read;

        psz_sdp[i_len] = '\0';

        if( (int)i_read < i_read_max )
            break; // EOF
    }

    p_sdp = FUNC4( FUNC5(p_demux), psz_sdp );

    if( !p_sdp )
    {
        FUNC10( p_demux, "invalid SDP");
        goto error;
    }

    if( FUNC3( FUNC5( p_demux ), p_sdp ) )
    {
        p_sdp->psz_uri = NULL;
    }
    if (!FUNC2 (p_sdp->i_media_type))
        goto error;
    if( p_sdp->psz_uri == NULL ) goto error;

    demux_sys_t *p_sys = FUNC7( sizeof(*p_sys) );
    if( FUNC12(p_sys == NULL) )
        goto error;
    p_sys->p_sdp = p_sdp;
    p_demux->p_sys = p_sys;
    p_demux->pf_control = Control;
    p_demux->pf_demux = Demux;

    FUNC0( psz_sdp );
    return VLC_SUCCESS;

error:
    FUNC0( psz_sdp );
    if( p_sdp ) FUNC1( p_sdp );
    return errval;
}