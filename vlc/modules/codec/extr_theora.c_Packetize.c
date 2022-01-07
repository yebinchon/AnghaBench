
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decoder_t ;
typedef int block_t ;


 int * DecodeBlock (int *,int *) ;

__attribute__((used)) static block_t *Packetize( decoder_t *p_dec, block_t **pp_block )
{
    if( pp_block == ((void*)0) )
        return ((void*)0);
    block_t *p_block = *pp_block; *pp_block = ((void*)0);
    if( p_block == ((void*)0) )
        return ((void*)0);
    return DecodeBlock( p_dec, p_block );
}
