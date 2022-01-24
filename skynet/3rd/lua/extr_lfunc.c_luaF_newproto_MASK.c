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
struct TYPE_4__ {int /*<<< orphan*/ * source; scalar_t__ lastlinedefined; scalar_t__ linedefined; scalar_t__ sizelocvars; int /*<<< orphan*/ * locvars; scalar_t__ maxstacksize; scalar_t__ is_vararg; scalar_t__ numparams; scalar_t__ sizeupvalues; int /*<<< orphan*/ * upvalues; scalar_t__ sizelineinfo; int /*<<< orphan*/ * lineinfo; scalar_t__ sizecode; int /*<<< orphan*/ * code; scalar_t__ sizep; int /*<<< orphan*/ * p; scalar_t__ sizek; int /*<<< orphan*/ * k; } ;
typedef  TYPE_1__ Proto ;
typedef  int /*<<< orphan*/  GCObject ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TPROTO ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

Proto *FUNC2 (lua_State *L) {
  GCObject *o = FUNC1(L, LUA_TPROTO, sizeof(Proto));
  Proto *f = FUNC0(o);
  f->k = NULL;
  f->sizek = 0;
  f->p = NULL;
  f->sizep = 0;
  f->code = NULL;
  f->sizecode = 0;
  f->lineinfo = NULL;
  f->sizelineinfo = 0;
  f->upvalues = NULL;
  f->sizeupvalues = 0;
  f->numparams = 0;
  f->is_vararg = 0;
  f->maxstacksize = 0;
  f->locvars = NULL;
  f->sizelocvars = 0;
  f->linedefined = 0;
  f->lastlinedefined = 0;
  f->source = NULL;
  return f;
}