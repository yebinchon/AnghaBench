#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* arena; } ;
typedef  TYPE_1__ stb_sdict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 

stb_sdict* FUNC3(stb_sdict *old)
{
   stb_sdict *n;
   void *old_arena = old->arena;
   void *new_arena = old_arena ? FUNC1(1) : NULL;
   old->arena = new_arena;
   n = FUNC2(old);
   old->arena = old_arena;
   if (n)
      n->arena = new_arena;
   else if (new_arena)
      FUNC0(new_arena);
   return n;
}