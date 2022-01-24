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
struct TYPE_6__ {scalar_t__ i_codec; } ;
struct TYPE_7__ {scalar_t__ i_codec; } ;
struct TYPE_8__ {TYPE_1__ fmt_out; int /*<<< orphan*/  pf_decode; int /*<<< orphan*/  pf_packetize; TYPE_4__* p_sys; TYPE_2__ fmt_in; } ;
typedef  TYPE_3__ decoder_t ;
struct TYPE_9__ {int b_packetizer; int /*<<< orphan*/ * p_spu; int /*<<< orphan*/  i_state; } ;
typedef  TYPE_4__ decoder_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  Decode ; 
 int /*<<< orphan*/  Packetize ; 
 int /*<<< orphan*/  SUBTITLE_BLOCK_EMPTY ; 
 scalar_t__ VLC_CODEC_CVD ; 
 scalar_t__ VLC_CODEC_YUVP ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 TYPE_4__* FUNC0 (int) ; 

__attribute__((used)) static int FUNC1( vlc_object_t *p_this, bool b_packetizer )
{
    decoder_t     *p_dec = (decoder_t*)p_this;
    decoder_sys_t *p_sys;

    if( p_dec->fmt_in.i_codec != VLC_CODEC_CVD )
        return VLC_EGENERIC;

    p_dec->p_sys = p_sys = FUNC0( sizeof( decoder_sys_t ) );
    if( !p_sys )
        return VLC_ENOMEM;

    p_sys->b_packetizer  = b_packetizer;

    p_sys->i_state = SUBTITLE_BLOCK_EMPTY;
    p_sys->p_spu   = NULL;

    if( b_packetizer )
    {
        p_dec->pf_packetize    = Packetize;
        p_dec->fmt_out.i_codec = VLC_CODEC_CVD;
    }
    else
    {
        p_dec->pf_decode       = Decode;
        p_dec->fmt_out.i_codec = VLC_CODEC_YUVP;
    }

    return VLC_SUCCESS;
}