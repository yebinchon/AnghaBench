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
typedef  int ptrdiff_t ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (void*) ; 
 void* FUNC5 (void*,int) ; 
 int /*<<< orphan*/  torchGCData ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void* FUNC7(void *ptr, ptrdiff_t size)
{
  if(!ptr)
    return(FUNC0(size));

  if(size == 0)
  {
    FUNC2(ptr);
    return NULL;
  }

  if(size < 0)
    FUNC1("$ Torch: invalid memory size -- maybe an overflow?");

  ptrdiff_t oldSize = -FUNC4(ptr);
  void *newptr = FUNC5(ptr, size);

  if(!newptr && &torchGCFunction) {
    FUNC6(torchGCData);
    newptr = FUNC5(ptr, size);
  }

  if(!newptr)
    FUNC1("$ Torch: not enough memory: you tried to reallocate %dGB. Buy new RAM!", size/1073741824);

  // update heapSize only after successfully reallocated
  FUNC3(oldSize + FUNC4(newptr));

  return newptr;
}