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
struct TYPE_8__ {scalar_t__* prevn; scalar_t__ next; } ;
typedef  TYPE_1__ stb__nochildren ;
typedef  scalar_t__ stb__alloc_type ;
struct TYPE_9__ {scalar_t__* prevn; scalar_t__ next; } ;
typedef  TYPE_2__ stb__alloc ;

/* Variables and functions */
 scalar_t__ STB__alloc ; 
 scalar_t__ STB__nochildren ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (void*) ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__** FUNC5 (scalar_t__) ; 

void FUNC6(void *new_context, void *ptr)
{
   stb__alloc *src = FUNC1(new_context);

   stb__alloc_type t = FUNC2(ptr);
   FUNC0(t == STB__alloc || t == STB__nochildren);

   if (t == STB__alloc) {
      stb__alloc *s = (stb__alloc *) ptr - 1;

      // unlink from old
      *(s->prevn) = s->next;
      if (s->next)
         *FUNC5(s->next) = s->prevn;

      FUNC3(src, s);
   } else {
      stb__nochildren *s = (stb__nochildren *) ptr - 1;

      // unlink from old
      *(s->prevn) = s->next;
      if (s->next)
         *FUNC5(s->next) = s->prevn;

      FUNC4(src, s);
   }
}