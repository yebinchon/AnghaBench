
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t stb_uint32 ;
struct TYPE_8__ {void** table; size_t any_offset; size_t mask; int count_deletes; int count; int shrink_threshhold; } ;
typedef TYPE_1__ stb_ps_hash ;
struct TYPE_9__ {void** p; } ;
typedef TYPE_2__ stb_ps_bucket ;
struct TYPE_10__ {int count; void** p; } ;
typedef TYPE_3__ stb_ps_array ;
typedef int stb_ps ;


 TYPE_3__* GetArray (int *) ;
 TYPE_2__* GetBucket (int *) ;
 TYPE_1__* GetHash (int *) ;
 int STB_BUCKET_SIZE ;
 void* STB_DEL ;




 int assert (int) ;
 int stb_bucket_free (TYPE_2__*) ;
 int stb_ps_array_max ;
 int stb_ps_empty (size_t) ;
 int * stb_ps_remove (int *,void*) ;

stb_ps *stb_ps_remove_any(stb_ps *ps, void **value)
{
   assert(ps != ((void*)0));
    switch (3 & (int)(size_t) ps) {
      case 129:
         *value = ps;
         return ((void*)0);
      case 130: {
         stb_ps_bucket *b = GetBucket(ps);
         int count=0, slast=0, last=0;
         assert(STB_BUCKET_SIZE == 4);
         if (b->p[0]) { ++count; last = 0; }
         if (b->p[1]) { ++count; slast = last; last = 1; }
         if (b->p[2]) { ++count; slast = last; last = 2; }
         if (b->p[3]) { ++count; slast = last; last = 3; }
         *value = b->p[last];
         b->p[last] = 0;
         if (count == 2) {
            void *leftover = b->p[slast];
            stb_bucket_free(b);
            return (stb_ps *) leftover;
         }
         return ps;
      }
      case 131: {
         stb_ps_array *a = GetArray(ps);
         *value = a->p[a->count-1];
         if (a->count == 4)
            return stb_ps_remove(ps, *value);
         --a->count;
         return ps;
      }
      case 128: {
         stb_ps_hash *h = GetHash(ps);
         void **t = h->table;
         stb_uint32 n = h->any_offset;
          while (stb_ps_empty((size_t)t[n]))
            n = (n + 1) & h->mask;
         *value = t[n];
         h->any_offset = (n+1) & h->mask;

         if (h->count-1 < stb_ps_array_max || h->count-1 == h->shrink_threshhold)
            return stb_ps_remove(ps, *value);
         t[n] = STB_DEL;
         -- h->count;
         ++ h->count_deletes;
         return ps;
      }
   }
   return ps;
}
