
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ valid; TYPE_2__* fc; } ;
typedef TYPE_1__ cached_converted_chunk ;
struct TYPE_5__ {struct TYPE_5__* pointer_to_free; } ;


 int cache_size ;
 TYPE_1__** chunk_cache ;
 int free (TYPE_2__*) ;

void reset_cache_size(int size)
{
   int i,j;
   for (j=size; j < cache_size; ++j) {
      for (i=size; i < cache_size; ++i) {
         cached_converted_chunk *ccc = &chunk_cache[j][i];
         if (ccc->valid) {
            if (ccc->fc) {
               free(ccc->fc->pointer_to_free);
               free(ccc->fc);
               ccc->fc = ((void*)0);
            }
            ccc->valid = 0;
         }
      }
   }
   cache_size = size;
}
