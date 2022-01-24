#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  es_format_t ;
struct TYPE_9__ {scalar_t__ force; } ;
struct TYPE_10__ {int /*<<< orphan*/  out; TYPE_3__* p_sys; int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_demux; TYPE_1__ obj; int /*<<< orphan*/  s; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_11__ {int b_start; int /*<<< orphan*/ * p_es; int /*<<< orphan*/  p_packetizer; } ;
typedef  TYPE_3__ demux_sys_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Control ; 
 int /*<<< orphan*/  Demux ; 
 int /*<<< orphan*/  VIDEO_ES ; 
 int /*<<< orphan*/  VLC_CODEC_MPGV ; 
 int VLC_EGENERIC ; 
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_3__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int const**,int) ; 

__attribute__((used)) static int FUNC10( vlc_object_t * p_this )
{
    demux_t     *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys;
    bool   b_forced = false;

    const uint8_t *p_peek;

    es_format_t  fmt;

    if( FUNC9( p_demux->s, &p_peek, 8 ) < 8 )
    {
        FUNC7( p_demux, "cannot peek" );
        return VLC_EGENERIC;
    }

    if( p_demux->obj.force )
        b_forced = true;

    if( p_peek[0] != 0x00 || p_peek[1] != 0x00 || p_peek[2] != 0x01 )
    {
        if( !b_forced ) return VLC_EGENERIC;

        FUNC8( p_demux, "this doesn't look like an MPEG ES stream, continuing" );
    }

    if( FUNC0( p_peek ) != VLC_SUCCESS )
    {
        if( !b_forced ) return VLC_EGENERIC;
        FUNC8( p_demux, "this seems to be a system stream (PS plug-in ?), but continuing" );
    }
    p_demux->pf_demux  = Demux;
    p_demux->pf_control= Control;
    p_demux->p_sys     = p_sys = FUNC6( sizeof( demux_sys_t ) );
    p_sys->b_start     = true;
    p_sys->p_es        = NULL;

    /* Load the mpegvideo packetizer */
    FUNC3( &fmt, VIDEO_ES, VLC_CODEC_MPGV );
    p_sys->p_packetizer = FUNC2( p_demux, &fmt, "mpeg video" );
    if( !p_sys->p_packetizer )
    {
        FUNC5( p_sys );
        return VLC_EGENERIC;
    }

    /* create the output */
    p_sys->p_es = FUNC4( p_demux->out, &fmt );
    if( p_sys->p_es == NULL )
    {
        FUNC1( p_this );
        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}