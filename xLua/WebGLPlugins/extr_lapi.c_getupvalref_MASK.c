#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  UpVal ;
struct TYPE_6__ {int /*<<< orphan*/ ** upvals; TYPE_1__* p; } ;
struct TYPE_5__ {int sizeupvalues; } ;
typedef  int /*<<< orphan*/  StkId ;
typedef  TYPE_2__ LClosure ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static UpVal **FUNC4 (lua_State *L, int fidx, int n, LClosure **pf) {
  LClosure *f;
  StkId fi = FUNC2(L, fidx);
  FUNC0(L, FUNC3(fi), "Lua function expected");
  f = FUNC1(fi);
  FUNC0(L, (1 <= n && n <= f->p->sizeupvalues), "invalid upvalue index");
  if (pf) *pf = f;
  return &f->upvals[n - 1];  /* get its upvalue pointer */
}