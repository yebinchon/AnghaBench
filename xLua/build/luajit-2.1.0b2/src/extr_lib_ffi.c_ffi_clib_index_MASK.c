#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * top; int /*<<< orphan*/ * base; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_8__ {scalar_t__ udtype; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  CLibrary ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TSTRING ; 
 int /*<<< orphan*/  LUA_TUSERDATA ; 
 scalar_t__ UDTYPE_FFI_CLIB ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static TValue *FUNC7(lua_State *L)
{
  TValue *o = L->base;
  CLibrary *cl;
  if (!(o < L->top && FUNC4(o) && FUNC5(o)->udtype == UDTYPE_FFI_CLIB))
    FUNC1(L, 1, LUA_TUSERDATA);
  cl = (CLibrary *)FUNC6(FUNC5(o));
  if (!(o+1 < L->top && FUNC3(o+1)))
    FUNC1(L, 2, LUA_TSTRING);
  return FUNC0(L, cl, FUNC2(o+1));
}