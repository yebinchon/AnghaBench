#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  line; int /*<<< orphan*/  file; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* stb__alloc_history ; 
 int FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,void*,char*,...) ; 

void FUNC5(void *p, char *file, int line)
{
   int n;
   
   if (p == NULL) return;

   n = FUNC1(p);

   if (n >= 0)
      FUNC3(n, file, line);
   else {
      // tried to free something we hadn't allocated!
      n = FUNC2(p);
      FUNC0(0); /* NOTREACHED */
      if (n >= 0)
         FUNC4("Attempted to free %d-byte block %p at %s:%d previously freed/realloced at %s:%d",
                       stb__alloc_history[n].size, p,
                       file, line,
                       stb__alloc_history[n].file, stb__alloc_history[n].line);
      else
         FUNC4("Attempted to free unknown block %p at %s:%d", p, file,line);
   }
}