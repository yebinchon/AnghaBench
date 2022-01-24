#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  stb__chunked ;
typedef  int /*<<< orphan*/  stb__alloc ;

/* Variables and functions */
 int STB__chunked ; 
 int /*<<< orphan*/  stb__alloc_global ; 
 int FUNC0 (void*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static stb__alloc * FUNC2(void *context)
{
   if (context == NULL) {
      return &stb__alloc_global;
   } else {
      int u = FUNC0(context);
      // if context is chunked, grab parent
      if (u == STB__chunked) {
         stb__chunked *s = (stb__chunked *) context - 1;
         return FUNC1(s);
      } else {
         return (stb__alloc *) context - 1;
      }
   }
}