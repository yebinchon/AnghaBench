#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int limit; int len; int /*<<< orphan*/  signature; } ;
typedef  TYPE_1__ stb__arr ;

/* Variables and functions */
 void* FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  stb_arr_signature ; 
 TYPE_1__* FUNC3 (void*) ; 

__attribute__((used)) static void FUNC4(void **pp, int size, int limit, int len)
{
   void *p = *pp;
   stb__arr *a;
   FUNC2(p);
   if (p == NULL) {
      if (len == 0 && size == 0) return;
      a = (stb__arr *) FUNC1(sizeof(*a) + size*limit);
      a->limit = limit;
      a->len   = len;
      a->signature = stb_arr_signature;
   } else {
      a = FUNC3(p);
      a->len = len;
      if (a->limit < limit) {
         void *p;
         if (a->limit >= 4 && limit < a->limit * 2)
            limit = a->limit * 2;
         p = FUNC0(a, sizeof(*a) + limit*size);
         if (p) {
            a = (stb__arr *) p;
            a->limit = limit;
         } else {
            // throw an error!
         }
      }
   }
   a->len = a->len < a->limit ? a->len : a->limit;
   *pp = a+1;
}