#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  scalar_t__ lua_Integer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  LUAL_BUFFERSIZE ; 
#define  _IOFBF 130 
#define  _IOLBF 129 
#define  _IONBF 128 
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char const* const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int const,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5 (lua_State *L) {
  static const int mode[] = {_IONBF, _IOFBF, _IOLBF};
  static const char *const modenames[] = {"no", "full", "line", NULL};
  FILE *f = FUNC4(L);
  int op = FUNC0(L, 2, NULL, modenames);
  lua_Integer sz = FUNC2(L, 3, LUAL_BUFFERSIZE);
  int res = FUNC3(f, NULL, mode[op], (size_t)sz);
  return FUNC1(L, res == 0, NULL);
}