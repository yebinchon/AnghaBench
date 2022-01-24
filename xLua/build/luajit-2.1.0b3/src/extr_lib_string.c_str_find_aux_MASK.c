#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ top; scalar_t__ base; } ;
typedef  TYPE_1__ lua_State ;
typedef  scalar_t__ int32_t ;
struct TYPE_14__ {scalar_t__ len; } ;
struct TYPE_13__ {char const* src_init; char const* src_end; scalar_t__ depth; scalar_t__ level; TYPE_1__* L; } ;
typedef  TYPE_2__ MatchState ;
typedef  scalar_t__ MSize ;
typedef  TYPE_3__ GCstr ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int,int) ; 
 char* FUNC2 (char const*,char const*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 char* FUNC4 (TYPE_2__*,char const*,char const*) ; 
 int FUNC5 (TYPE_2__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 char const* FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 

__attribute__((used)) static int FUNC10(lua_State *L, int find)
{
  GCstr *s = FUNC0(L, 1);
  GCstr *p = FUNC0(L, 2);
  int32_t start = FUNC1(L, 3, 1);
  MSize st;
  if (start < 0) start += (int32_t)s->len; else start--;
  if (start < 0) start = 0;
  st = (MSize)start;
  if (st > s->len) {
#if LJ_52
    setnilV(L->top-1);
    return 1;
#else
    st = s->len;
#endif
  }
  if (find && ((L->base+3 < L->top && FUNC9(L->base+3)) ||
	       !FUNC3(p))) {  /* Search for fixed string. */
    const char *q = FUNC2(FUNC8(s)+st, FUNC8(p), s->len-st, p->len);
    if (q) {
      FUNC6(L->top-2, (int32_t)(q-FUNC8(s)) + 1);
      FUNC6(L->top-1, (int32_t)(q-FUNC8(s)) + (int32_t)p->len);
      return 2;
    }
  } else {  /* Search for pattern. */
    MatchState ms;
    const char *pstr = FUNC8(p);
    const char *sstr = FUNC8(s) + st;
    int anchor = 0;
    if (*pstr == '^') { pstr++; anchor = 1; }
    ms.L = L;
    ms.src_init = FUNC8(s);
    ms.src_end = FUNC8(s) + s->len;
    do {  /* Loop through string and try to match the pattern. */
      const char *q;
      ms.level = ms.depth = 0;
      q = FUNC4(&ms, sstr, pstr);
      if (q) {
	if (find) {
	  FUNC6(L->top++, (int32_t)(sstr-(FUNC8(s)-1)));
	  FUNC6(L->top++, (int32_t)(q-FUNC8(s)));
	  return FUNC5(&ms, NULL, NULL) + 2;
	} else {
	  return FUNC5(&ms, sstr, q);
	}
      }
    } while (sstr++ < ms.src_end && !anchor);
  }
  FUNC7(L->top-1);  /* Not found. */
  return 1;
}