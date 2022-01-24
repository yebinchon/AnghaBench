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
typedef  int /*<<< orphan*/  luaL_Buffer ;
struct TYPE_4__ {scalar_t__ matchdepth; char const* src_init; char const* src_end; char const* p_end; scalar_t__ level; int /*<<< orphan*/ * L; } ;
typedef  TYPE_1__ MatchState ;

/* Variables and functions */
 int LUA_TFUNCTION ; 
 int LUA_TNUMBER ; 
 int LUA_TSTRING ; 
 int LUA_TTABLE ; 
 scalar_t__ MAXCCALLS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int,size_t*) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,int,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 
 char* FUNC11 (TYPE_1__*,char const*,char const*) ; 

__attribute__((used)) static int FUNC12 (lua_State *L) {
  size_t srcl, lp;
  const char *src = FUNC5(L, 1, &srcl);
  const char *p = FUNC5(L, 2, &lp);
  int tr = FUNC10(L, 3);
  size_t max_s = FUNC6(L, 4, srcl+1);
  int anchor = (*p == '^');
  size_t n = 0;
  MatchState ms;
  luaL_Buffer b;
  FUNC3(L, tr == LUA_TNUMBER || tr == LUA_TSTRING ||
                   tr == LUA_TFUNCTION || tr == LUA_TTABLE, 3,
                      "string/function/table expected");
  FUNC4(L, &b);
  if (anchor) {
    p++; lp--;  /* skip anchor character */
  }
  ms.L = L;
  ms.matchdepth = MAXCCALLS;
  ms.src_init = src;
  ms.src_end = src+srcl;
  ms.p_end = p + lp;
  while (n < max_s) {
    const char *e;
    ms.level = 0;
    FUNC8(ms.matchdepth == MAXCCALLS);
    e = FUNC11(&ms, src, p);
    if (e) {
      n++;
      FUNC0(&ms, &b, src, e, tr);
    }
    if (e && e>src) /* non empty match? */
      src = e;  /* skip it */
    else if (src < ms.src_end)
      FUNC1(&b, *src++);
    else break;
    if (anchor) break;
  }
  FUNC2(&b, src, ms.src_end-src);
  FUNC7(&b);
  FUNC9(L, n);  /* number of substitutions */
  return 2;
}