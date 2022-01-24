#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ stb_malloc; } ;
typedef  TYPE_1__ stb__arr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 TYPE_1__* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(void **pp)
{
   void *p = *pp;
   FUNC1(p);
   if (p) {
      stb__arr *q = FUNC2(p);
      if (q->stb_malloc)
         FUNC3(q);
      else
         FUNC0(q);
   }
   *pp = NULL;
}