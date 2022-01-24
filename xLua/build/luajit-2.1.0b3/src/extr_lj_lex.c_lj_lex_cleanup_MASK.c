#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  global_State ;
struct TYPE_3__ {int /*<<< orphan*/  sb; int /*<<< orphan*/  sizevstack; int /*<<< orphan*/  vstack; int /*<<< orphan*/  sizebcstack; int /*<<< orphan*/  bcstack; } ;
typedef  TYPE_1__ LexState ;

/* Variables and functions */
 int /*<<< orphan*/  BCInsLine ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VarInfo ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(lua_State *L, LexState *ls)
{
  global_State *g = FUNC0(L);
  FUNC2(g, ls->bcstack, ls->sizebcstack, BCInsLine);
  FUNC2(g, ls->vstack, ls->sizevstack, VarInfo);
  FUNC1(g, &ls->sb);
}