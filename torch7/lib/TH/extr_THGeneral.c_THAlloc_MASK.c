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
 int /*<<< orphan*/  torchGCData ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void* FUNC3(ptrdiff_t size)
{
  void *ptr;

  if(size < 0)
    FUNC1("$ Torch: invalid memory size -- maybe an overflow?");

  if(size == 0)
    return NULL;

  ptr = FUNC0(size);

  if(!ptr && &torchGCFunction) {
    FUNC2(torchGCData);
    ptr = FUNC0(size);
  }

  if(!ptr)
    FUNC1("$ Torch: not enough memory: you tried to allocate %dGB. Buy new RAM!", size/1073741824);

  return ptr;
}