
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * nulls; int xors; int * num_bits_used_per_xor; int leading_zeros; int * tag1s; int * tag0s; } ;
struct TYPE_7__ {int forward; int try_next; int element_type; int compression_algorithm; } ;
struct TYPE_6__ {int has_nulls; TYPE_2__ base; TYPE_5__ gorilla_data; int nulls; int xors; int num_bits_used; int leading_zeros; int tag1s; int tag0s; scalar_t__ prev_xor_bits_used; scalar_t__ prev_leading_zeroes; scalar_t__ prev_val; } ;
typedef int Oid ;
typedef TYPE_1__ GorillaDecompressionIterator ;
typedef TYPE_2__ DecompressionIterator ;
typedef int Datum ;


 int COMPRESSION_ALGORITHM_GORILLA ;
 int bit_array_iterator_init (int *,int *) ;
 int compressed_gorilla_data_init_from_datum (TYPE_5__*,int ) ;
 int gorilla_decompression_iterator_try_next_forward ;
 TYPE_1__* palloc (int) ;
 int simple8brle_decompression_iterator_init_forward (int *,int *) ;

DecompressionIterator *
gorilla_decompression_iterator_from_datum_forward(Datum gorilla_compressed, Oid element_type)
{
 GorillaDecompressionIterator *iterator = palloc(sizeof(*iterator));
 iterator->base.compression_algorithm = COMPRESSION_ALGORITHM_GORILLA;
 iterator->base.forward = 1;
 iterator->base.element_type = element_type;
 iterator->base.try_next = gorilla_decompression_iterator_try_next_forward;
 iterator->prev_val = 0;
 iterator->prev_leading_zeroes = 0;
 iterator->prev_xor_bits_used = 0;
 compressed_gorilla_data_init_from_datum(&iterator->gorilla_data, gorilla_compressed);

 simple8brle_decompression_iterator_init_forward(&iterator->tag0s, iterator->gorilla_data.tag0s);
 simple8brle_decompression_iterator_init_forward(&iterator->tag1s, iterator->gorilla_data.tag1s);
 bit_array_iterator_init(&iterator->leading_zeros, &iterator->gorilla_data.leading_zeros);
 simple8brle_decompression_iterator_init_forward(&iterator->num_bits_used,
             iterator->gorilla_data.num_bits_used_per_xor);
 bit_array_iterator_init(&iterator->xors, &iterator->gorilla_data.xors);

 iterator->has_nulls = iterator->gorilla_data.nulls != ((void*)0);
 if (iterator->has_nulls)
  simple8brle_decompression_iterator_init_forward(&iterator->nulls,
              iterator->gorilla_data.nulls);

 return &iterator->base;
}
