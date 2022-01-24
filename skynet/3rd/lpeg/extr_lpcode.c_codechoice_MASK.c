#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ tag; } ;
typedef  TYPE_1__ TTree ;
typedef  int /*<<< orphan*/  CompileState ;
typedef  int /*<<< orphan*/  Charset ;

/* Variables and functions */
 int /*<<< orphan*/  IChoice ; 
 int /*<<< orphan*/  ICommit ; 
 int /*<<< orphan*/  IJmp ; 
 int /*<<< orphan*/  IPartialCommit ; 
 int NOINST ; 
 scalar_t__ TTrue ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int,int,int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* fullset ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC7 (CompileState *compst, TTree *p1, TTree *p2, int opt,
                        const Charset *fl) {
  int emptyp2 = (p2->tag == TTrue);
  Charset cs1, cs2;
  int e1 = FUNC4(p1, fullset, &cs1);
  if (FUNC5(p1) ||
      (!e1 && (FUNC4(p2, fl, &cs2), FUNC3(&cs1, &cs2)))) {
    /* <p1 / p2> == test (fail(p1)) -> L1 ; p1 ; jmp L2; L1: p2; L2: */
    int test = FUNC2(compst, &cs1, 0);
    int jmp = NOINST;
    FUNC1(compst, p1, 0, test, fl);
    if (!emptyp2)
      jmp = FUNC0(compst, IJmp); 
    FUNC6(compst, test);
    FUNC1(compst, p2, opt, NOINST, fl);
    FUNC6(compst, jmp);
  }
  else if (opt && emptyp2) {
    /* p1? == IPartialCommit; p1 */
    FUNC6(compst, FUNC0(compst, IPartialCommit));
    FUNC1(compst, p1, 1, NOINST, fullset);
  }
  else {
    /* <p1 / p2> == 
        test(first(p1)) -> L1; choice L1; <p1>; commit L2; L1: <p2>; L2: */
    int pcommit;
    int test = FUNC2(compst, &cs1, e1);
    int pchoice = FUNC0(compst, IChoice);
    FUNC1(compst, p1, emptyp2, test, fullset);
    pcommit = FUNC0(compst, ICommit);
    FUNC6(compst, pchoice);
    FUNC6(compst, test);
    FUNC1(compst, p2, opt, NOINST, fl);
    FUNC6(compst, pcommit);
  }
}