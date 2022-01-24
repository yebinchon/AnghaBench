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
 void* FUNC1 (int) ; 

void* FUNC2(lua_State *L, ptrdiff_t size)
{
  void *ptr;

  if(size == 0)
    return NULL;

  if(size < 0)
    FUNC0(L, "$ Torch: invalid memory size -- maybe an overflow?");

  ptr = FUNC1(size);
  if(!ptr)
    FUNC0(L, "$ Torch: not enough memory: you tried to allocate %dGB. Buy new RAM!", size/1073741824);

  return ptr;
}