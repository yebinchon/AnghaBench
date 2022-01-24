#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_7__ {scalar_t__ size; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  GCtab ;
typedef  TYPE_1__ CType ;
typedef  int /*<<< orphan*/  CTState ;
typedef  scalar_t__ CTSize ;
typedef  int /*<<< orphan*/  CTInfo ;

/* Variables and functions */
 scalar_t__ CTSIZE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(CTState *cts, CType *d,
			    uint8_t *dp, GCtab *t, CTInfo flags)
{
  int32_t i;
  CType *dc = FUNC1(cts, d);  /* Array element type. */
  CTSize size = d->size, esize = dc->size, ofs = 0;
  for (i = 0; ; i++) {
    TValue *tv = (TValue *)FUNC3(t, i);
    if (!tv || FUNC6(tv)) {
      if (i == 0) continue;  /* Try again for 1-based tables. */
      break;  /* Stop at first nil. */
    }
    if (ofs >= size)
      FUNC0(cts, d);
    FUNC2(cts, dc, dp + ofs, tv, flags);
    ofs += esize;
  }
  if (size != CTSIZE_INVALID) {  /* Only fill up arrays with known size. */
    if (ofs == esize) {  /* Replicate a single element. */
      for (; ofs < size; ofs += esize) FUNC4(dp + ofs, dp, esize);
    } else {  /* Otherwise fill the remainder with zero. */
      FUNC5(dp + ofs, 0, size - ofs);
    }
  }
}