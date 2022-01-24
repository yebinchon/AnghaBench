#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  s; } ;
struct TYPE_14__ {TYPE_6__* cap; } ;
struct TYPE_11__ {int /*<<< orphan*/  e; int /*<<< orphan*/  s; } ;
struct TYPE_12__ {TYPE_1__ s; TYPE_6__* cp; } ;
struct TYPE_13__ {int isstring; TYPE_2__ u; } ;
typedef  TYPE_3__ StrAux ;
typedef  TYPE_4__ CapState ;

/* Variables and functions */
 scalar_t__ Csimple ; 
 int MAXSTRCAPS ; 
 scalar_t__ FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC5 (CapState *cs, StrAux *cps, int n) {
  int k = n++;
  cps[k].isstring = 1;  /* get string value */
  cps[k].u.s.s = cs->cap->s;  /* starts here */
  if (!FUNC3(cs->cap++)) {  /* nested captures? */
    while (!FUNC2(cs->cap)) {  /* traverse them */
      if (n >= MAXSTRCAPS)  /* too many captures? */
        FUNC4(cs);  /* skip extra captures (will not need them) */
      else if (FUNC0(cs->cap) == Csimple)  /* string? */
        n = FUNC5(cs, cps, n);  /* put info. into array */
      else {
        cps[n].isstring = 0;  /* not a string */
        cps[n].u.cp = cs->cap;  /* keep original capture */
        FUNC4(cs);
        n++;
      }
    }
    cs->cap++;  /* skip close */
  }
  cps[k].u.s.e = FUNC1(cs->cap - 1);  /* ends here */
  return n;
}