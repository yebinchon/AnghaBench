#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  size_t stb_uint32 ;
struct TYPE_14__ {int count; void** p; size_t mask; void** table; int size; int shrink_threshhold; int /*<<< orphan*/  count_deletes; } ;
typedef  TYPE_1__ stb_ps_hash ;
struct TYPE_15__ {void** p; } ;
typedef  TYPE_2__ stb_ps_bucket ;
typedef  TYPE_1__ stb_ps_array ;
typedef  void stb_ps ;

/* Variables and functions */
 void* FUNC0 (TYPE_1__*) ; 
 void* FUNC1 (TYPE_2__*) ; 
 void* FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (void*) ; 
 TYPE_2__* FUNC4 (void*) ; 
 TYPE_1__* FUNC5 (void*) ; 
 int STB_BUCKET_SIZE ; 
 void* STB_DEL ; 
#define  STB_ps_array 131 
#define  STB_ps_bucket 130 
#define  STB_ps_direct 129 
#define  STB_ps_hash 128 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (int) ; 
 TYPE_2__* FUNC9 (void**) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 size_t FUNC11 (void*) ; 
 int FUNC12 (int) ; 
 int stb_ps_array_max ; 
 int /*<<< orphan*/  FUNC13 (size_t) ; 
 int FUNC14 (void*,void*) ; 
 TYPE_1__* FUNC15 (int,int,void**) ; 
 int FUNC16 (size_t) ; 

stb_ps *FUNC17(stb_ps *ps, void *value)
{
   #ifdef STB_DEBUG
   assert(stb_ps_find(ps, value));
   #endif
    FUNC6((3 & (int)(size_t) value) == STB_ps_direct);
   if (value == NULL) return ps; // ignore NULL removes to avoid bad breakage
    switch (3 & (int)(size_t) ps) {
      case STB_ps_direct:
         return ps == value ? NULL : ps;
      case STB_ps_bucket: {
         stb_ps_bucket *b = FUNC4(ps);
         int count=0;
         FUNC6(STB_BUCKET_SIZE == 4);
         if (b->p[0] == value) b->p[0] = NULL; else count += (b->p[0] != NULL);
         if (b->p[1] == value) b->p[1] = NULL; else count += (b->p[1] != NULL);
         if (b->p[2] == value) b->p[2] = NULL; else count += (b->p[2] != NULL);
         if (b->p[3] == value) b->p[3] = NULL; else count += (b->p[3] != NULL);
         if (count == 1) { // shrink bucket at size 1
            value = b->p[0];
            if (value == NULL) value = b->p[1];
            if (value == NULL) value = b->p[2];
            if (value == NULL) value = b->p[3];
            FUNC6(value != NULL);
            FUNC10(b);
            return (stb_ps *) value; // return STB_ps_direct of value
         }
         return ps;
      }
      case STB_ps_array: {
         stb_ps_array *a = FUNC3(ps);
         int i;
         for (i=0; i < a->count; ++i) {
            if (a->p[i] == value) {
               a->p[i] = a->p[--a->count];
               if (a->count == 3) { // shrink to bucket!
                  stb_ps_bucket *b = FUNC9(a->p);
                  FUNC7(a);
                  return FUNC1(b);
               }
               return ps;
            }
         }
         return ps;
      }
      case STB_ps_hash: {
         stb_ps_hash *h = FUNC5(ps);
         stb_uint32 hash = FUNC11(value);
         stb_uint32 s, n = hash & h->mask;
         void **t = h->table;
         if (t[n] != value) {
            s = FUNC16(hash) | 1;
            do {
               n = (n + s) & h->mask;
            } while (t[n] != value);
         }
         t[n] = STB_DEL;
         -- h->count;
         ++ h->count_deletes;
         // should we shrink down to an array?
         if (h->count < stb_ps_array_max) {
            int n = 1 << FUNC12(stb_ps_array_max);
            if (h->count < n) {
               stb_ps_array *a = (stb_ps_array *) FUNC8(sizeof(*a) + (n-1) * sizeof(a->p[0]));
               int i,j=0;
               for (i=0; i < h->size; ++i)
                    if (!FUNC13((size_t)t[i]))
                     a->p[j++] = t[i];
               FUNC6(j == h->count);
               a->count = j;
               FUNC7(h);
               return FUNC0(a);
            }
         }
         if (h->count == h->shrink_threshhold) {
            stb_ps_hash *h2 = FUNC15(h->size >> 1, h->size, t);
            FUNC7(h);
            return FUNC2(h2);
         }
         return ps;
      }
   }
   return ps; /* NOTREACHED */
}