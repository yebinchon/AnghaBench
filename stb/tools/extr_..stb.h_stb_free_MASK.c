#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {void* child; struct TYPE_9__* next; struct TYPE_9__** prevn; int /*<<< orphan*/  alloc; } ;
typedef  TYPE_1__ stb__nochildren ;
typedef  TYPE_1__ stb__chunk ;
typedef  TYPE_1__ stb__alloc ;

/* Variables and functions */
#define  STB__alloc 130 
#define  STB__chunked 129 
#define  STB__nochildren 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int FUNC3 (void*) ; 
 TYPE_1__*** FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ stb_alloc_count_free ; 

void FUNC6(void *p)
{
   if (p == NULL) return;

   // count frees so that unit tests can see what's happening
   ++stb_alloc_count_free;

   switch(FUNC3(p)) {
      case STB__chunked:
         // freeing a chunked-block with children does nothing;
         // they only get freed when the parent does
         // surely this is wrong, and it should free them immediately?
         // otherwise how are they getting put on the right chain?
         return;
      case STB__nochildren: {
         stb__nochildren *s = (stb__nochildren *) p - 1;
         // unlink from sibling chain
         *(s->prevn) = s->next;
         if (s->next)
            *FUNC4(s->next) = s->prevn;
         FUNC1(s);
         return;
      }
      case STB__alloc: {
         stb__alloc *s = (stb__alloc *) p - 1;
         stb__chunk *c, *n;
         void *q;

         // unlink from sibling chain, if any
         *(s->prevn) = s->next;
         if (s->next)
            *FUNC4(s->next) = s->prevn;

         // first free chunks
         c = (stb__chunk *) FUNC2(s);
         while (c != NULL) {
            n = c->next;
            stb_alloc_count_free += c->alloc;
            FUNC1(c);
            c = n;
         }

         // validating
         FUNC5(s,NULL);
         s->prevn = NULL;
         s->next = NULL;

         // now free children
         while ((q = s->child) != NULL) {
            FUNC6(q);
         }

         // now free self
         FUNC1(s);
         return;
      }
      default:
         FUNC0(0); /* NOTREACHED */
   }
}