
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p_private; scalar_t__ (* pf_validate ) (int ,int *) ;int * (* pf_drain ) (int ) ;} ;
typedef TYPE_1__ packetizer_t ;
typedef int block_t ;


 int block_Release (int *) ;
 int * packetizer_PacketizeBlock (TYPE_1__*,int **) ;
 int * stub1 (int ) ;
 scalar_t__ stub2 (int ,int *) ;

__attribute__((used)) static block_t *packetizer_Packetize( packetizer_t *p_pack, block_t **pp_block )
{
    block_t *p_out = packetizer_PacketizeBlock( p_pack, pp_block );
    if( p_out )
        return p_out;

    if( pp_block == ((void*)0) && p_pack->pf_drain )
    {
        p_out = p_pack->pf_drain( p_pack->p_private );
        if( p_out && p_pack->pf_validate( p_pack->p_private, p_out ) )
        {
            block_Release( p_out );
            p_out = ((void*)0);
        }
    }
    return p_out;
}
