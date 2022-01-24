#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  cs; } ;
typedef  int /*<<< orphan*/  TTree ;
typedef  int /*<<< orphan*/  CompileState ;
typedef  TYPE_1__ Charset ;

/* Variables and functions */
 int /*<<< orphan*/  IChoice ; 
 int /*<<< orphan*/  IJmp ; 
 int /*<<< orphan*/  IPartialCommit ; 
 int /*<<< orphan*/  ISpan ; 
 int NOINST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  fullset ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC12 (CompileState *compst, TTree *tree, int opt,
                     const Charset *fl) {
  Charset st;
  if (FUNC11(tree, &st)) {
    FUNC1(compst, ISpan, 0);
    FUNC0(compst, st.cs);
  }
  else {
    int e1 = FUNC6(tree, fullset, &st);
    if (FUNC8(tree) || (!e1 && FUNC5(&st, fl))) {
      /* L1: test (fail(p1)) -> L2; <p>; jmp L1; L2: */
      int jmp;
      int test = FUNC4(compst, &st, 0);
      FUNC3(compst, tree, 0, test, fullset);
      jmp = FUNC2(compst, IJmp);
      FUNC9(compst, test);
      FUNC10(compst, jmp, test);
    }
    else {
      /* test(fail(p1)) -> L2; choice L2; L1: <p>; partialcommit L1; L2: */
      /* or (if 'opt'): partialcommit L1; L1: <p>; partialcommit L1; */
      int commit, l2;
      int test = FUNC4(compst, &st, e1);
      int pchoice = NOINST;
      if (opt)
        FUNC9(compst, FUNC2(compst, IPartialCommit));
      else
        pchoice = FUNC2(compst, IChoice);
      l2 = FUNC7(compst);
      FUNC3(compst, tree, 0, NOINST, fullset);
      commit = FUNC2(compst, IPartialCommit);
      FUNC10(compst, commit, l2);
      FUNC9(compst, pchoice);
      FUNC9(compst, test);
    }
  }
}