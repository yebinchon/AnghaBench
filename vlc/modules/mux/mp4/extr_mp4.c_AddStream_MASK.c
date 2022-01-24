#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_12__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_26__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ sout_mux_t ;
struct TYPE_27__ {int /*<<< orphan*/  pp_streams; scalar_t__ i_nb_streams; int /*<<< orphan*/  muxh; } ;
typedef  TYPE_4__ sout_mux_sys_t ;
struct TYPE_28__ {TYPE_6__* p_sys; TYPE_12__* p_fmt; } ;
typedef  TYPE_5__ sout_input_t ;
struct TYPE_29__ {int /*<<< orphan*/  extrabuilder; int /*<<< orphan*/  tinfo; } ;
typedef  TYPE_6__ mp4_stream_t ;
struct TYPE_25__ {int i_frame_rate; int i_frame_rate_base; } ;
struct TYPE_24__ {int i_rate; } ;
struct TYPE_30__ {TYPE_2__ video; TYPE_1__ audio; } ;
typedef  TYPE_7__ es_format_t ;
struct TYPE_23__ {int /*<<< orphan*/  i_codec; int /*<<< orphan*/  i_cat; } ;

/* Variables and functions */
#define  AUDIO_ES 129 
 int /*<<< orphan*/  BRAND_isom ; 
 int /*<<< orphan*/  BRAND_qt__ ; 
 int CLOCK_FREQ ; 
 int /*<<< orphan*/  EXTRADATA_ISOBMFF ; 
 int /*<<< orphan*/  FRAGMENTED ; 
 int /*<<< orphan*/  QUICKTIME ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,TYPE_6__*) ; 
#define  VIDEO_ES 128 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 TYPE_6__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_12__*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(sout_mux_t *p_mux, sout_input_t *p_input)
{
    sout_mux_sys_t  *p_sys = p_mux->p_sys;
    mp4_stream_t    *p_stream;

    if(!FUNC7(FUNC1(p_mux), p_input->p_fmt,
                      FUNC8(p_sys->muxh, QUICKTIME) ? BRAND_qt__ : BRAND_isom,
                      FUNC8(p_sys->muxh, FRAGMENTED)))
    {
        FUNC11(p_mux, "unsupported codec %4.4s in mp4",
                 (char*)&p_input->p_fmt->i_codec);
        return VLC_EGENERIC;
    }

    if(!(p_stream = FUNC6()))
        return VLC_ENOMEM;

    uint32_t i_track_timescale = CLOCK_FREQ;
    es_format_t trackfmt;
    FUNC4(&trackfmt, p_input->p_fmt->i_cat, p_input->p_fmt->i_codec);
    FUNC3(&trackfmt, p_input->p_fmt);

    switch( p_input->p_fmt->i_cat )
    {
    case AUDIO_ES:
        if(!trackfmt.audio.i_rate)
        {
            FUNC12( p_mux, "no audio rate given for stream %d, assuming 48KHz",
                      p_sys->i_nb_streams );
            trackfmt.audio.i_rate = 48000;
        }
        i_track_timescale = trackfmt.audio.i_rate;
        break;
    case VIDEO_ES:
        if( !trackfmt.video.i_frame_rate ||
            !trackfmt.video.i_frame_rate_base )
        {
            FUNC12( p_mux, "Missing frame rate for stream %d, assuming 25fps",
                      p_sys->i_nb_streams );
            trackfmt.video.i_frame_rate = 25;
            trackfmt.video.i_frame_rate_base = 1;
        }

        i_track_timescale = trackfmt.video.i_frame_rate *
                            trackfmt.video.i_frame_rate_base;

        if( i_track_timescale > CLOCK_FREQ )
            i_track_timescale = CLOCK_FREQ;
        else if( i_track_timescale < 90000 )
            i_track_timescale = 90000;
        break;
    default:
        break;
    }

    p_stream->tinfo = FUNC9(p_sys->muxh, p_sys->i_nb_streams + 1,
                                       &trackfmt, i_track_timescale);
    FUNC2(&trackfmt);
    if(!p_stream->tinfo)
    {
        FUNC5(p_stream);
        return VLC_ENOMEM;
    }

    p_stream->extrabuilder = FUNC13(p_input->p_fmt->i_codec,
                                                       EXTRADATA_ISOBMFF);

    p_input->p_sys          = p_stream;

    FUNC10(p_mux, "adding input");

    FUNC0(p_sys->i_nb_streams, p_sys->pp_streams, p_stream);
    return VLC_SUCCESS;
}