#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int /*<<< orphan*/  sizeupvalues; int /*<<< orphan*/  upvalues; int /*<<< orphan*/  sizelocvars; int /*<<< orphan*/  locvars; int /*<<< orphan*/  sizelineinfo; int /*<<< orphan*/  lineinfo; int /*<<< orphan*/  sizek; int /*<<< orphan*/  k; int /*<<< orphan*/  sizep; int /*<<< orphan*/  p; int /*<<< orphan*/  sizecode; int /*<<< orphan*/  code; } ;
typedef  TYPE_1__ Proto ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2 (lua_State *L, Proto *f) {
  FUNC1(L, f->code, f->sizecode);
  FUNC1(L, f->p, f->sizep);
  FUNC1(L, f->k, f->sizek);
  FUNC1(L, f->lineinfo, f->sizelineinfo);
  FUNC1(L, f->locvars, f->sizelocvars);
  FUNC1(L, f->upvalues, f->sizeupvalues);
  FUNC0(L, f);
}