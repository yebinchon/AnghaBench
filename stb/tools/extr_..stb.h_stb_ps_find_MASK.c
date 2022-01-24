#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t stb_uint32 ;
struct TYPE_7__ {size_t mask; void** table; } ;
typedef  TYPE_1__ stb_ps_hash ;
struct TYPE_8__ {void** p; } ;
typedef  TYPE_2__ stb_ps_bucket ;
struct TYPE_9__ {int count; void** p; } ;
typedef  TYPE_3__ stb_ps_array ;
typedef  void stb_ps ;

/* Variables and functions */
 TYPE_3__* FUNC0 (void*) ; 
 TYPE_2__* FUNC1 (void*) ; 
 TYPE_1__* FUNC2 (void*) ; 
 int STB_BUCKET_SIZE ; 
 int STB_FALSE ; 
 int STB_TRUE ; 
 int STB_ps_array ; 
 int STB_ps_bucket ; 
 int STB_ps_direct ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 size_t FUNC4 (void*) ; 
 int FUNC5 (void*) ; 
 int FUNC6 (size_t) ; 

int FUNC7(stb_ps *ps, void *value)
{
    int i, code = 3 & (int)(size_t) ps;
    FUNC3((3 & (int)(size_t) value) == STB_ps_direct);
   FUNC3(FUNC5(value));
   // not a switch: order based on expected performance/power-law distribution
   if (code == STB_ps_direct)
      return value == ps;
   if (code == STB_ps_bucket) {
      stb_ps_bucket *b = FUNC1(ps);
      FUNC3(STB_BUCKET_SIZE == 4);
      if (b->p[0] == value || b->p[1] == value ||
          b->p[2] == value || b->p[3] == value)
          return STB_TRUE;
      return STB_FALSE;
   }
   if (code == STB_ps_array) {
      stb_ps_array *a = FUNC0(ps);
      for (i=0; i < a->count; ++i)
         if (a->p[i] == value)
            return STB_TRUE;
      return STB_FALSE;
   } else {
      stb_ps_hash *h = FUNC2(ps);
      stb_uint32 hash = FUNC4(value);
      stb_uint32 s, n = hash & h->mask;
      void **t = h->table;
      if (t[n] == value) return STB_TRUE;
      if (t[n] == NULL) return STB_FALSE;
      s = FUNC6(hash) | 1;
      do {
         n = (n + s) & h->mask;
         if (t[n] == value) return STB_TRUE;
      } while (t[n] != NULL);
      return STB_FALSE;
   }
}