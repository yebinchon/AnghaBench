#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t stb_uint32 ;
struct TYPE_8__ {void** table; size_t any_offset; size_t mask; int /*<<< orphan*/  count_deletes; int /*<<< orphan*/  count; int /*<<< orphan*/  shrink_threshhold; } ;
typedef  TYPE_1__ stb_ps_hash ;
struct TYPE_9__ {void** p; } ;
typedef  TYPE_2__ stb_ps_bucket ;
struct TYPE_10__ {int count; void** p; } ;
typedef  TYPE_3__ stb_ps_array ;
typedef  int /*<<< orphan*/  stb_ps ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int STB_BUCKET_SIZE ; 
 void* STB_DEL ; 
#define  STB_ps_array 131 
#define  STB_ps_bucket 130 
#define  STB_ps_direct 129 
#define  STB_ps_hash 128 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  stb_ps_array_max ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,void*) ; 

stb_ps *FUNC7(stb_ps *ps, void **value)
{
   FUNC3(ps != NULL);
    switch (3 & (int)(size_t) ps) {
      case STB_ps_direct:
         *value = ps;
         return NULL;
      case STB_ps_bucket: {
         stb_ps_bucket *b = FUNC1(ps);
         int count=0, slast=0, last=0;
         FUNC3(STB_BUCKET_SIZE == 4);
         if (b->p[0]) { ++count;               last = 0; }
         if (b->p[1]) { ++count; slast = last; last = 1; }
         if (b->p[2]) { ++count; slast = last; last = 2; }
         if (b->p[3]) { ++count; slast = last; last = 3; }
         *value = b->p[last];
         b->p[last] = 0;
         if (count == 2) {
            void *leftover = b->p[slast]; // second to last
            FUNC4(b);
            return (stb_ps *) leftover; 
         }
         return ps;
      }
      case STB_ps_array: {
         stb_ps_array *a = FUNC0(ps);
         *value = a->p[a->count-1];
         if (a->count == 4)
            return FUNC6(ps, *value);
         --a->count;
         return ps;
      }
      case STB_ps_hash: {
         stb_ps_hash *h = FUNC2(ps);
         void **t = h->table;
         stb_uint32 n = h->any_offset;
          while (FUNC5((size_t)t[n]))
            n = (n + 1) & h->mask;
         *value = t[n];
         h->any_offset = (n+1) & h->mask;
         // check if we need to skip down to the previous type
         if (h->count-1 < stb_ps_array_max || h->count-1 == h->shrink_threshhold)
            return FUNC6(ps, *value);
         t[n] = STB_DEL;
         -- h->count;
         ++ h->count_deletes;
         return ps;
      }
   }
   return ps; /* NOTREACHED */
}