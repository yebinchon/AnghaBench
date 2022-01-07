
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decoder_t ;
typedef int block_t ;


 int block_Release (int *) ;

__attribute__((used)) static block_t *PacketizeClosed ( decoder_t *p_dec, block_t **pp_block )
{
    (void) p_dec;
    if( pp_block != ((void*)0) && *pp_block != ((void*)0) )
        block_Release( *pp_block );
    return ((void*)0);
}
