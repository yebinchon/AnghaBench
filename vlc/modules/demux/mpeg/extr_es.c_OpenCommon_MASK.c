#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_21__ {int* pb_gain; double* pf_gain; int* pb_peak; double* pf_peak; } ;
struct TYPE_22__ {TYPE_2__ audio_replay_gain; int /*<<< orphan*/  i_original_fourcc; } ;
typedef  TYPE_3__ es_format_t ;
struct TYPE_23__ {int /*<<< orphan*/  s; TYPE_5__* p_sys; } ;
typedef  TYPE_4__ demux_t ;
struct TYPE_25__ {int /*<<< orphan*/  psz_name; int /*<<< orphan*/  i_codec; scalar_t__ (* pf_init ) (TYPE_4__*) ;} ;
struct TYPE_20__ {int /*<<< orphan*/  p_entry; int /*<<< orphan*/  i_count; scalar_t__ i_current; } ;
struct TYPE_24__ {int b_start; int b_estimate_bitrate; int b_big_endian; double* rgf_replay_gain; double* rgf_replay_peak; int /*<<< orphan*/ * p_packetized_data; TYPE_13__* p_packetizer; TYPE_6__ codec; int /*<<< orphan*/  i_original; int /*<<< orphan*/  i_stream_offset; TYPE_1__ chapters; int /*<<< orphan*/  f_fps; scalar_t__ i_bitrate_avg; int /*<<< orphan*/ * p_es; } ;
typedef  TYPE_5__ demux_sys_t ;
typedef  TYPE_6__ codec_t ;
struct TYPE_19__ {TYPE_3__ fmt_out; } ;

/* Variables and functions */
 int AUDIO_REPLAY_GAIN_MAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (TYPE_4__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 TYPE_13__* FUNC3 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char*,char const*) ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11( demux_t *p_demux,
                       int i_cat, const codec_t *p_codec, uint64_t i_bs_offset )
{
    demux_sys_t *p_sys;

    es_format_t fmt;

    FUNC0(); p_sys = p_demux->p_sys;
    FUNC6( p_sys, 0, sizeof( demux_sys_t ) );
    p_sys->codec = *p_codec;
    p_sys->p_es = NULL;
    p_sys->b_start = true;
    p_sys->i_stream_offset = i_bs_offset;
    p_sys->b_estimate_bitrate = true;
    p_sys->i_bitrate_avg = 0;
    p_sys->b_big_endian = false;
    p_sys->f_fps = FUNC9( p_demux, "es-fps" );
    p_sys->p_packetized_data = NULL;
    p_sys->chapters.i_current = 0;
    FUNC2(p_sys->chapters.i_count, p_sys->chapters.p_entry);

    if( FUNC10( p_demux->s, p_sys->i_stream_offset ) )
    {
        FUNC5( p_sys );
        return VLC_EGENERIC;
    }

    if( p_sys->codec.pf_init( p_demux ) )
    {
        FUNC5( p_sys );
        return VLC_EGENERIC;
    }

    FUNC7( p_demux, "detected format %4.4s", (const char*)&p_sys->codec.i_codec );

    /* Load the audio packetizer */
    FUNC4( &fmt, i_cat, p_sys->codec.i_codec );
    fmt.i_original_fourcc = p_sys->i_original;
    p_sys->p_packetizer = FUNC3( p_demux, &fmt, p_sys->codec.psz_name );
    if( !p_sys->p_packetizer )
    {
        FUNC5( p_sys );
        return VLC_EGENERIC;
    }

    es_format_t *p_fmt = &p_sys->p_packetizer->fmt_out;
    for( int i = 0; i < AUDIO_REPLAY_GAIN_MAX; i++ )
    {
        if ( p_sys->rgf_replay_gain[i] != 0.0 )
        {
            p_fmt->audio_replay_gain.pb_gain[i] = true;
            p_fmt->audio_replay_gain.pf_gain[i] = p_sys->rgf_replay_gain[i];
        }
        if ( p_sys->rgf_replay_peak[i] != 0.0 )
        {
            p_fmt->audio_replay_gain.pb_peak[i] = true;
            p_fmt->audio_replay_gain.pf_peak[i] = p_sys->rgf_replay_peak[i];
        }
    }

    for( ;; )
    {
        if( FUNC1( p_demux, &p_sys->p_packetized_data ) )
            break;
        if( p_sys->p_packetized_data )
            break;
    }

    return VLC_SUCCESS;
}