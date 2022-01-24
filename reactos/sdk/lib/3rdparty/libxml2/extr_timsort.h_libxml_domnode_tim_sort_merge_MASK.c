#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * storage; } ;
struct TYPE_6__ {size_t length; size_t start; } ;
typedef  TYPE_1__ TIM_SORT_RUN_T ;
typedef  TYPE_2__ TEMP_STORAGE_T ;
typedef  int /*<<< orphan*/  SORT_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t const,size_t const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t const) ; 

__attribute__((used)) static void FUNC4(SORT_TYPE *dst, const TIM_SORT_RUN_T *stack, const int stack_curr,
                           TEMP_STORAGE_T *store) {
  const size_t A = stack[stack_curr - 2].length;
  const size_t B = stack[stack_curr - 1].length;
  const size_t curr = stack[stack_curr - 2].start;
  SORT_TYPE *storage;
  size_t i, j, k;
  FUNC2(store, FUNC0(A, B));
  storage = store->storage;

  /* left merge */
  if (A < B) {
    FUNC3(storage, &dst[curr], A * sizeof(SORT_TYPE));
    i = 0;
    j = curr + A;

    for (k = curr; k < curr + A + B; k++) {
      if ((i < A) && (j < curr + A + B)) {
        if (FUNC1(storage[i], dst[j]) <= 0) {
          dst[k] = storage[i++];
        } else {
          dst[k] = dst[j++];
        }
      } else if (i < A) {
        dst[k] = storage[i++];
      } else {
        break;
      }
    }
  } else {
    /* right merge */
    FUNC3(storage, &dst[curr + A], B * sizeof(SORT_TYPE));
    i = B;
    j = curr + A;
    k = curr + A + B;

    while (k-- > curr) {
      if ((i > 0) && (j > curr)) {
        if (FUNC1(dst[j - 1], storage[i - 1]) > 0) {
          dst[k] = dst[--j];
        } else {
          dst[k] = storage[--i];
        }
      } else if (i > 0) {
        dst[k] = storage[--i];
      } else {
        break;
      }
    }
  }
}