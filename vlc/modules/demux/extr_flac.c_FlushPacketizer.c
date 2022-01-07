
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * (* pf_packetize ) (TYPE_1__*,int *) ;int (* pf_flush ) (TYPE_1__*) ;} ;
typedef TYPE_1__ decoder_t ;
typedef int block_t ;


 int block_Release (int *) ;
 int stub1 (TYPE_1__*) ;
 int * stub2 (TYPE_1__*,int *) ;

__attribute__((used)) static void FlushPacketizer( decoder_t *p_packetizer )
{
    if( p_packetizer->pf_flush )
        p_packetizer->pf_flush( p_packetizer );
    else
    {
        block_t *p_block_out;
        while( (p_block_out = p_packetizer->pf_packetize( p_packetizer, ((void*)0) )) )
            block_Release( p_block_out );
    }
}
