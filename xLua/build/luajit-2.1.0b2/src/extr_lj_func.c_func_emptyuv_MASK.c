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
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {int closed; int /*<<< orphan*/  tv; int /*<<< orphan*/  v; int /*<<< orphan*/  gct; } ;
typedef  TYPE_1__ GCupval ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_TUPVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static GCupval *FUNC3(lua_State *L)
{
  GCupval *uv = (GCupval *)FUNC0(L, sizeof(GCupval));
  uv->gct = ~LJ_TUPVAL;
  uv->closed = 1;
  FUNC2(&uv->tv);
  FUNC1(uv->v, &uv->tv);
  return uv;
}