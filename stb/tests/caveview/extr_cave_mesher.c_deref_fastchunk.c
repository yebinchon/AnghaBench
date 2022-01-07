
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ refcount; struct TYPE_4__* pointer_to_free; } ;
typedef TYPE_1__ fast_chunk ;


 int assert (int) ;
 int free (TYPE_1__*) ;

void deref_fastchunk(fast_chunk *fc)
{
   if (fc) {
      assert(fc->refcount > 0);
      --fc->refcount;
      if (fc->refcount == 0) {
         free(fc->pointer_to_free);
         free(fc);
      }
   }
}
