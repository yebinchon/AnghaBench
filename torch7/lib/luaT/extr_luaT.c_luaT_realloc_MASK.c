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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*) ; 
 void* FUNC3 (void*,int) ; 

void* FUNC4(lua_State *L, void *ptr, ptrdiff_t size)
{
  if(!ptr)
    return(FUNC1(L, size));

  if(size == 0)
  {
    FUNC2(L, ptr);
    return NULL;
  }

  if(size < 0)
    FUNC0(L, "$ Torch: invalid memory size -- maybe an overflow?");

  ptr = FUNC3(ptr, size);
  if(!ptr)
    FUNC0(L, "$ Torch: not enough memory: you tried to reallocate %dGB. Buy new RAM!", size/1073741824);
  return ptr;
}