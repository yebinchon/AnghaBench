
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decoder_owner {int p_fifo; } ;
typedef int decoder_t ;


 size_t block_FifoSize (int ) ;
 struct decoder_owner* dec_get_owner (int *) ;

size_t input_DecoderGetFifoSize( decoder_t *p_dec )
{
    struct decoder_owner *p_owner = dec_get_owner( p_dec );

    return block_FifoSize( p_owner->p_fifo );
}
