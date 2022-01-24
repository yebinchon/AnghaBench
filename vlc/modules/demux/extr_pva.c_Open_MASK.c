#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  char uint8_t ;
struct TYPE_10__ {int b_packetized; } ;
typedef  TYPE_2__ es_format_t ;
struct TYPE_9__ {int /*<<< orphan*/  force; } ;
struct TYPE_11__ {int /*<<< orphan*/  out; TYPE_4__* p_sys; int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_demux; TYPE_1__ obj; int /*<<< orphan*/  s; } ;
typedef  TYPE_3__ demux_t ;
struct TYPE_12__ {int i_vc; int i_ac; int b_pcr_audio; int /*<<< orphan*/ * p_es; int /*<<< orphan*/ * p_pes; void* p_video; void* p_audio; } ;
typedef  TYPE_4__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_ES ; 
 int /*<<< orphan*/  Control ; 
 int /*<<< orphan*/  Demux ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  VIDEO_ES ; 
 int /*<<< orphan*/  VLC_CODEC_MPGA ; 
 int /*<<< orphan*/  VLC_CODEC_MPGV ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_4__* FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char const**,int) ; 

__attribute__((used)) static int FUNC6( vlc_object_t *p_this )
{
    demux_t     *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys;
    es_format_t  fmt;
    const uint8_t *p_peek;

    if( FUNC5( p_demux->s, &p_peek, 8 ) < 8 ) return VLC_EGENERIC;
    if( p_peek[0] != 'A' || p_peek[1] != 'V' || p_peek[4] != 0x55 )
    {
        /* In case we had forced this demuxer we try to resynch */
        if( !p_demux->obj.force || FUNC0( p_demux ) )
            return VLC_EGENERIC;
    }

    p_sys = FUNC3( sizeof( demux_sys_t ) );
    if( FUNC4(p_sys == NULL) )
        return VLC_ENOMEM;

    /* Fill p_demux field */
    p_demux->pf_demux = Demux;
    p_demux->pf_control = Control;
    p_demux->p_sys = p_sys;

    /* Register one audio and one video stream */
    FUNC1( &fmt, AUDIO_ES, VLC_CODEC_MPGA );
    fmt.b_packetized = false;
    p_sys->p_audio = FUNC2( p_demux->out, &fmt );

    FUNC1( &fmt, VIDEO_ES, VLC_CODEC_MPGV );
    fmt.b_packetized = false;
    p_sys->p_video = FUNC2( p_demux->out, &fmt );

    p_sys->i_vc    = -1;
    p_sys->i_ac    = -1;
    p_sys->p_pes   = NULL;
    p_sys->p_es    = NULL;

    p_sys->b_pcr_audio = false;

    return VLC_SUCCESS;
}