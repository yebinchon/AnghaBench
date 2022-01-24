#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_14__ {int /*<<< orphan*/ * cache; } ;
struct TYPE_13__ {int /*<<< orphan*/  metatable; int /*<<< orphan*/  udtype; } ;
typedef  TYPE_2__ GCudata ;
typedef  int /*<<< orphan*/  GCtab ;
typedef  TYPE_3__ CLibrary ;

/* Variables and functions */
 int /*<<< orphan*/  UDTYPE_FFI_CLIB ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static CLibrary *FUNC6(lua_State *L, GCtab *mt)
{
  GCtab *t = FUNC0(L, 0, 0);
  GCudata *ud = FUNC1(L, sizeof(CLibrary), t);
  CLibrary *cl = (CLibrary *)FUNC5(ud);
  cl->cache = t;
  ud->udtype = UDTYPE_FFI_CLIB;
  /* NOBARRIER: The GCudata is new (marked white). */
  FUNC3(ud->metatable, FUNC2(mt));
  FUNC4(L, L->top++, ud);
  return cl;
}