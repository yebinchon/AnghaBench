#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_12__ {int b_packetized; } ;
struct TYPE_13__ {scalar_t__ i_codec; } ;
struct TYPE_9__ {int /*<<< orphan*/  pf_flush; int /*<<< orphan*/  pf_packetize; TYPE_5__ fmt_out; TYPE_6__ fmt_in; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ decoder_t ;
struct TYPE_8__ {int b_has_visible_frame; void* pts; void* dts; } ;
struct TYPE_10__ {scalar_t__ i_next_block_flags; scalar_t__ i_seen; TYPE_1__ tu; int /*<<< orphan*/ * p_sequence_header; int /*<<< orphan*/ * p_sequence_header_block; } ;
typedef  TYPE_3__ av1_sys_t ;
struct TYPE_11__ {int /*<<< orphan*/  post; int /*<<< orphan*/  frame; int /*<<< orphan*/  pre; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PacketizeFlush ; 
 int /*<<< orphan*/  PacketizeOBU ; 
 scalar_t__ VLC_CODEC_AV1 ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 void* VLC_TICK_INVALID ; 
 TYPE_3__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  obus ; 
 TYPE_4__ tu ; 

__attribute__((used)) static int FUNC3(vlc_object_t *p_this)
{
    decoder_t *p_dec = (decoder_t*)p_this;
    av1_sys_t *p_sys;

    if (p_dec->fmt_in.i_codec != VLC_CODEC_AV1)
        return VLC_EGENERIC;

    p_dec->p_sys = p_sys = FUNC1(1, sizeof(av1_sys_t));
    if (!p_dec->p_sys)
        return VLC_ENOMEM;

    FUNC0(obus);
    p_sys->p_sequence_header_block = NULL;
    p_sys->p_sequence_header = NULL;
    p_sys->tu.b_has_visible_frame = false;
    p_sys->tu.dts = VLC_TICK_INVALID;
    p_sys->tu.pts = VLC_TICK_INVALID;
    p_sys->i_seen = 0;
    p_sys->i_next_block_flags = 0;
    FUNC0(tu.pre);
    FUNC0(tu.frame);
    FUNC0(tu.post);

    /* Copy properties */
    FUNC2(&p_dec->fmt_out, &p_dec->fmt_in);
    p_dec->fmt_out.b_packetized = true;

    p_dec->pf_packetize = PacketizeOBU;
    p_dec->pf_flush = PacketizeFlush;

    return VLC_SUCCESS;
}