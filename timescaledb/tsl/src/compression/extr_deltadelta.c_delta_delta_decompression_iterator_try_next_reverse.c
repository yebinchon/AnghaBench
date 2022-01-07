
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ compression_algorithm; int element_type; int forward; } ;
typedef int DeltaDeltaDecompressionIterator ;
typedef TYPE_1__ DecompressionIterator ;
typedef int DecompressResult ;


 int Assert (int) ;
 scalar_t__ COMPRESSION_ALGORITHM_DELTADELTA ;
 int convert_from_internal (int ,int ) ;
 int delta_delta_decompression_iterator_try_next_reverse_internal (int *) ;

DecompressResult
delta_delta_decompression_iterator_try_next_reverse(DecompressionIterator *iter)
{
 Assert(iter->compression_algorithm == COMPRESSION_ALGORITHM_DELTADELTA && !iter->forward);
 return convert_from_internal(delta_delta_decompression_iterator_try_next_reverse_internal(
          (DeltaDeltaDecompressionIterator *) iter),
         iter->element_type);
}
