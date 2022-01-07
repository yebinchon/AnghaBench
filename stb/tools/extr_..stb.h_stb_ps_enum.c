
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int count; void** table; } ;
typedef TYPE_1__ stb_ps_hash ;
struct TYPE_8__ {void** p; } ;
typedef TYPE_2__ stb_ps_bucket ;
struct TYPE_9__ {int count; void** p; } ;
typedef TYPE_3__ stb_ps_array ;
typedef void stb_ps ;


 TYPE_3__* GetArray (void*) ;
 TYPE_2__* GetBucket (void*) ;
 TYPE_1__* GetHash (void*) ;
 int STB_BUCKET_SIZE ;
 int STB_FALSE ;
 int STB_TRUE ;




 int stb_ps_empty (size_t) ;

int stb_ps_enum(stb_ps *ps, void *data, int (*func)(void *value, void *data))
{
   int i;
    switch (3 & (int)(size_t) ps) {
      case 129:
         if (ps == ((void*)0)) return STB_TRUE;
         return func(ps, data);
      case 130: {
         stb_ps_bucket *b = GetBucket(ps);
         for (i=0; i < STB_BUCKET_SIZE; ++i)
            if (b->p[i] != ((void*)0))
               if (!func(b->p[i], data))
                  return STB_FALSE;
         return STB_TRUE;
      }
      case 131: {
         stb_ps_array *a = GetArray(ps);
         for (i=0; i < a->count; ++i)
            if (!func(a->p[i], data))
               return STB_FALSE;
         return STB_TRUE;
      }
      case 128: {
         stb_ps_hash *h = GetHash(ps);
         for (i=0; i < h->count; ++i)
              if (!stb_ps_empty((size_t)h->table[i]))
               if (!func(h->table[i], data))
                  return STB_FALSE;
         return STB_TRUE;
      }
   }
   return STB_TRUE;
}
