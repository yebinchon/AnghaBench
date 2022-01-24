#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_17__ {void* tag; } ;
struct TYPE_15__ {int ps; } ;
struct TYPE_16__ {TYPE_1__ u; void* tag; } ;
typedef  TYPE_2__ TTree ;

/* Variables and functions */
 void* TChoice ; 
 void* TRep ; 
 void* TTrue ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__*,int) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 TYPE_2__* FUNC7 (TYPE_2__*,TYPE_2__*,int) ; 
 TYPE_2__* FUNC8 (TYPE_2__*) ; 
 TYPE_3__* FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC10 (lua_State *L) {
  int size1;
  int n = (int)FUNC2(L, 2);
  TTree *tree1 = FUNC1(L, 1, &size1);
  if (n >= 0) {  /* seq tree1 (seq tree1 ... (seq tree1 (rep tree1))) */
    TTree *tree = FUNC5(L, (n + 1) * (size1 + 1));
    if (FUNC6(tree1))
      FUNC3(L, "loop body may accept empty string");
    while (n--)  /* repeat 'n' times */
      tree = FUNC7(tree, tree1, size1);
    tree->tag = TRep;
    FUNC4(FUNC8(tree), tree1, size1 * sizeof(TTree));
  }
  else {  /* choice (seq tree1 ... choice tree1 true ...) true */
    TTree *tree;
    n = -n;
    /* size = (choice + seq + tree1 + true) * n, but the last has no seq */
    tree = FUNC5(L, n * (size1 + 3) - 1);
    for (; n > 1; n--) {  /* repeat (n - 1) times */
      tree->tag = TChoice; tree->u.ps = n * (size1 + 3) - 2;
      FUNC9(tree)->tag = TTrue;
      tree = FUNC8(tree);
      tree = FUNC7(tree, tree1, size1);
    }
    tree->tag = TChoice; tree->u.ps = size1 + 1;
    FUNC9(tree)->tag = TTrue;
    FUNC4(FUNC8(tree), tree1, size1 * sizeof(TTree));
  }
  FUNC0(L, 1);
  return 1;
}