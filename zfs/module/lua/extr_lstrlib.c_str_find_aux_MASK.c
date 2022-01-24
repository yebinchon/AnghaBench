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
struct TYPE_4__ {scalar_t__ matchdepth; char const* src_init; char const* src_end; char const* p_end; scalar_t__ level; int /*<<< orphan*/ * L; } ;
typedef  TYPE_1__ MatchState ;

/* Variables and functions */
 scalar_t__ MAXCCALLS ; 
 char* FUNC0 (char const*,size_t,char const*,size_t) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 char* FUNC7 (TYPE_1__*,char const*,char const*) ; 
 scalar_t__ FUNC8 (char const*,size_t) ; 
 size_t FUNC9 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC10 (TYPE_1__*,char const*,char const*) ; 

__attribute__((used)) static int FUNC11 (lua_State *L, int find) {
  size_t ls, lp;
  const char *s = FUNC1(L, 1, &ls);
  const char *p = FUNC1(L, 2, &lp);
  size_t init = FUNC9(FUNC2(L, 3, 1), ls);
  if (init < 1) init = 1;
  else if (init > ls + 1) {  /* start after string's end? */
    FUNC5(L);  /* cannot find anything */
    return 1;
  }
  /* explicit request or no special characters? */
  if (find && (FUNC6(L, 4) || FUNC8(p, lp))) {
    /* do a plain search */
    const char *s2 = FUNC0(s + init - 1, ls - init + 1, p, lp);
    if (s2) {
      FUNC4(L, s2 - s + 1);
      FUNC4(L, s2 - s + lp);
      return 2;
    }
  }
  else {
    MatchState ms;
    const char *s1 = s + init - 1;
    int anchor = (*p == '^');
    if (anchor) {
      p++; lp--;  /* skip anchor character */
    }
    ms.L = L;
    ms.matchdepth = MAXCCALLS;
    ms.src_init = s;
    ms.src_end = s + ls;
    ms.p_end = p + lp;
    do {
      const char *res;
      ms.level = 0;
      FUNC3(ms.matchdepth == MAXCCALLS);
      if ((res=FUNC7(&ms, s1, p)) != NULL) {
        if (find) {
          FUNC4(L, s1 - s + 1);  /* start */
          FUNC4(L, res - s);   /* end */
          return FUNC10(&ms, NULL, 0) + 2;
        }
        else
          return FUNC10(&ms, s1, res);
      }
    } while (s1++ < ms.src_end && !anchor);
  }
  FUNC5(L);  /* not found */
  return 1;
}