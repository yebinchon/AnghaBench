#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  TTree ;
typedef  int /*<<< orphan*/  CompileState ;

/* Variables and functions */
 int /*<<< orphan*/  IBackCommit ; 
 int /*<<< orphan*/  IBehind ; 
 int /*<<< orphan*/  IChoice ; 
 int /*<<< orphan*/  IFail ; 
 int MAXBEHIND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fullset ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6 (CompileState *compst, TTree *tree, int tt) {
  int n = FUNC3(tree);
  if (n >= 0 && n <= MAXBEHIND && !FUNC4(tree)) {
    FUNC2(compst, tree, 0, tt, fullset);
    if (n > 0)
      FUNC0(compst, IBehind, n);
  }
  else {  /* default: Choice L1; p1; BackCommit L2; L1: Fail; L2: */
    int pcommit;
    int pchoice = FUNC1(compst, IChoice);
    FUNC2(compst, tree, 0, tt, fullset);
    pcommit = FUNC1(compst, IBackCommit);
    FUNC5(compst, pchoice);
    FUNC0(compst, IFail, 0);
    FUNC5(compst, pcommit);
  }
}