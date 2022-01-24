#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_14__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_15__ {scalar_t__ nomm; int /*<<< orphan*/  metatable; } ;
typedef  TYPE_2__ GCtab ;

/* Variables and functions */
 unsigned int MM_mode ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 TYPE_2__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static GCtab *FUNC7(lua_State *L)
{
  /* NOBARRIER: The table is new (marked white). */
  GCtab *t = FUNC1(L, 0, 1);
  FUNC6(L, L->top++, t);
  FUNC4(t->metatable, FUNC3(t));
  FUNC5(L, FUNC2(L, t, FUNC0(L, "__mode")),
	  FUNC0(L, "k"));
  t->nomm = (uint8_t)(~(1u<<MM_mode));
  return t;
}