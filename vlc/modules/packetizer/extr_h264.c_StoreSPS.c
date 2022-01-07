
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int h264_sequence_parameter_set_t ;
struct TYPE_5__ {TYPE_1__* sps; int * p_active_sps; } ;
typedef TYPE_2__ decoder_sys_t ;
typedef int block_t ;
struct TYPE_4__ {int * p_sps; int * p_block; } ;


 int block_Release (int *) ;
 int h264_release_sps (int *) ;

__attribute__((used)) static void StoreSPS( decoder_sys_t *p_sys, uint8_t i_id,
                      block_t *p_block, h264_sequence_parameter_set_t *p_sps )
{
    if( p_sys->sps[i_id].p_block )
        block_Release( p_sys->sps[i_id].p_block );
    if( p_sys->sps[i_id].p_sps )
        h264_release_sps( p_sys->sps[i_id].p_sps );
    if( p_sys->sps[i_id].p_sps == p_sys->p_active_sps )
        p_sys->p_active_sps = ((void*)0);
    p_sys->sps[i_id].p_block = p_block;
    p_sys->sps[i_id].p_sps = p_sps;
}
