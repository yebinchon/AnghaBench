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
struct TYPE_6__ {int alloc; int data_left; struct TYPE_6__* next; } ;
typedef  TYPE_1__ stb__chunk ;
typedef  int /*<<< orphan*/  stb__alloc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (TYPE_1__*,int,int,int) ; 
 int stb_alloc_chunk_size ; 

__attribute__((used)) static void * FUNC7(stb__alloc *src, int size, int align, int pre_align)
{
   void *p;
   stb__chunk *c = FUNC3(src);

   if (c && size <= stb_alloc_chunk_size) {

      p = FUNC6(c, size, align, pre_align);
      if (p) { ++c->alloc; return p; }

      // try a second chunk to reduce wastage
      if (c->next) {
         p = FUNC6(c->next, size, align, pre_align);
         if (p) { ++c->alloc; return p; }
   
         // put the bigger chunk first, since the second will get buried
         // the upshot of this is that, until it gets allocated from, chunk #2
         // is always the largest remaining chunk. (could formalize
         // this with a heap!)
         FUNC5(src);
         c = FUNC3(src);
      }
   }

   // allocate a new chunk
   {
      stb__chunk *n;

      int chunk_size = stb_alloc_chunk_size;
      // we're going to allocate a new chunk to put this in
      if (size > chunk_size)
         chunk_size = size;

      FUNC0(sizeof(*n) + pre_align <= 16);

      // loop trying to allocate a large enough chunk
      // the loop is because the alignment may cause problems if it's big...
      // and we don't know what our chunk alignment is going to be
      while (1) {
         n = (stb__chunk *) FUNC2(16 + chunk_size);
         if (n == NULL) return NULL;

         n->data_left = chunk_size - sizeof(*n);

         p = FUNC6(n, size, align, pre_align);
         if (p != NULL) {
            n->next = c;
            FUNC4(src, n);

            // if we just used up the whole block immediately,
            // move the following chunk up
            n->alloc = 1;
            if (size == chunk_size)
               FUNC5(src);

            return p;
         }

         FUNC1(n);
         chunk_size += 16+align;
      }
   }
}