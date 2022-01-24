#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * storage; scalar_t__ alloc; } ;
typedef  int /*<<< orphan*/  TIM_SORT_RUN_T ;
typedef  TYPE_1__ TEMP_STORAGE_T ;
typedef  int /*<<< orphan*/  SORT_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t const,TYPE_1__*,size_t,int /*<<< orphan*/ *,size_t*,size_t*) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,TYPE_1__*,size_t const) ; 
 int TIM_SORT_STACK_SIZE ; 
 size_t FUNC4 (size_t const) ; 

void FUNC5(SORT_TYPE *dst, const size_t size) {
  size_t minrun;
  TEMP_STORAGE_T _store, *store;
  TIM_SORT_RUN_T run_stack[TIM_SORT_STACK_SIZE];
  size_t stack_curr = 0;
  size_t curr = 0;

  /* don't bother sorting an array of size 1 */
  if (size <= 1) {
    return;
  }

  if (size < 64) {
    FUNC0(dst, size);
    return;
  }

  /* compute the minimum run length */
  minrun = FUNC4(size);
  /* temporary storage for merges */
  store = &_store;
  store->alloc = 0;
  store->storage = NULL;

  if (!FUNC2(dst, size, store, minrun, run_stack, &stack_curr, &curr)) {
    return;
  }

  if (!FUNC2(dst, size, store, minrun, run_stack, &stack_curr, &curr)) {
    return;
  }

  if (!FUNC2(dst, size, store, minrun, run_stack, &stack_curr, &curr)) {
    return;
  }

  while (1) {
    if (!FUNC1(run_stack, stack_curr)) {
      stack_curr = FUNC3(dst, run_stack, stack_curr, store, size);
      continue;
    }

    if (!FUNC2(dst, size, store, minrun, run_stack, &stack_curr, &curr)) {
      return;
    }
  }
}