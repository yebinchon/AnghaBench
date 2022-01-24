#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  ZIO ;
struct TYPE_22__ {scalar_t__ sizeupvalues; } ;
struct TYPE_21__ {scalar_t__ nupvalues; TYPE_7__* p; } ;
struct TYPE_20__ {char const* name; int /*<<< orphan*/ * Z; TYPE_1__* L; } ;
typedef  TYPE_2__ LoadState ;
typedef  TYPE_3__ LClosure ;

/* Variables and functions */
 char const* LUA_SIGNATURE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  buff ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_3__* FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_3__*) ; 

LClosure *FUNC9(lua_State *L, ZIO *Z, const char *name) {
  LoadState S;
  LClosure *cl;
  if (*name == '@' || *name == '=')
    S.name = name + 1;
  else if (*name == LUA_SIGNATURE[0])
    S.name = "binary string";
  else
    S.name = name;
  S.L = L;
  S.Z = Z;
  FUNC2(&S);
  cl = FUNC4(L, FUNC0(&S));
  FUNC8(L, L->top, cl);
  FUNC3(L);
  cl->p = FUNC5(L);
  FUNC1(&S, cl->p, NULL);
  FUNC6(cl->nupvalues == cl->p->sizeupvalues);
  FUNC7(L, buff, cl->p);
  return cl;
}