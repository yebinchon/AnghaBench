
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ decoder_t ;
struct TYPE_8__ {int b_has_visible_frame; void* pts; void* dts; } ;
struct TYPE_7__ {int p_chain; } ;
struct TYPE_10__ {int i_next_block_flags; scalar_t__ i_seen; TYPE_2__ tu; TYPE_1__ obus; int * p_sequence_header_block; int * p_sequence_header; } ;
typedef TYPE_4__ av1_sys_t ;


 int AV1_release_sequence_header (int *) ;
 int BLOCK_FLAG_DISCONTINUITY ;
 int INITQ (int ) ;
 int OutputQueues (TYPE_3__*,int) ;
 void* VLC_TICK_INVALID ;
 int block_ChainRelease (int ) ;
 int block_Release (int *) ;
 int obus ;

__attribute__((used)) static void PacketizeFlush(decoder_t *p_dec)
{
    av1_sys_t *p_sys = p_dec->p_sys;

    block_ChainRelease(OutputQueues(p_dec, 0));

    if(p_sys->p_sequence_header)
    {
        AV1_release_sequence_header(p_sys->p_sequence_header);
        p_sys->p_sequence_header = ((void*)0);
    }
    if(p_sys->p_sequence_header_block)
    {
        block_Release(p_sys->p_sequence_header_block);
        p_sys->p_sequence_header_block = ((void*)0);
    }

    block_ChainRelease(p_sys->obus.p_chain);
    INITQ(obus);

    p_sys->tu.dts = VLC_TICK_INVALID;
    p_sys->tu.pts = VLC_TICK_INVALID;
    p_sys->tu.b_has_visible_frame = 0;
    p_sys->i_seen = 0;
    p_sys->i_next_block_flags = BLOCK_FLAG_DISCONTINUITY;
}
