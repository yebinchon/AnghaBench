
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ decoder_t ;
struct TYPE_10__ {TYPE_1__* p_header; int end_date; } ;
typedef TYPE_3__ decoder_sys_t ;
struct TYPE_11__ {scalar_t__ i_pts; scalar_t__ i_length; scalar_t__ i_dts; } ;
typedef TYPE_4__ block_t ;
struct TYPE_8__ {int frame_size; } ;


 scalar_t__ date_Get (int *) ;
 scalar_t__ date_Increment (int *,int ) ;

__attribute__((used)) static block_t *SendPacket( decoder_t *p_dec, block_t *p_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;


    p_block->i_dts = p_block->i_pts = date_Get( &p_sys->end_date );

    p_block->i_length =
        date_Increment( &p_sys->end_date,
                            p_sys->p_header->frame_size ) -
        p_block->i_pts;

    return p_block;
}
