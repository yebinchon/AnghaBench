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
typedef  int /*<<< orphan*/  stb_uintptr ;
typedef  int /*<<< orphan*/  stb__nochildren ;
typedef  int /*<<< orphan*/  stb__chunked ;
typedef  int stb__alloc_type ;
struct TYPE_9__ {int /*<<< orphan*/ * child; } ;
typedef  TYPE_1__ stb__alloc ;

/* Variables and functions */
#define  STB__alloc 131 
#define  STB__chunk_raw 130 
#define  STB__chunked 129 
#define  STB__nochildren 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (size_t) ; 
 void* FUNC2 (TYPE_1__*,int,int,int) ; 
 TYPE_1__* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  stb_alloc_count_alloc ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (unsigned int) ; 

__attribute__((used)) static void * FUNC10(void *context, size_t size, stb__alloc_type t, int align)
{
   void *p;

   stb__alloc *src = FUNC3(context);

   if (align <= 0) {
      // compute worst-case C packed alignment
      // e.g. a 24-byte struct is 8-aligned
      int align_proposed = 1 << FUNC9((unsigned int) size);

      if (align_proposed < 0)
         align_proposed = 4;

      if (align_proposed == 0) {
         if (size == 0)
            align_proposed = 1;
         else
            align_proposed = 256;
      }

      // a negative alignment means 'don't align any larger
      // than this'; so -16 means we align 1,2,4,8, or 16

      if (align < 0) {
         if (align_proposed > -align)
            align_proposed = -align;
      }

      align = align_proposed;
   }

   FUNC0(FUNC8(align));

   // don't cause misalignment when allocating nochildren
   if (t == STB__nochildren && align > 8)
      t = STB__alloc;

   switch (t) {
      case STB__alloc: {
         stb__alloc *s = (stb__alloc *) FUNC1(size + sizeof(*s));
         if (s == NULL) return NULL;
         p = s+1;
         s->child = NULL;
         FUNC4(src, s);

         FUNC6(s,NULL);
         break;
      }

      case STB__nochildren: {
         stb__nochildren *s = (stb__nochildren *) FUNC1(size + sizeof(*s));
         if (s == NULL) return NULL;
         p = s+1;
         FUNC5(src, s);
         break;
      }

      case STB__chunk_raw: {
         p = FUNC2(src, (int) size, align, 0);
         if (p == NULL) return NULL;
         break;
      }

      case STB__chunked: {
         stb__chunked *s;
         if (align < sizeof(stb_uintptr)) align = sizeof(stb_uintptr);
         s = (stb__chunked *) FUNC2(src, (int) size, align, sizeof(*s));
         if (s == NULL) return NULL;
         FUNC7(s, src);
         p = s+1;
         break;
      }

      default: p = NULL; FUNC0(0); /* NOTREACHED */
   }

   ++stb_alloc_count_alloc;
   return p;
}