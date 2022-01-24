#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* ptrdiff_t ;
struct TYPE_8__ {unsigned short nny; void* errfunc; int /*<<< orphan*/  allowhook; int /*<<< orphan*/ * ci; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  lu_byte ;
typedef  int /*<<< orphan*/  StkId ;
typedef  int /*<<< orphan*/  Pfunc ;
typedef  int /*<<< orphan*/  CallInfo ;

/* Variables and functions */
 int LUA_OK ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 

int FUNC5 (lua_State *L, Pfunc func, void *u,
                ptrdiff_t old_top, ptrdiff_t ef) {
  int status;
  CallInfo *old_ci = L->ci;
  lu_byte old_allowhooks = L->allowhook;
  unsigned short old_nny = L->nny;
  ptrdiff_t old_errfunc = L->errfunc;
  L->errfunc = ef;
  status = FUNC0(L, func, u);
  if (status != LUA_OK) {  /* an error occurred? */
    StkId oldtop = FUNC3(L, old_top);
    FUNC2(L, oldtop);  /* close possible pending closures */
    FUNC4(L, status, oldtop);
    L->ci = old_ci;
    L->allowhook = old_allowhooks;
    L->nny = old_nny;
    FUNC1(L);
  }
  L->errfunc = old_errfunc;
  return status;
}