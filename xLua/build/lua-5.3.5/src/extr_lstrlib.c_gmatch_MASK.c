#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {char const* src; char const* p; int /*<<< orphan*/ * lastmatch; int /*<<< orphan*/  ms; } ;
typedef  TYPE_1__ GMatchState ;

/* Variables and functions */
 int /*<<< orphan*/  gmatch_aux ; 
 char* FUNC0 (int /*<<< orphan*/ *,int,size_t*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,size_t,char const*,size_t) ; 

__attribute__((used)) static int FUNC5 (lua_State *L) {
  size_t ls, lp;
  const char *s = FUNC0(L, 1, &ls);
  const char *p = FUNC0(L, 2, &lp);
  GMatchState *gm;
  FUNC3(L, 2);  /* keep them on closure to avoid being collected */
  gm = (GMatchState *)FUNC1(L, sizeof(GMatchState));
  FUNC4(&gm->ms, L, s, ls, p, lp);
  gm->src = s; gm->p = p; gm->lastmatch = NULL;
  FUNC2(L, gmatch_aux, 3);
  return 1;
}