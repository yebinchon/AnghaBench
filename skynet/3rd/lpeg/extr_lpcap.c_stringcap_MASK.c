#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  luaL_Buffer ;
struct TYPE_15__ {TYPE_4__* cap; int /*<<< orphan*/  L; } ;
struct TYPE_14__ {int /*<<< orphan*/  idx; } ;
struct TYPE_11__ {scalar_t__ s; scalar_t__ e; } ;
struct TYPE_12__ {TYPE_4__* cp; TYPE_1__ s; } ;
struct TYPE_13__ {TYPE_2__ u; scalar_t__ isstring; } ;
typedef  TYPE_3__ StrAux ;
typedef  TYPE_4__ Capture ;
typedef  TYPE_5__ CapState ;

/* Variables and functions */
 int MAXSTRCAPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_5__*,char*) ; 
 int FUNC1 (TYPE_5__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7 (luaL_Buffer *b, CapState *cs) {
  StrAux cps[MAXSTRCAPS];
  int n;
  size_t len, i;
  const char *fmt;  /* format string */
  fmt = FUNC5(cs->L, FUNC6(cs, cs->cap->idx), &len);
  n = FUNC1(cs, cps, 0) - 1;  /* collect nested captures */
  for (i = 0; i < len; i++) {  /* traverse them */
    if (fmt[i] != '%')  /* not an escape? */
      FUNC2(b, fmt[i]);  /* add it to buffer */
    else if (fmt[++i] < '0' || fmt[i] > '9')  /* not followed by a digit? */
      FUNC2(b, fmt[i]);  /* add to buffer */
    else {
      int l = fmt[i] - '0';  /* capture index */
      if (l > n)
        FUNC4(cs->L, "invalid capture index (%d)", l);
      else if (cps[l].isstring)
        FUNC3(b, cps[l].u.s.s, cps[l].u.s.e - cps[l].u.s.s);
      else {
        Capture *curr = cs->cap;
        cs->cap = cps[l].u.cp;  /* go back to evaluate that nested capture */
        if (!FUNC0(b, cs, "capture"))
          FUNC4(cs->L, "no values in capture index %d", l);
        cs->cap = curr;  /* continue from where it stopped */
      }
    }
  }
}