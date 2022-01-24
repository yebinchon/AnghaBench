#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_7__ {int /*<<< orphan*/  env; int /*<<< orphan*/  pc; scalar_t__ nupvalues; int /*<<< orphan*/  ffid; int /*<<< orphan*/  gct; } ;
struct TYPE_9__ {TYPE_1__ l; } ;
struct TYPE_8__ {scalar_t__ flags; scalar_t__ sizeuv; } ;
typedef  int /*<<< orphan*/  MSize ;
typedef  int /*<<< orphan*/  GCtab ;
typedef  TYPE_2__ GCproto ;
typedef  TYPE_3__ GCfunc ;

/* Variables and functions */
 int /*<<< orphan*/  FF_LUA ; 
 int /*<<< orphan*/  LJ_TFUNC ; 
 int PROTO_CLCOUNT ; 
 int PROTO_CLC_BITS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static GCfunc *FUNC6(lua_State *L, GCproto *pt, GCtab *env)
{
  uint32_t count;
  GCfunc *fn = (GCfunc *)FUNC0(L, FUNC5((MSize)pt->sizeuv));
  fn->l.gct = ~LJ_TFUNC;
  fn->l.ffid = FF_LUA;
  fn->l.nupvalues = 0;  /* Set to zero until upvalues are initialized. */
  /* NOBARRIER: Really a setgcref. But the GCfunc is new (marked white). */
  FUNC4(fn->l.pc, FUNC2(pt));
  FUNC3(fn->l.env, FUNC1(env));
  /* Saturating 3 bit counter (0..7) for created closures. */
  count = (uint32_t)pt->flags + PROTO_CLCOUNT;
  pt->flags = (uint8_t)(count - ((count >> PROTO_CLC_BITS) & PROTO_CLCOUNT));
  return fn;
}