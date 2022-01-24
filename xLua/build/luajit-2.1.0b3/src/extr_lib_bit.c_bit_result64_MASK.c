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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_5__ {int base; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  GCcdata ;
typedef  int /*<<< orphan*/  CTypeID ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int LJ_FR2 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(lua_State *L, CTypeID id, uint64_t x)
{
  GCcdata *cd = FUNC2(L, id, 8);
  *(uint64_t *)FUNC1(cd) = x;
  FUNC3(L, L->base-1-LJ_FR2, cd);
  return FUNC0(1);
}