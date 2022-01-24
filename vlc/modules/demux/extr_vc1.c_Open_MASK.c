#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  es_format_t ;
struct TYPE_10__ {int /*<<< orphan*/  force; } ;
struct TYPE_11__ {TYPE_3__* p_sys; int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_demux; TYPE_1__ obj; int /*<<< orphan*/  s; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_12__ {float f_fps; int /*<<< orphan*/  p_packetizer; scalar_t__ i_dts; int /*<<< orphan*/ * p_es; } ;
typedef  TYPE_3__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  Control ; 
 int /*<<< orphan*/  Demux ; 
 int /*<<< orphan*/  VIDEO_ES ; 
 int /*<<< orphan*/  VLC_CODEC_VC1 ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_3__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 float FUNC7 (TYPE_2__*,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int const**,int) ; 

__attribute__((used)) static int FUNC9( vlc_object_t * p_this )
{
    demux_t     *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys;
    const uint8_t *p_peek;
    es_format_t fmt;

    if( FUNC8( p_demux->s, &p_peek, 4 ) < 4 ) return VLC_EGENERIC;

    if( p_peek[0] != 0x00 || p_peek[1] != 0x00 ||
        p_peek[2] != 0x01 || p_peek[3] != 0x0f ) /* Sequence header */
    {
        if( !p_demux->obj.force )
        {
            FUNC5( p_demux, "vc-1 module discarded (no startcode)" );
            return VLC_EGENERIC;
        }

        FUNC4( p_demux, "this doesn't look like a VC-1 ES stream, "
                 "continuing anyway" );
    }

    p_sys = FUNC3( sizeof( demux_sys_t ) );
    if( FUNC6(p_sys == NULL) )
        return VLC_ENOMEM;

    p_demux->pf_demux  = Demux;
    p_demux->pf_control= Control;
    p_demux->p_sys     = p_sys;
    p_sys->p_es        = NULL;
    p_sys->i_dts       = 0;
    p_sys->f_fps = FUNC7( p_demux, "vc1-fps" );
    if( p_sys->f_fps < 0.001f )
        p_sys->f_fps = 0.0f;

    /* Load the packetizer */
    FUNC1( &fmt, VIDEO_ES, VLC_CODEC_VC1 );
    p_sys->p_packetizer = FUNC0( p_demux, &fmt, "VC-1" );
    if( !p_sys->p_packetizer )
    {
        FUNC2( p_sys );
        return VLC_EGENERIC;
    }
    return VLC_SUCCESS;
}