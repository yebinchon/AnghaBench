#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stbds_array_header ;
struct TYPE_3__ {size_t capacity; scalar_t__ hash_table; scalar_t__ length; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stbds_array_grow ; 
 int FUNC2 (void*) ; 
 size_t FUNC3 (void*) ; 
 TYPE_1__* FUNC4 (void*) ; 

void *FUNC5(void *a, size_t elemsize, size_t addlen, size_t min_cap)
{
  void *b;
  size_t min_len = FUNC3(a) + addlen;

  // compute the minimum capacity needed
  if (min_len > min_cap)
    min_cap = min_len;

  if (min_cap <= FUNC2(a))
    return a;

  // increase needed capacity to guarantee O(1) amortized
  if (min_cap < 2 * FUNC2(a))
    min_cap = 2 * FUNC2(a);
  else if (min_cap < 4)
    min_cap = 4;

  b = FUNC0(NULL, (a) ? FUNC4(a) : 0, elemsize * min_cap + sizeof(stbds_array_header));
  b = (char *) b + sizeof(stbds_array_header);
  if (a == NULL) {
    FUNC4(b)->length = 0;
    FUNC4(b)->hash_table = 0;
  } else {
    FUNC1(++stbds_array_grow);
  }
  FUNC4(b)->capacity = min_cap;
  return b;
}