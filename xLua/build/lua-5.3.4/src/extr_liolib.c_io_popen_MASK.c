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
struct TYPE_3__ {int /*<<< orphan*/ * f; int /*<<< orphan*/ * closef; } ;
typedef  TYPE_1__ LStream ;

/* Variables and functions */
 int /*<<< orphan*/  io_pclose ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6 (lua_State *L) {
#if defined(WINAPI_FAMILY_PARTITION)
  return luaL_error(L, "unsupport api in uwp platform");
#else
  const char *filename = FUNC1(L, 1);
  const char *mode = FUNC4(L, 2, "r");
  LStream *p = FUNC5(L);
  p->f = FUNC0(L, filename, mode);
  p->closef = &io_pclose;
  return (p->f == NULL) ? FUNC3(L, 0, filename) : 1;
#endif
}