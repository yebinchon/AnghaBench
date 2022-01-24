#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ top; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_8__ {int numparams; int /*<<< orphan*/  maxstacksize; } ;
typedef  scalar_t__ StkId ;
typedef  TYPE_2__ Proto ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static StkId FUNC4 (lua_State *L, Proto *p, int actual) {
  int i;
  int nfixargs = p->numparams;
  StkId base, fixed;
  FUNC1(actual >= nfixargs);
  /* move fixed parameters to final position */
  FUNC0(L, p->maxstacksize);  /* check again for new 'base' */
  fixed = L->top - actual;  /* first fixed argument */
  base = L->top;  /* final position of first argument */
  for (i=0; i<nfixargs; i++) {
    FUNC3(L, L->top++, fixed + i);
    FUNC2(fixed + i);
  }
  return base;
}