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
struct TYPE_7__ {int count; int size; void** table; } ;
typedef  TYPE_1__ stb_ps_hash ;
struct TYPE_8__ {int /*<<< orphan*/ ** p; } ;
typedef  TYPE_2__ stb_ps_bucket ;
struct TYPE_9__ {int count; int /*<<< orphan*/  p; } ;
typedef  TYPE_3__ stb_ps_array ;
typedef  int /*<<< orphan*/  stb_ps ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int STB_BUCKET_SIZE ; 
#define  STB_ps_array 131 
#define  STB_ps_bucket 130 
#define  STB_ps_direct 129 
#define  STB_ps_hash 128 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (void**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 

void ** FUNC6(stb_ps *ps, int *count)
{
   int i,n=0;
   void **p = NULL;
    switch (3 & (int)(size_t) ps) {
      case STB_ps_direct:
         if (ps == NULL) { *count = 0; return NULL; }
         p = (void **) FUNC3(sizeof(*p) * 1);
         p[0] = ps;
         *count = 1;
         return p;
      case STB_ps_bucket: {
         stb_ps_bucket *b = FUNC1(ps);
         p = (void **) FUNC3(sizeof(*p) * STB_BUCKET_SIZE);
         for (i=0; i < STB_BUCKET_SIZE; ++i)
            if (b->p[i] != NULL)
               p[n++] = b->p[i];
         break;
      }
      case STB_ps_array: {
         stb_ps_array *a = FUNC0(ps);
         p = (void **) FUNC3(sizeof(*p) * a->count);
         FUNC4(p, a->p, sizeof(*p) * a->count);
         *count = a->count;
         return p;
      }
      case STB_ps_hash: {
         stb_ps_hash *h = FUNC2(ps);
         p = (void **) FUNC3(sizeof(*p) * h->count);
         for (i=0; i < h->size; ++i)
              if (!FUNC5((size_t)h->table[i]))
               p[n++] = h->table[i];
         break;
      }
   }
   *count = n;
   return p;
}