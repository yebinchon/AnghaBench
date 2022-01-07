
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ compression_algorithm; int element_type; int forward; } ;
typedef int GorillaDecompressionIterator ;
typedef TYPE_1__ DecompressionIterator ;
typedef int DecompressResult ;


 int Assert (int) ;
 scalar_t__ COMPRESSION_ALGORITHM_GORILLA ;
 int convert_from_internal (int ,int ) ;
 int gorilla_decompression_iterator_try_next_reverse_internal (int *) ;

DecompressResult
gorilla_decompression_iterator_try_next_reverse(DecompressionIterator *iter_base)
{
 Assert(iter_base->compression_algorithm == COMPRESSION_ALGORITHM_GORILLA &&
     !iter_base->forward);
 return convert_from_internal(gorilla_decompression_iterator_try_next_reverse_internal(
          (GorillaDecompressionIterator *) iter_base),
         iter_base->element_type);
}
