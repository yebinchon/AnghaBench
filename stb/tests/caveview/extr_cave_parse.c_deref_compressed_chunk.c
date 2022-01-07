
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ refcount; struct TYPE_4__* data; } ;
typedef TYPE_1__ compressed_chunk ;


 int assert (int) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void deref_compressed_chunk(compressed_chunk *cc)
{
   assert(cc->refcount > 0);
   --cc->refcount;
   if (cc->refcount == 0) {
      if (cc->data)
         free(cc->data);
      free(cc);
   }
}
