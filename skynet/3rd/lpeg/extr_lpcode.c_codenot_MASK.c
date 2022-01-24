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
typedef  int /*<<< orphan*/  Charset ;

/* Variables and functions */
 int /*<<< orphan*/  IChoice ; 
 int /*<<< orphan*/  IFail ; 
 int /*<<< orphan*/  IFailTwice ; 
 int /*<<< orphan*/  NOINST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  fullset ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC7 (CompileState *compst, TTree *tree) {
  Charset st;
  int e = FUNC4(tree, fullset, &st);
  int test = FUNC3(compst, &st, e);
  if (FUNC5(tree))  /* test (fail(p1)) -> L1; fail; L1:  */
    FUNC0(compst, IFail, 0);
  else {
    /* test(fail(p))-> L1; choice L1; <p>; failtwice; L1:  */
    int pchoice = FUNC1(compst, IChoice);
    FUNC2(compst, tree, 0, NOINST, fullset);
    FUNC0(compst, IFailTwice, 0);
    FUNC6(compst, pchoice);
  }
  FUNC6(compst, test);
}