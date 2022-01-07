
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef size_t stb_uint32 ;
struct TYPE_14__ {void** p; int count; size_t mask; void** table; int count_deletes; int grow_threshhold; int size; int rehash_threshhold; } ;
typedef TYPE_1__ stb_ps_hash ;
struct TYPE_15__ {int ** p; } ;
typedef TYPE_2__ stb_ps_bucket ;
typedef TYPE_1__ stb_ps_array ;
typedef int stb_ps ;


 int * EncodeArray (TYPE_1__*) ;
 int * EncodeBucket (int ) ;
 int * EncodeHash (TYPE_1__*) ;
 TYPE_1__* GetArray (int *) ;
 TYPE_2__* GetBucket (int *) ;
 TYPE_1__* GetHash (int *) ;
 int STB_BUCKET_SIZE ;
 void* STB_DEL ;




 int assert (int) ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;
 int memcpy (void**,TYPE_2__*,int) ;
 scalar_t__ realloc (TYPE_1__*,int) ;
 int stb_bucket_create2 (int *,void*) ;
 int stb_bucket_free (TYPE_2__*) ;
 size_t stb_hashptr (void*) ;
 int stb_log2_ceil (int) ;
 int stb_ps_array_max ;
 int stb_ps_empty (size_t) ;
 int stb_ps_fastlist_valid (void*) ;
 int stb_ps_find (int *,void*) ;
 TYPE_1__* stb_ps_makehash (int,int,void**) ;
 int stb_rehash (size_t) ;

stb_ps * stb_ps_add (stb_ps *ps, void *value)
{



   if (value == ((void*)0)) return ps;
    assert((3 & (int)(size_t) value) == 129);
   assert(stb_ps_fastlist_valid(value));
   assert(value != STB_DEL);

    switch (3 & (int)(size_t) ps) {
      case 129:
         if (ps == ((void*)0)) return (stb_ps *) value;
         return EncodeBucket(stb_bucket_create2(ps,value));

      case 130: {
         stb_ps_bucket *b = GetBucket(ps);
         stb_ps_array *a;
         assert(STB_BUCKET_SIZE == 4);
         if (b->p[0] == ((void*)0)) { b->p[0] = value; return ps; }
         if (b->p[1] == ((void*)0)) { b->p[1] = value; return ps; }
         if (b->p[2] == ((void*)0)) { b->p[2] = value; return ps; }
         if (b->p[3] == ((void*)0)) { b->p[3] = value; return ps; }
         a = (stb_ps_array *) malloc(sizeof(*a) + 7 * sizeof(a->p[0]));
         memcpy(a->p, b, sizeof(*b));
         a->p[4] = value;
         a->count = 5;
         stb_bucket_free(b);
         return EncodeArray(a);
      }

      case 131: {
         stb_ps_array *a = GetArray(ps);
         if (a->count == stb_ps_array_max) {

            stb_ps_hash *h = stb_ps_makehash(2 << stb_log2_ceil(a->count), a->count, a->p);
            free(a);
            return stb_ps_add(EncodeHash(h), value);
         }


         if ((a->count & (a->count-1))==0) {
            int newsize = a->count*2;



            if (newsize + a->count > stb_ps_array_max)
               newsize = stb_ps_array_max;
            a = (stb_ps_array *) realloc(a, sizeof(*a) + (newsize-1) * sizeof(a->p[0]));
         }
         a->p[a->count++] = value;
         return EncodeArray(a);
      }
      case 128: {
         stb_ps_hash *h = GetHash(ps);
         stb_uint32 hash = stb_hashptr(value);
         stb_uint32 n = hash & h->mask;
         void **t = h->table;

          if (!stb_ps_empty((size_t)t[n])) {
            stb_uint32 s = stb_rehash(hash) | 1;
            do {
               n = (n + s) & h->mask;
            } while (!stb_ps_empty((size_t)t[n]));
         }
         if (t[n] == STB_DEL)
            -- h->count_deletes;
         t[n] = value;
         ++ h->count;
         if (h->count == h->grow_threshhold) {
            stb_ps_hash *h2 = stb_ps_makehash(h->size*2, h->size, t);
            free(h);
            return EncodeHash(h2);
         }
         if (h->count + h->count_deletes == h->rehash_threshhold) {
            stb_ps_hash *h2 = stb_ps_makehash(h->size, h->size, t);
            free(h);
            return EncodeHash(h2);
         }
         return ps;
      }
   }
   return ((void*)0);
}
