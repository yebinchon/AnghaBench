
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_private; int (* pf_reset ) (int ,int) ;scalar_t__ i_offset; int bytestream; int i_state; } ;
typedef TYPE_1__ packetizer_t ;


 int STATE_NOSYNC ;
 int block_BytestreamEmpty (int *) ;
 int stub1 (int ,int) ;

__attribute__((used)) static inline void packetizer_Flush( packetizer_t *p_pack )
{
    p_pack->i_state = STATE_NOSYNC;
    block_BytestreamEmpty( &p_pack->bytestream );
    p_pack->i_offset = 0;
    p_pack->pf_reset( p_pack->p_private, 1 );
}
