#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_13__ {char const* s; scalar_t__ valuecached; TYPE_1__* cap; int /*<<< orphan*/ * L; } ;
struct TYPE_12__ {char const* s; int /*<<< orphan*/  kind; } ;
typedef  TYPE_1__ Capture ;
typedef  TYPE_2__ CapState ;

/* Variables and functions */
 int /*<<< orphan*/  Cclose ; 
 scalar_t__ Cgroup ; 
 int /*<<< orphan*/  LUA_MULTRET ; 
 int /*<<< orphan*/  SUBJIDX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 

int FUNC12 (CapState *cs, Capture *close, const char *s, int *rem) {
  int n, id;
  lua_State *L = cs->L;
  int otop = FUNC6(L);
  Capture *open = FUNC3(close);
  FUNC0(FUNC1(open) == Cgroup);
  id = FUNC2(open, close);  /* get first dynamic capture argument */
  close->kind = Cclose;  /* closes the group */
  close->s = s;
  cs->cap = open; cs->valuecached = 0;  /* prepare capture state */
  FUNC4(L, 4, "too many runtime captures");
  FUNC10(cs);  /* push function to be called */
  FUNC8(L, SUBJIDX);  /* push original subject */
  FUNC7(L, s - cs->s + 1);  /* push current position */
  n = FUNC11(cs, 0);  /* push nested captures */
  FUNC5(L, n + 2, LUA_MULTRET);  /* call dynamic function */
  if (id > 0) {  /* are there old dynamic captures to be removed? */
    int i;
    for (i = id; i <= otop; i++)
      FUNC9(L, id);  /* remove old dynamic captures */
    *rem = otop - id + 1;  /* total number of dynamic captures removed */
  }
  else
    *rem = 0;  /* no dynamic captures removed */
  return close - open;  /* number of captures of all kinds removed */
}