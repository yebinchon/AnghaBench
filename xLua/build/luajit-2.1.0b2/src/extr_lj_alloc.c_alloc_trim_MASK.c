#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* mstate ;
typedef  TYPE_2__* msegmentptr ;
struct TYPE_12__ {size_t size; scalar_t__ base; } ;
struct TYPE_11__ {size_t topsize; scalar_t__ trim_check; scalar_t__ top; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CALL_MREMAP_NOMOVE ; 
 scalar_t__ FUNC1 (scalar_t__,size_t) ; 
 size_t DEFAULT_GRANULARITY ; 
 size_t MAX_REQUEST ; 
 scalar_t__ MAX_SIZE_T ; 
 scalar_t__ MFAIL ; 
 size_t SIZE_T_ONE ; 
 scalar_t__ TOP_FOOT_SIZE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__,size_t) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 TYPE_2__* FUNC6 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC7(mstate m, size_t pad)
{
  size_t released = 0;
  if (pad < MAX_REQUEST && FUNC4(m)) {
    pad += TOP_FOOT_SIZE; /* ensure enough room for segment overhead */

    if (m->topsize > pad) {
      /* Shrink top space in granularity-size units, keeping at least one */
      size_t unit = DEFAULT_GRANULARITY;
      size_t extra = ((m->topsize - pad + (unit - SIZE_T_ONE)) / unit -
		      SIZE_T_ONE) * unit;
      msegmentptr sp = FUNC6(m, (char *)m->top);

      if (sp->size >= extra &&
	  !FUNC2(m, sp)) { /* can't shrink if pinned */
	size_t newsize = sp->size - extra;
	/* Prefer mremap, fall back to munmap */
	if ((FUNC0(sp->base, sp->size, newsize, CALL_MREMAP_NOMOVE) != MFAIL) ||
	    (FUNC1(sp->base + newsize, extra) == 0)) {
	  released = extra;
	}
      }

      if (released != 0) {
	sp->size -= released;
	FUNC3(m, m->top, m->topsize - released);
      }
    }

    /* Unmap any unused mmapped segments */
    released += FUNC5(m);

    /* On failure, disable autotrim to avoid repeated failed future calls */
    if (released == 0 && m->topsize > m->trim_check)
      m->trim_check = MAX_SIZE_T;
  }

  return (released != 0)? 1 : 0;
}