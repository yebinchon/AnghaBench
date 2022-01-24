#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {scalar_t__ len; } ;
typedef  scalar_t__ const MSize ;
typedef  TYPE_1__ GCstr ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_ERR_INVOPTM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (char const*,char const*,scalar_t__ const) ; 
 char* FUNC4 (TYPE_1__*) ; 

int FUNC5(lua_State *L, int narg, int def, const char *lst)
{
  GCstr *s = def >= 0 ? FUNC2(L, narg) : FUNC1(L, narg);
  if (s) {
    const char *opt = FUNC4(s);
    MSize len = s->len;
    int i;
    for (i = 0; *(const uint8_t *)lst; i++) {
      if (*(const uint8_t *)lst == len && FUNC3(opt, lst+1, len) == 0)
	return i;
      lst += 1+*(const uint8_t *)lst;
    }
    FUNC0(L, narg, LJ_ERR_INVOPTM, opt);
  }
  return def;
}