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
typedef  scalar_t__ ptrdiff_t ;

/* Variables and functions */
 scalar_t__ PTRDIFF_MAX ; 
 scalar_t__ PTRDIFF_MIN ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ heapDelta ; 
 scalar_t__ heapMaxDelta ; 
 scalar_t__ heapMinDelta ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(ptrdiff_t size) {
#ifdef DEBUG
  if (size > 0 && heapDelta > PTRDIFF_MAX - size)
    THError("THHeapUpdate: heapDelta(%td) + increased(%td) > PTRDIFF_MAX, heapDelta overflow!", heapDelta, size);
  if (size < 0 && heapDelta < PTRDIFF_MIN - size)
    THError("THHeapUpdate: heapDelta(%td) + decreased(%td) < PTRDIFF_MIN, heapDelta underflow!", heapDelta, size);
#endif

  heapDelta += size;

  // batch updates to global heapSize to minimize thread contention
  if (heapDelta < heapMaxDelta && heapDelta > heapMinDelta) {
    return;
  }

  ptrdiff_t newHeapSize = FUNC1();

  if (size > 0) {
    FUNC2(newHeapSize);
  }
}