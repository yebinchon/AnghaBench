#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int lua_Integer ;
struct TYPE_6__ {int /*<<< orphan*/  src_end; } ;
typedef  TYPE_1__ MatchState ;

/* Variables and functions */
 char* FUNC0 (char const*,size_t,char const*,size_t) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 char* FUNC6 (TYPE_1__*,char const*,char const*) ; 
 scalar_t__ FUNC7 (char const*,size_t) ; 
 int FUNC8 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,char const*,size_t,char const*,size_t) ; 
 int FUNC10 (TYPE_1__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC12 (lua_State *L, int find) {
  size_t ls, lp;
  const char *s = FUNC1(L, 1, &ls);
  const char *p = FUNC1(L, 2, &lp);
  lua_Integer init = FUNC8(FUNC2(L, 3, 1), ls);
  if (init < 1) init = 1;
  else if (init > (lua_Integer)ls + 1) {  /* start after string's end? */
    FUNC4(L);  /* cannot find anything */
    return 1;
  }
  /* explicit request or no special characters? */
  if (find && (FUNC5(L, 4) || FUNC7(p, lp))) {
    /* do a plain search */
    const char *s2 = FUNC0(s + init - 1, ls - (size_t)init + 1, p, lp);
    if (s2) {
      FUNC3(L, (s2 - s) + 1);
      FUNC3(L, (s2 - s) + lp);
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
    FUNC9(&ms, L, s, ls, p, lp);
    do {
      const char *res;
      FUNC11(&ms);
      if ((res=FUNC6(&ms, s1, p)) != NULL) {
        if (find) {
          FUNC3(L, (s1 - s) + 1);  /* start */
          FUNC3(L, res - s);   /* end */
          return FUNC10(&ms, NULL, 0) + 2;
        }
        else
          return FUNC10(&ms, s1, res);
      }
    } while (s1++ < ms.src_end && !anchor);
  }
  FUNC4(L);  /* not found */
  return 1;
}