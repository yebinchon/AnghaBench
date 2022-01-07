
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int data_len; int data; int * sizes; int * nulls; } ;
struct TYPE_7__ {int forward; int element_type; int try_next; int compression_algorithm; } ;
struct TYPE_8__ {int has_nulls; TYPE_1__ base; int deserializer; scalar_t__ data_offset; int num_data_bytes; int data; int sizes; int nulls; } ;
typedef int Size ;
typedef int Oid ;
typedef TYPE_1__ DecompressionIterator ;
typedef TYPE_2__ ArrayDecompressionIterator ;
typedef TYPE_3__ ArrayCompressedData ;


 int COMPRESSION_ALGORITHM_ARRAY ;
 TYPE_3__ array_compressed_data_from_bytes (char const*,int ,int ,int) ;
 int array_decompression_iterator_try_next_forward ;
 int create_datum_deserializer (int ) ;
 TYPE_2__* palloc (int) ;
 int simple8brle_decompression_iterator_init_forward (int *,int *) ;

DecompressionIterator *
array_decompression_iterator_alloc_forward(const char *serialized_data, Size data_size,
             Oid element_type, bool has_nulls)
{
 ArrayCompressedData data =
  array_compressed_data_from_bytes(serialized_data, data_size, element_type, has_nulls);

 ArrayDecompressionIterator *iterator = palloc(sizeof(*iterator));
 iterator->base.compression_algorithm = COMPRESSION_ALGORITHM_ARRAY;
 iterator->base.forward = 1;
 iterator->base.element_type = element_type;
 iterator->base.try_next = array_decompression_iterator_try_next_forward;

 iterator->has_nulls = data.nulls != ((void*)0);
 if (iterator->has_nulls)
  simple8brle_decompression_iterator_init_forward(&iterator->nulls, data.nulls);

 simple8brle_decompression_iterator_init_forward(&iterator->sizes, data.sizes);

 iterator->data = data.data;
 iterator->num_data_bytes = data.data_len;
 iterator->data_offset = 0;
 iterator->deserializer = create_datum_deserializer(iterator->base.element_type);

 return &iterator->base;
}
