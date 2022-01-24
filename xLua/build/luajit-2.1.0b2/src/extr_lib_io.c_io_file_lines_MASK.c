#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ base; scalar_t__ top; } ;
typedef  TYPE_1__ lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_ERR_UNPACK ; 
 int LJ_MAX_UPVAL ; 
 int /*<<< orphan*/  io_file_iter ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(lua_State *L)
{
  int n = (int)(L->top - L->base);
  if (n > LJ_MAX_UPVAL)
    FUNC0(L, LJ_ERR_UNPACK);
  FUNC1(L, io_file_iter, n);
  return 1;
}