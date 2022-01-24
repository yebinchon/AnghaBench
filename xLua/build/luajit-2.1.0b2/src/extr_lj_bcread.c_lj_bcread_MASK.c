#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_16__ {int top; } ;
typedef  TYPE_1__ lua_State ;
typedef  scalar_t__ int32_t ;
struct TYPE_17__ {scalar_t__ c; scalar_t__* p; scalar_t__* pe; int /*<<< orphan*/  sb; TYPE_1__* L; } ;
typedef  int MSize ;
typedef  TYPE_2__ LexState ;
typedef  int /*<<< orphan*/  GCproto ;

/* Variables and functions */
 scalar_t__ BCDUMP_HEAD1 ; 
 int /*<<< orphan*/  LJ_ERR_BCBAD ; 
 int /*<<< orphan*/  LJ_ERR_BCFMT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,int) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/ * FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 

GCproto *FUNC13(LexState *ls)
{
  lua_State *L = ls->L;
  FUNC10(ls->c == BCDUMP_HEAD1);
  FUNC4(L, ls, L->top);
  FUNC9(&ls->sb);
  /* Check for a valid bytecode dump header. */
  if (!FUNC1(ls))
    FUNC0(ls, LJ_ERR_BCFMT);
  for (;;) {  /* Process all prototypes in the bytecode dump. */
    GCproto *pt;
    MSize len;
    const char *startp;
    /* Read length. */
    if (ls->p < ls->pe && ls->p[0] == 0) {  /* Shortcut EOF. */
      ls->p++;
      break;
    }
    FUNC6(ls, 5);
    len = FUNC5(ls);
    if (!len) break;  /* EOF */
    FUNC2(ls, len);
    startp = ls->p;
    pt = FUNC8(ls);
    if (ls->p != startp + len)
      FUNC0(ls, LJ_ERR_BCBAD);
    FUNC12(L, L->top, pt);
    FUNC7(L);
  }
  if ((int32_t)(2*(uint32_t)(ls->pe - ls->p)) > 0 ||
      L->top-1 != FUNC3(L, ls))
    FUNC0(ls, LJ_ERR_BCBAD);
  /* Pop off last prototype. */
  L->top--;
  return FUNC11(L->top);
}