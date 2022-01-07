
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int count; void** table; } ;
typedef TYPE_1__ stb_ps_hash ;
struct TYPE_8__ {int ** p; } ;
typedef TYPE_2__ stb_ps_bucket ;
struct TYPE_9__ {int p; int count; } ;
typedef TYPE_3__ stb_ps_array ;
typedef int stb_ps ;


 TYPE_3__* GetArray (int *) ;
 TYPE_2__* GetBucket (int *) ;
 TYPE_1__* GetHash (int *) ;
 int STB_BUCKET_SIZE ;




 int memcpy (void**,int ,int) ;
 int stb_min (int,int ) ;
 int stb_ps_empty (size_t) ;

int stb_ps_writelist(stb_ps *ps, void **list, int size )
{
   int i,n=0;
    switch (3 & (int)(size_t) ps) {
      case 129:
         if (ps == ((void*)0) || size <= 0) return 0;
         list[0] = ps;
         return 1;
      case 130: {
         stb_ps_bucket *b = GetBucket(ps);
         for (i=0; i < STB_BUCKET_SIZE; ++i)
            if (b->p[i] != ((void*)0) && n < size)
               list[n++] = b->p[i];
         return n;
      }
      case 131: {
         stb_ps_array *a = GetArray(ps);
         n = stb_min(size, a->count);
         memcpy(list, a->p, sizeof(*list) * n);
         return n;
      }
      case 128: {
         stb_ps_hash *h = GetHash(ps);
         if (size <= 0) return 0;
         for (i=0; i < h->count; ++i) {
             if (!stb_ps_empty((size_t)h->table[i])) {
               list[n++] = h->table[i];
               if (n == size) break;
            }
         }
         return n;
      }
   }
   return 0;
}
