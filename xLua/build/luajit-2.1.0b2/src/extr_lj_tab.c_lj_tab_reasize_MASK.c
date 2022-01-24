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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {scalar_t__ hmask; } ;
typedef  TYPE_1__ GCtab ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__,scalar_t__) ; 

void FUNC2(lua_State *L, GCtab *t, uint32_t nasize)
{
  FUNC1(L, t, nasize+1, t->hmask > 0 ? FUNC0(t->hmask)+1 : 0);
}