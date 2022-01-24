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
struct TYPE_3__ {size_t size; char* file; int line; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t,char*,int) ; 
 TYPE_2__* stb__alloc_history ; 
 TYPE_1__* stb__allocations ; 
 int FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,void*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (void*,size_t,char*,int) ; 

void FUNC7(void *p, void *q, size_t sz, char *file, int line)
{
   int n;
   if (p == NULL) { FUNC6(q, sz, file, line); return; }
   if (q == NULL) return; // nothing happened

   n = FUNC2(p);
   if (n == -1) {
      // tried to free something we hadn't allocated!
      // this is weird, though, because we got past the realloc!
      n = FUNC3(p);
      FUNC0(0); /* NOTREACHED */
      if (n >= 0)
         FUNC5("Attempted to realloc %d-byte block %p at %s:%d previously freed/realloced at %s:%d",
                       stb__alloc_history[n].size, p,
                       file, line,
                       stb__alloc_history[n].file, stb__alloc_history[n].line);
      else
         FUNC5("Attempted to realloc unknown block %p at %s:%d", p, file,line);
   } else {
      if (q == p) {
         stb__allocations[n].size = sz;
         stb__allocations[n].file = file;
         stb__allocations[n].line = line;
      } else {
         FUNC4(n, file, line);
         FUNC1(q,sz,file,line);
      }
   }
}