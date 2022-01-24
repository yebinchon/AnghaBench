#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_4__ {int /*<<< orphan*/  metatable; } ;
struct TYPE_3__ {int /*<<< orphan*/  metatable; } ;
typedef  int /*<<< orphan*/  MMS ;
typedef  int /*<<< orphan*/  GCtab ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *) ; 

cTValue *FUNC10(lua_State *L, cTValue *o, MMS mm)
{
  GCtab *mt;
  if (FUNC7(o))
    mt = FUNC6(FUNC5(o)->metatable);
  else if (FUNC8(o))
    mt = FUNC6(FUNC9(o)->metatable);
  else
    mt = FUNC6(FUNC1(FUNC0(L), o));
  if (mt) {
    cTValue *mo = FUNC2(mt, FUNC3(FUNC0(L), mm));
    if (mo)
      return mo;
  }
  return FUNC4(L);
}