#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  table; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ stb_ps_hash ;
typedef  int /*<<< orphan*/  stb_ps_bucket ;
struct TYPE_9__ {int count; int /*<<< orphan*/ * p; } ;
typedef  TYPE_2__ stb_ps_array ;
typedef  int /*<<< orphan*/  stb_ps ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
#define  STB_ps_array 131 
#define  STB_ps_bucket 130 
#define  STB_ps_direct 129 
#define  STB_ps_hash 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int stb_ps_array_max ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

stb_ps *FUNC9(stb_ps *ps)
{
   int i;
   // not a switch: order based on expected performance/power-law distribution
    switch (3 & (int)(size_t) ps) {
      case STB_ps_direct: return ps;
      case STB_ps_bucket: {
         stb_ps_bucket *n = (stb_ps_bucket *) FUNC7(sizeof(*n));
         *n = *FUNC4(ps);
         return FUNC1(n);
      }
      case STB_ps_array: {
         stb_ps_array *a = FUNC3(ps);
         stb_ps_array *n = (stb_ps_array *) FUNC7(sizeof(*n) + stb_ps_array_max * sizeof(n->p[0]));
         n->count = a->count;
         for (i=0; i < a->count; ++i)
            n->p[i] = a->p[i];
         return FUNC0(n);
      }
      case STB_ps_hash: {
         stb_ps_hash *h = FUNC5(ps);
         stb_ps_hash *n = FUNC8(h->size, h->size, h->table);
         return FUNC2(n);
      }
   }
   FUNC6(0); /* NOTREACHED */
   return NULL;
}