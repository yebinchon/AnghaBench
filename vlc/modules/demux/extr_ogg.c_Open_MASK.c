#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {int /*<<< orphan*/  force; } ;
struct TYPE_9__ {scalar_t__ (* pf_demux ) (TYPE_2__*) ;scalar_t__ b_preparsing; int /*<<< orphan*/  pf_control; TYPE_3__* p_sys; int /*<<< orphan*/  s; TYPE_1__ obj; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_10__ {int i_length; int b_preparsing_done; int /*<<< orphan*/  pp_seekpoints; int /*<<< orphan*/  i_seekpoints; int /*<<< orphan*/  oy; } ;
typedef  TYPE_3__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  Control ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 TYPE_3__* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int) ; 

__attribute__((used)) static int FUNC11( vlc_object_t * p_this )
{
    demux_t *p_demux = (demux_t *)p_this;
    demux_sys_t    *p_sys;
    const uint8_t  *p_peek;

    /* Check if we are dealing with an ogg stream */
    if( FUNC10( p_demux->s, &p_peek, 4 ) < 4 ) return VLC_EGENERIC;
    if( !p_demux->obj.force && FUNC5( p_peek, "OggS", 4 ) )
    {
        char *psz_mime = FUNC8( p_demux->s );
        if( !psz_mime )
        {
            return VLC_EGENERIC;
        }
        else if ( FUNC7( psz_mime, "application/ogg" ) &&
                  FUNC7( psz_mime, "video/ogg" ) &&
                  FUNC7( psz_mime, "audio/ogg" ) )
        {
            FUNC4( psz_mime );
            return VLC_EGENERIC;
        }
        FUNC4( psz_mime );
    }

    /* */
    p_demux->p_sys = p_sys = FUNC3( 1, sizeof( demux_sys_t ) );
    if( !p_sys )
        return VLC_ENOMEM;

    p_sys->i_length = -1;
    p_sys->b_preparsing_done = false;

    /* Set exported functions */
    p_demux->pf_demux = Demux;
    p_demux->pf_control = Control;

    /* Initialize the Ogg physical bitstream parser */
    FUNC6( &p_sys->oy );

    /* */
    FUNC2( p_sys->i_seekpoints, p_sys->pp_seekpoints );


    while ( !p_sys->b_preparsing_done && p_demux->pf_demux( p_demux ) > 0 )
    {}
    if ( p_sys->b_preparsing_done && p_demux->b_preparsing )
        FUNC1( p_demux );

    return VLC_SUCCESS;
}