#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  line; int /*<<< orphan*/  file; int /*<<< orphan*/  size; } ;
struct TYPE_3__ {void* p; } ;

/* Variables and functions */
 TYPE_2__* stb__alloc_history ; 
 int stb__alloc_size ; 
 TYPE_1__* stb__allocations ; 
 int FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

void FUNC3(void *p)
{
   int n;
   
   if (p == NULL) return;

   n = FUNC0(p);

   if (n >= 0) return;

   for (n=0; n < stb__alloc_size; ++n)
      if (stb__allocations[n].p == p)
         FUNC2("Internal error: pointer %p was allocated, but hash search failed", p);

   // tried to free something that wasn't allocated!
   n = FUNC1(p);
   if (n >= 0)
      FUNC2("Checked %d-byte block %p previously freed/realloced at %s:%d",
                    stb__alloc_history[n].size, p,
                    stb__alloc_history[n].file, stb__alloc_history[n].line);
   FUNC2("Checked unknown block %p");
}