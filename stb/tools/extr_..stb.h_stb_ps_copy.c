
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int table; int size; } ;
typedef TYPE_1__ stb_ps_hash ;
typedef int stb_ps_bucket ;
struct TYPE_9__ {int count; int * p; } ;
typedef TYPE_2__ stb_ps_array ;
typedef int stb_ps ;


 int * EncodeArray (TYPE_2__*) ;
 int * EncodeBucket (int *) ;
 int * EncodeHash (TYPE_1__*) ;
 TYPE_2__* GetArray (int *) ;
 int * GetBucket (int *) ;
 TYPE_1__* GetHash (int *) ;




 int assert (int ) ;
 scalar_t__ malloc (int) ;
 int stb_ps_array_max ;
 TYPE_1__* stb_ps_makehash (int ,int ,int ) ;

stb_ps *stb_ps_copy(stb_ps *ps)
{
   int i;

    switch (3 & (int)(size_t) ps) {
      case 129: return ps;
      case 130: {
         stb_ps_bucket *n = (stb_ps_bucket *) malloc(sizeof(*n));
         *n = *GetBucket(ps);
         return EncodeBucket(n);
      }
      case 131: {
         stb_ps_array *a = GetArray(ps);
         stb_ps_array *n = (stb_ps_array *) malloc(sizeof(*n) + stb_ps_array_max * sizeof(n->p[0]));
         n->count = a->count;
         for (i=0; i < a->count; ++i)
            n->p[i] = a->p[i];
         return EncodeArray(n);
      }
      case 128: {
         stb_ps_hash *h = GetHash(ps);
         stb_ps_hash *n = stb_ps_makehash(h->size, h->size, h->table);
         return EncodeHash(n);
      }
   }
   assert(0);
   return ((void*)0);
}
