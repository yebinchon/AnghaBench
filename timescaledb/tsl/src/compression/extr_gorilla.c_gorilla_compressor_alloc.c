
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int has_nulls; scalar_t__ prev_val; scalar_t__ prev_trailing_zeros; scalar_t__ prev_leading_zeroes; int nulls; int xors; int bits_used_per_xor; int leading_zeros; int tag1s; int tag0s; } ;
typedef TYPE_1__ GorillaCompressor ;


 int bit_array_init (int *) ;
 TYPE_1__* palloc (int) ;
 int simple8brle_compressor_init (int *) ;

GorillaCompressor *
gorilla_compressor_alloc(void)
{
 GorillaCompressor *compressor = palloc(sizeof(*compressor));
 simple8brle_compressor_init(&compressor->tag0s);
 simple8brle_compressor_init(&compressor->tag1s);
 bit_array_init(&compressor->leading_zeros);
 simple8brle_compressor_init(&compressor->bits_used_per_xor);
 bit_array_init(&compressor->xors);
 simple8brle_compressor_init(&compressor->nulls);
 compressor->has_nulls = 0;
 compressor->prev_leading_zeroes = 0;
 compressor->prev_trailing_zeros = 0;
 compressor->prev_val = 0;
 return compressor;
}
