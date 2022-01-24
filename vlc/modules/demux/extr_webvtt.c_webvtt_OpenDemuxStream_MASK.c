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
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  es_format_t ;
struct TYPE_6__ {int /*<<< orphan*/  out; TYPE_2__* p_sys; int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_demux; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_7__ {int /*<<< orphan*/ * es; int /*<<< orphan*/  p_streamparser; } ;
typedef  TYPE_2__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  ControlStream ; 
 int /*<<< orphan*/  DemuxStream ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  SPU_ES ; 
 int /*<<< orphan*/  StreamParserCueDoneHandler ; 
 int /*<<< orphan*/  StreamParserGetCueHandler ; 
 int /*<<< orphan*/  VLC_CODEC_WEBVTT ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 TYPE_2__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC7 ( vlc_object_t *p_this )
{
    demux_t        *p_demux = (demux_t*)p_this;
    demux_sys_t    *p_sys;

    int i_ret = FUNC0( p_demux );
    if( i_ret != VLC_SUCCESS )
        return i_ret;

    p_demux->pf_demux = DemuxStream;
    p_demux->pf_control = ControlStream;

    p_demux->p_sys = p_sys = FUNC1( 1, sizeof( demux_sys_t ) );
    if( p_sys == NULL )
        return VLC_ENOMEM;

    p_sys->p_streamparser = FUNC6( p_demux,
                                          StreamParserGetCueHandler,
                                          StreamParserCueDoneHandler,
                                          NULL );
    if( !p_sys->p_streamparser )
    {
        FUNC5( p_this );
        return VLC_EGENERIC;
    }

    es_format_t fmt;
    FUNC3( &fmt, SPU_ES, VLC_CODEC_WEBVTT );
    p_sys->es = FUNC4( p_demux->out, &fmt );
    FUNC2( &fmt );
    if( p_sys->es == NULL )
    {
        FUNC5( p_this );
        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}