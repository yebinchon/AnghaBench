
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* header; int * nulls; int xors; int * num_bits_used_per_xor; int leading_zeros; int * tag1s; int * tag0s; } ;
struct TYPE_12__ {int forward; int try_next; int element_type; int compression_algorithm; } ;
struct TYPE_11__ {int has_nulls; TYPE_4__ base; TYPE_8__ gorilla_data; int prev_val; int prev_xor_bits_used; int num_bits_used; int leading_zeros; int prev_leading_zeroes; int nulls; int xors; int tag1s; int tag0s; } ;
struct TYPE_10__ {int val; int is_done; } ;
struct TYPE_9__ {int last_value; } ;
typedef TYPE_2__ Simple8bRleDecompressResult ;
typedef int Oid ;
typedef TYPE_3__ GorillaDecompressionIterator ;
typedef TYPE_4__ DecompressionIterator ;
typedef int Datum ;


 int Assert (int) ;
 int BITS_PER_LEADING_ZEROS ;
 int COMPRESSION_ALGORITHM_GORILLA ;
 int bit_array_iter_next_rev (int *,int ) ;
 int bit_array_iterator_init_rev (int *,int *) ;
 int compressed_gorilla_data_init_from_datum (TYPE_8__*,int ) ;
 int gorilla_decompression_iterator_try_next_reverse ;
 TYPE_3__* palloc (int) ;
 int simple8brle_decompression_iterator_init_reverse (int *,int *) ;
 TYPE_2__ simple8brle_decompression_iterator_try_next_reverse (int *) ;

DecompressionIterator *
gorilla_decompression_iterator_from_datum_reverse(Datum gorilla_compressed, Oid element_type)
{
 GorillaDecompressionIterator *iter = palloc(sizeof(*iter));
 Simple8bRleDecompressResult num_xor_bits;

 iter->base.compression_algorithm = COMPRESSION_ALGORITHM_GORILLA;
 iter->base.forward = 0;
 iter->base.element_type = element_type;
 iter->base.try_next = gorilla_decompression_iterator_try_next_reverse;
 compressed_gorilla_data_init_from_datum(&iter->gorilla_data, gorilla_compressed);

 simple8brle_decompression_iterator_init_reverse(&iter->tag0s, iter->gorilla_data.tag0s);
 simple8brle_decompression_iterator_init_reverse(&iter->tag1s, iter->gorilla_data.tag1s);
 bit_array_iterator_init_rev(&iter->leading_zeros, &iter->gorilla_data.leading_zeros);
 simple8brle_decompression_iterator_init_reverse(&iter->num_bits_used,
             iter->gorilla_data.num_bits_used_per_xor);
 bit_array_iterator_init_rev(&iter->xors, &iter->gorilla_data.xors);

 iter->has_nulls = iter->gorilla_data.nulls != ((void*)0);
 if (iter->has_nulls)
  simple8brle_decompression_iterator_init_reverse(&iter->nulls, iter->gorilla_data.nulls);


 iter->prev_leading_zeroes =
  bit_array_iter_next_rev(&iter->leading_zeros, BITS_PER_LEADING_ZEROS);
 num_xor_bits = simple8brle_decompression_iterator_try_next_reverse(&iter->num_bits_used);
 Assert(!num_xor_bits.is_done);
 iter->prev_xor_bits_used = num_xor_bits.val;
 iter->prev_val = iter->gorilla_data.header->last_value;
 return &iter->base;
}
