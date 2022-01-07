
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int count; int size; void** table; } ;
typedef TYPE_1__ stb_ps_hash ;
struct TYPE_8__ {int ** p; } ;
typedef TYPE_2__ stb_ps_bucket ;
struct TYPE_9__ {int count; int p; } ;
typedef TYPE_3__ stb_ps_array ;
typedef int stb_ps ;


 TYPE_3__* GetArray (int *) ;
 TYPE_2__* GetBucket (int *) ;
 TYPE_1__* GetHash (int *) ;
 int STB_BUCKET_SIZE ;




 scalar_t__ malloc (int) ;
 int memcpy (void**,int ,int) ;
 int stb_ps_empty (size_t) ;

void ** stb_ps_getlist(stb_ps *ps, int *count)
{
   int i,n=0;
   void **p = ((void*)0);
    switch (3 & (int)(size_t) ps) {
      case 129:
         if (ps == ((void*)0)) { *count = 0; return ((void*)0); }
         p = (void **) malloc(sizeof(*p) * 1);
         p[0] = ps;
         *count = 1;
         return p;
      case 130: {
         stb_ps_bucket *b = GetBucket(ps);
         p = (void **) malloc(sizeof(*p) * STB_BUCKET_SIZE);
         for (i=0; i < STB_BUCKET_SIZE; ++i)
            if (b->p[i] != ((void*)0))
               p[n++] = b->p[i];
         break;
      }
      case 131: {
         stb_ps_array *a = GetArray(ps);
         p = (void **) malloc(sizeof(*p) * a->count);
         memcpy(p, a->p, sizeof(*p) * a->count);
         *count = a->count;
         return p;
      }
      case 128: {
         stb_ps_hash *h = GetHash(ps);
         p = (void **) malloc(sizeof(*p) * h->count);
         for (i=0; i < h->size; ++i)
              if (!stb_ps_empty((size_t)h->table[i]))
               p[n++] = h->table[i];
         break;
      }
   }
   *count = n;
   return p;
}
