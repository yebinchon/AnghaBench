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
struct TYPE_10__ {int tag; TYPE_1__ u; } ;
typedef  TYPE_2__ TTree ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static TTree *FUNC6 (lua_State *L, int tag) {
  int s1, s2;
  TTree *tree1 = FUNC0(L, 1, &s1);
  TTree *tree2 = FUNC0(L, 2, &s2);
  TTree *tree = FUNC3(L, 1 + s1 + s2);  /* create new tree */
  tree->tag = tag;
  tree->u.ps =  1 + s1;
  FUNC2(FUNC4(tree), tree1, s1 * sizeof(TTree));
  FUNC2(FUNC5(tree), tree2, s2 * sizeof(TTree));
  FUNC1(L, 1, FUNC5(tree), 2);
  return tree;
}