
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int size; void** table; } ;
typedef TYPE_1__ stb_ps_hash ;
struct TYPE_8__ {void** p; } ;
typedef TYPE_2__ stb_ps_bucket ;
struct TYPE_9__ {int count; void** p; } ;
typedef TYPE_3__ stb_ps_array ;
typedef int stb_ps ;


 TYPE_3__* GetArray (int *) ;
 TYPE_2__* GetBucket (int *) ;
 TYPE_1__* GetHash (int *) ;
 int STB_BUCKET_SIZE ;





void ** stb_ps_fastlist(stb_ps *ps, int *count)
{
   static void *storage;

    switch (3 & (int)(size_t) ps) {
      case 129:
         if (ps == ((void*)0)) { *count = 0; return ((void*)0); }
         storage = ps;
         *count = 1;
         return &storage;
      case 130: {
         stb_ps_bucket *b = GetBucket(ps);
         *count = STB_BUCKET_SIZE;
         return b->p;
      }
      case 131: {
         stb_ps_array *a = GetArray(ps);
         *count = a->count;
         return a->p;
      }
      case 128: {
         stb_ps_hash *h = GetHash(ps);
         *count = h->size;
         return h->table;
      }
   }
   return ((void*)0);
}
