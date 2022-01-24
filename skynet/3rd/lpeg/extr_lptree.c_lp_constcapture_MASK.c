#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_9__ {int ps; } ;
struct TYPE_10__ {void* key; TYPE_1__ u; int /*<<< orphan*/  tag; int /*<<< orphan*/  cap; } ;
typedef  TYPE_2__ TTree ;

/* Variables and functions */
 int /*<<< orphan*/  Cconst ; 
 int /*<<< orphan*/  Cgroup ; 
 int /*<<< orphan*/  TCapture ; 
 int /*<<< orphan*/  TSeq ; 
 int /*<<< orphan*/  TTrue ; 
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC7 (TYPE_2__*) ; 
 TYPE_2__* FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC9 (lua_State *L) {
  int i;
  int n = FUNC2(L);  /* number of values */
  if (n == 0)  /* no values? */
    FUNC5(L, TTrue);  /* no capture */
  else if (n == 1)
    FUNC3(L, Cconst, 1);  /* single constant capture */
  else {  /* create a group capture with all values */
    TTree *tree = FUNC6(L, 1 + 3 * (n - 1) + 2);
    FUNC4(L, n);  /* create a 'ktable' for new tree */
    tree->tag = TCapture;
    tree->cap = Cgroup;
    tree->key = 0;
    tree = FUNC7(tree);
    for (i = 1; i <= n - 1; i++) {
      tree->tag = TSeq;
      tree->u.ps = 3;  /* skip TCapture and its sibling */
      FUNC1(FUNC7(tree), Cconst);
      FUNC7(tree)->key = FUNC0(L, i);
      tree = FUNC8(tree);
    }
    FUNC1(tree, Cconst);
    tree->key = FUNC0(L, i);
  }
  return 1;
}