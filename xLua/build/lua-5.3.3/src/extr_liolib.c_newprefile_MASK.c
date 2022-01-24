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
struct TYPE_3__ {int /*<<< orphan*/ * closef; } ;
typedef  TYPE_1__ LStream ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_FILEHANDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static LStream *FUNC2 (lua_State *L) {
  LStream *p = (LStream *)FUNC1(L, sizeof(LStream));
  p->closef = NULL;  /* mark file handle as 'closed' */
  FUNC0(L, LUA_FILEHANDLE);
  return p;
}