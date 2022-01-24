#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {int /*<<< orphan*/  value; } ;
struct TYPE_6__ {int /*<<< orphan*/ * v; TYPE_1__ u; } ;
typedef  TYPE_2__ UpVal ;
struct TYPE_7__ {TYPE_2__ uv; } ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TUPVAL ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

UpVal *FUNC2 (lua_State *L) {
  UpVal *uv = &FUNC0(L, LUA_TUPVAL, sizeof(UpVal), NULL, 0)->uv;
  uv->v = &uv->u.value;
  FUNC1(uv->v);
  return uv;
}