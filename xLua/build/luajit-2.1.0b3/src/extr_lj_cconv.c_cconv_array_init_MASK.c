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
struct TYPE_7__ {scalar_t__ size; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  scalar_t__ MSize ;
typedef  TYPE_1__ CType ;
typedef  int /*<<< orphan*/  CTState ;
typedef  scalar_t__ CTSize ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(CTState *cts, CType *d, CTSize sz, uint8_t *dp,
			     TValue *o, MSize len)
{
  CType *dc = FUNC1(cts, d);  /* Array element type. */
  CTSize ofs, esize = dc->size;
  MSize i;
  if (len*esize > sz)
    FUNC0(cts, d);
  for (i = 0, ofs = 0; i < len; i++, ofs += esize)
    FUNC2(cts, dc, dp + ofs, o + i, 0);
  if (ofs == esize) {  /* Replicate a single element. */
    for (; ofs < sz; ofs += esize) FUNC3(dp + ofs, dp, esize);
  } else {  /* Otherwise fill the remainder with zero. */
    FUNC4(dp + ofs, 0, sz - ofs);
  }
}