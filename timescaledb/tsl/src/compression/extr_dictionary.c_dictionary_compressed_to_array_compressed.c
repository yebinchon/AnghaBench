
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int val; scalar_t__ is_null; int is_done; } ;
struct TYPE_8__ {int element_type; } ;
struct TYPE_7__ {int base; } ;
typedef TYPE_1__ DictionaryDecompressionIterator ;
typedef TYPE_2__ DictionaryCompressed ;
typedef TYPE_3__ DecompressResult ;
typedef int ArrayCompressor ;
typedef int ArrayCompressed ;


 int * array_compressor_alloc (int ) ;
 int array_compressor_append (int *,int ) ;
 int array_compressor_append_null (int *) ;
 int * array_compressor_finish (int *) ;
 int dictionary_decompression_iterator_init (TYPE_1__*,void*,int,int ) ;
 TYPE_3__ dictionary_decompression_iterator_try_next_forward (int *) ;

__attribute__((used)) static ArrayCompressed *
dictionary_compressed_to_array_compressed(DictionaryCompressed *compressed)
{
 ArrayCompressor *compressor = array_compressor_alloc(compressed->element_type);
 DictionaryDecompressionIterator iterator;
 dictionary_decompression_iterator_init(&iterator,
             (void *) compressed,
             1,
             compressed->element_type);

 for (DecompressResult res = dictionary_decompression_iterator_try_next_forward(&iterator.base);
   !res.is_done;
   res = dictionary_decompression_iterator_try_next_forward(&iterator.base))
 {
  if (res.is_null)
   array_compressor_append_null(compressor);
  else
   array_compressor_append(compressor, res.val);
 }

 return array_compressor_finish(compressor);
}
