
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int h264_picture_parameter_set_t ;
struct TYPE_5__ {TYPE_1__* pps; int * p_active_pps; } ;
typedef TYPE_2__ decoder_sys_t ;
typedef int block_t ;
struct TYPE_4__ {int * p_pps; int * p_block; } ;


 int block_Release (int *) ;
 int h264_release_pps (int *) ;

__attribute__((used)) static void StorePPS( decoder_sys_t *p_sys, uint8_t i_id,
                      block_t *p_block, h264_picture_parameter_set_t *p_pps )
{
    if( p_sys->pps[i_id].p_block )
        block_Release( p_sys->pps[i_id].p_block );
    if( p_sys->pps[i_id].p_pps )
        h264_release_pps( p_sys->pps[i_id].p_pps );
    if( p_sys->pps[i_id].p_pps == p_sys->p_active_pps )
        p_sys->p_active_pps = ((void*)0);
    p_sys->pps[i_id].p_block = p_block;
    p_sys->pps[i_id].p_pps = p_pps;
}
