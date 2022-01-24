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
struct TYPE_3__ {void** prevn; void* next; } ;
typedef  TYPE_1__ stb__nochildren ;
struct TYPE_4__ {void** prevn; void* next; void* child; } ;
typedef  TYPE_2__ stb__alloc ;

/* Variables and functions */
#define  STB__alloc 130 
#define  STB__chunked 129 
#define  STB__nochildren 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (void*) ; 
 void*** FUNC2 (void*) ; 

void FUNC3(void *p, void *parent)
{
   if (p == NULL) return;

   switch(FUNC1(p)) {
      case STB__chunked:
         return;
      case STB__nochildren: {
         stb__nochildren *n = (stb__nochildren *) p - 1;
         if (n->prevn)
            FUNC0(*n->prevn == p);
         if (n->next) {
            FUNC0(*FUNC2(n->next) == &n->next);
            FUNC3(n, parent);
         }
         return;
      }
      case STB__alloc: {
         stb__alloc *s = (stb__alloc *) p - 1;

         if (s->prevn)
            FUNC0(*s->prevn == p);

         if (s->child) {
            FUNC0(*FUNC2(s->child) == &s->child);
            FUNC3(s->child, p);
         }

         if (s->next) {
            FUNC0(*FUNC2(s->next) == &s->next);
            FUNC3(s->next, parent);
         }
         return;
      }
      default:
         FUNC0(0); /* NOTREACHED */
   }
}