
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int count; } ;
typedef TYPE_1__ stb_ps_hash ;
struct TYPE_8__ {int ** p; } ;
typedef TYPE_2__ stb_ps_bucket ;
struct TYPE_9__ {int count; } ;
typedef TYPE_3__ stb_ps_array ;
typedef int stb_ps ;


 TYPE_3__* GetArray (int *) ;
 TYPE_2__* GetBucket (int *) ;
 TYPE_1__* GetHash (int *) ;





int stb_ps_count (stb_ps *ps)
{
    switch (3 & (int)(size_t) ps) {
      case 129:
         return ps != ((void*)0);
      case 130: {
         stb_ps_bucket *b = GetBucket(ps);
         return (b->p[0] != ((void*)0)) + (b->p[1] != ((void*)0)) +
                (b->p[2] != ((void*)0)) + (b->p[3] != ((void*)0));
      }
      case 131: {
         stb_ps_array *a = GetArray(ps);
         return a->count;
      }
      case 128: {
         stb_ps_hash *h = GetHash(ps);
         return h->count;
      }
   }
   return 0;
}
