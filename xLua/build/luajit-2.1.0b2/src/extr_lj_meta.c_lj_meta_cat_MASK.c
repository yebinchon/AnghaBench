#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_16__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_20__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_2__ lua_State ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_21__ {scalar_t__ len; } ;
struct TYPE_19__ {scalar_t__ total; scalar_t__ threshold; } ;
struct TYPE_18__ {TYPE_1__ gc; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  SBuf ;
typedef  scalar_t__ MSize ;
typedef  TYPE_3__ GCstr ;

/* Variables and functions */
 TYPE_16__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  LJ_ERR_OPCAT ; 
 int /*<<< orphan*/  LJ_ERR_STROV ; 
 int LJ_FR2 ; 
 scalar_t__ LJ_MAX_STR ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  MM_concat ; 
 int /*<<< orphan*/  STRFMT_G14 ; 
 scalar_t__ STRFMT_MAXBUF_NUM ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  lj_cont_cat ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *) ; 

TValue *FUNC25(lua_State *L, TValue *top, int left)
{
  int fromc = 0;
  if (left < 0) { left = -left; fromc = 1; }
  do {
    if (!(FUNC24(top) || FUNC23(top)) ||
	!(FUNC24(top-1) || FUNC23(top-1))) {
      cTValue *mo = FUNC12(L, top-1, MM_concat);
      if (FUNC22(mo)) {
	mo = FUNC12(L, top, MM_concat);
	if (FUNC22(mo)) {
	  if (FUNC24(top-1) || FUNC23(top-1)) top++;
	  FUNC10(L, top-1, LJ_ERR_OPCAT);
	  return NULL;  /* unreachable */
	}
      }
      /* One of the top two elements is not a string, call __cat metamethod:
      **
      ** before:    [...][CAT stack .........................]
      **                                 top-1     top         top+1 top+2
      ** pick two:  [...][CAT stack ...] [o1]      [o2]
      ** setup mm:  [...][CAT stack ...] [cont|?]  [mo|tmtype] [o1]  [o2]
      ** in asm:    [...][CAT stack ...] [cont|PC] [mo|delta]  [o1]  [o2]
      **            ^-- func base                              ^-- mm base
      ** after mm:  [...][CAT stack ...] <--push-- [result]
      ** next step: [...][CAT stack .............]
      */
      FUNC2(L, top+2*LJ_FR2+2, top);  /* Carefully ordered stack copies! */
      FUNC2(L, top+2*LJ_FR2+1, top-1);
      FUNC2(L, top+LJ_FR2, mo);
      FUNC16(top-1, lj_cont_cat);
      if (LJ_FR2) { FUNC17(top); FUNC17(top+2); top += 2; }
      return top+1;  /* Trigger metamethod call. */
    } else {
      /* Pick as many strings as possible from the top and concatenate them:
      **
      ** before:    [...][CAT stack ...........................]
      ** pick str:  [...][CAT stack ...] [...... strings ......]
      ** concat:    [...][CAT stack ...] [result]
      ** next step: [...][CAT stack ............]
      */
      TValue *e, *o = top;
      uint64_t tlen = FUNC24(o) ? FUNC19(o)->len : STRFMT_MAXBUF_NUM;
      SBuf *sb;
      do {
	o--; tlen += FUNC24(o) ? FUNC19(o)->len : STRFMT_MAXBUF_NUM;
      } while (--left > 0 && (FUNC24(o-1) || FUNC23(o-1)));
      if (tlen >= LJ_MAX_STR) FUNC9(L, LJ_ERR_STROV);
      sb = FUNC8(L);
      FUNC5(sb, (MSize)tlen);
      for (e = top, top = o; o <= e; o++) {
	if (FUNC24(o)) {
	  GCstr *s = FUNC19(o);
	  MSize len = s->len;
	  FUNC6(sb, FUNC20(s), len);
	} else if (FUNC21(o)) {
	  FUNC14(sb, FUNC4(o));
	} else {
	  FUNC13(sb, STRFMT_G14, FUNC15(o));
	}
      }
      FUNC18(L, top, FUNC7(L, sb));
    }
  } while (left >= 1);
  if (FUNC1(FUNC0(L)->gc.total >= FUNC0(L)->gc.threshold)) {
    if (!fromc) L->top = FUNC3(L);
    FUNC11(L);
  }
  return NULL;
}