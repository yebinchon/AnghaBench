#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_19__ {int /*<<< orphan*/  i_chan_mode; scalar_t__ i_rate; } ;
struct TYPE_20__ {scalar_t__ i_profile; scalar_t__ i_level; TYPE_3__ audio; } ;
struct TYPE_17__ {int /*<<< orphan*/  i_chan_mode; scalar_t__ i_rate; } ;
struct TYPE_18__ {TYPE_1__ audio; } ;
struct TYPE_21__ {TYPE_4__ fmt_in; int /*<<< orphan*/  pf_flush; int /*<<< orphan*/  pf_decode; TYPE_2__ fmt_out; TYPE_6__* p_sys; } ;
typedef  TYPE_5__ decoder_t ;
struct TYPE_22__ {int b_extract; int /*<<< orphan*/  end_date; scalar_t__ i_previous_layout; scalar_t__ i_previous_channels; scalar_t__ i_reject_count; int /*<<< orphan*/  const* p_codec; TYPE_7__* p_context; } ;
typedef  TYPE_6__ decoder_sys_t ;
struct TYPE_23__ {scalar_t__ profile; scalar_t__ level; } ;
typedef  TYPE_7__ AVCodecContext ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 int /*<<< orphan*/  DecodeAudio ; 
 scalar_t__ FF_LEVEL_UNKNOWN ; 
 scalar_t__ FF_PROFILE_UNKNOWN ; 
 int /*<<< orphan*/  Flush ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,TYPE_7__*) ; 
 scalar_t__ FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 TYPE_7__* FUNC5 (TYPE_5__*,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 TYPE_6__* FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9( vlc_object_t *obj )
{
    decoder_t *p_dec = (decoder_t *)obj;
    const AVCodec *codec;
    AVCodecContext *avctx = FUNC5( p_dec, &codec );
    if( avctx == NULL )
        return VLC_EGENERIC;

    /* Allocate the memory needed to store the decoder's structure */
    decoder_sys_t *p_sys = FUNC7(sizeof(*p_sys));
    if( FUNC8(p_sys == NULL) )
    {
        FUNC3( &avctx );
        return VLC_ENOMEM;
    }

    p_dec->p_sys = p_sys;
    p_sys->p_context = avctx;
    p_sys->p_codec = codec;

    // Initialize decoder extradata
    FUNC0( p_dec, avctx );

    /* ***** Open the codec ***** */
    if( FUNC1( p_dec ) < 0 )
    {
        FUNC6( p_sys );
        FUNC3( &avctx );
        return VLC_EGENERIC;
    }

    p_sys->i_reject_count = 0;
    p_sys->b_extract = false;
    p_sys->i_previous_channels = 0;
    p_sys->i_previous_layout = 0;

    /* */
    /* Try to set as much information as possible but do not trust it */
    FUNC2( p_dec, false );

    if( !p_dec->fmt_out.audio.i_rate )
        p_dec->fmt_out.audio.i_rate = p_dec->fmt_in.audio.i_rate;
    if( p_dec->fmt_out.audio.i_rate )
        FUNC4( &p_sys->end_date, p_dec->fmt_out.audio.i_rate, 1 );
    p_dec->fmt_out.audio.i_chan_mode = p_dec->fmt_in.audio.i_chan_mode;

    p_dec->pf_decode = DecodeAudio;
    p_dec->pf_flush  = Flush;

    /* XXX: Writing input format makes little sense. */
    if( avctx->profile != FF_PROFILE_UNKNOWN )
        p_dec->fmt_in.i_profile = avctx->profile;
    if( avctx->level != FF_LEVEL_UNKNOWN )
        p_dec->fmt_in.i_level = avctx->level;

    return VLC_SUCCESS;
}