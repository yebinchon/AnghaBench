#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ length; } ;

/* Variables and functions */
 void* FUNC0 (void*,size_t) ; 
 void* FUNC1 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,size_t) ; 
 void* FUNC3 (void*,size_t,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC4 (void*) ; 

void * FUNC5(void *a, size_t elemsize)
{
  // three cases:
  //   a is NULL <- allocate
  //   a has a hash table but no entries, because of shmode <- grow
  //   a has entries <- do nothing
  if (a == NULL || FUNC4(FUNC1(a,elemsize))->length == 0) {
    a = FUNC3(a ? FUNC1(a,elemsize) : NULL, elemsize, 0, 1);
    FUNC4(a)->length += 1;
    FUNC2(a, 0, elemsize);
    a=FUNC0(a,elemsize);
  }
  return a;
}