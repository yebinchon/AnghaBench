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
struct TYPE_4__ {int /*<<< orphan*/ * top; int /*<<< orphan*/ * base; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_ERR_NOVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 

TValue *FUNC1(lua_State *L, int narg)
{
  TValue *o = L->base + narg-1;
  if (o >= L->top)
    FUNC0(L, narg, LJ_ERR_NOVAL);
  return o;
}