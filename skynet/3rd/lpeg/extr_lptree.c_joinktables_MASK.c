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
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  TTree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC8 (lua_State *L, int p1, TTree *t2, int p2) {
  int n1, n2;
  FUNC5(L, p1);  /* get ktables */
  FUNC5(L, p2);
  n1 = FUNC2(L, -2);
  n2 = FUNC2(L, -1);
  if (n1 == 0 && n2 == 0)  /* are both tables empty? */
    FUNC6(L, 2);  /* nothing to be done; pop tables */
  else if (n2 == 0 || FUNC3(L, -2, -1)) {  /* 2nd table empty or equal? */
    FUNC6(L, 1);  /* pop 2nd table */
    FUNC7(L, -2);  /* set 1st ktable into new pattern */
  }
  else if (n1 == 0) {  /* first table is empty? */
    FUNC7(L, -3);  /* set 2nd table into new pattern */
    FUNC6(L, 1);  /* pop 1st table */
  }
  else {
    FUNC4(L, n1 + n2, 0);  /* create ktable for new pattern */
    /* stack: new p; ktable p1; ktable p2; new ktable */
    FUNC0(L, -3, -1);  /* from p1 into new ktable */
    FUNC0(L, -2, -1);  /* from p2 into new ktable */
    FUNC7(L, -4);  /* new ktable becomes 'p' environment */
    FUNC6(L, 2);  /* pop other ktables */
    FUNC1(t2, n1);  /* correction for indices from p2 */
  }
}