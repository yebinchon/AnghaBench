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
typedef  int /*<<< orphan*/  lua_State ;
typedef  int lua_Integer ;
struct TYPE_4__ {scalar_t__ matchdepth; char const* src_init; char const* src_end; char const* p_end; scalar_t__ level; int /*<<< orphan*/ * L; } ;
typedef  TYPE_1__ MatchState ;

/* Variables and functions */
 scalar_t__ MAXCCALLS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 char* FUNC6 (TYPE_1__*,char const*,char const*) ; 
 int FUNC7 (TYPE_1__*,char const*,char const*) ; 

__attribute__((used)) static int FUNC8 (lua_State *L) {
  MatchState ms;
  size_t ls, lp;
  const char *s = FUNC4(L, FUNC5(1), &ls);
  const char *p = FUNC4(L, FUNC5(2), &lp);
  const char *src;
  ms.L = L;
  ms.matchdepth = MAXCCALLS;
  ms.src_init = s;
  ms.src_end = s+ls;
  ms.p_end = p + lp;
  for (src = s + (size_t)FUNC3(L, FUNC5(3));
       src <= ms.src_end;
       src++) {
    const char *e;
    ms.level = 0;
    FUNC0(ms.matchdepth == MAXCCALLS);
    if ((e = FUNC6(&ms, src, p)) != NULL) {
      lua_Integer newstart = e-s;
      if (e == src) newstart++;  /* empty match? go at least one position */
      FUNC1(L, newstart);
      FUNC2(L, FUNC5(3));
      return FUNC7(&ms, src, e);
    }
  }
  return 0;  /* not found */
}