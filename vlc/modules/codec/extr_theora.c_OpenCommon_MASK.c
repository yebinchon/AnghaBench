#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_7__ {scalar_t__ i_codec; } ;
struct TYPE_6__ {scalar_t__ i_codec; } ;
struct TYPE_8__ {int /*<<< orphan*/  pf_flush; int /*<<< orphan*/  pf_decode; TYPE_2__ fmt_out; int /*<<< orphan*/  pf_packetize; TYPE_4__* p_sys; TYPE_1__ fmt_in; } ;
typedef  TYPE_3__ decoder_t ;
struct TYPE_9__ {int b_packetizer; int b_has_headers; int b_decoded_first_keyframe; int /*<<< orphan*/  ti; int /*<<< orphan*/  tc; int /*<<< orphan*/ * tcx; int /*<<< orphan*/  i_pts; } ;
typedef  TYPE_4__ decoder_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  DecodeVideo ; 
 int /*<<< orphan*/  Flush ; 
 int /*<<< orphan*/  Packetize ; 
 scalar_t__ VLC_CODEC_I420 ; 
 scalar_t__ VLC_CODEC_THEORA ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 TYPE_4__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3( vlc_object_t *p_this, bool b_packetizer )
{
    decoder_t *p_dec = (decoder_t*)p_this;
    decoder_sys_t *p_sys;

    if( p_dec->fmt_in.i_codec != VLC_CODEC_THEORA )
    {
        return VLC_EGENERIC;
    }

    /* Allocate the memory needed to store the decoder's structure */
    if( ( p_dec->p_sys = p_sys = FUNC0(sizeof(*p_sys)) ) == NULL )
        return VLC_ENOMEM;
    p_sys->b_packetizer = b_packetizer;
    p_sys->b_has_headers = false;
    p_sys->i_pts = VLC_TICK_INVALID;
    p_sys->b_decoded_first_keyframe = false;
    p_sys->tcx = NULL;

    if( b_packetizer )
    {
        p_dec->fmt_out.i_codec = VLC_CODEC_THEORA;
        p_dec->pf_packetize = Packetize;
    }
    else
    {
        p_dec->fmt_out.i_codec = VLC_CODEC_I420;
        p_dec->pf_decode = DecodeVideo;
    }
    p_dec->pf_flush = Flush;

    /* Init supporting Theora structures needed in header parsing */
    FUNC1( &p_sys->tc );
    FUNC2( &p_sys->ti );

    return VLC_SUCCESS;
}