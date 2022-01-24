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
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_7__ {int n; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
typedef  TYPE_2__ TTree ;

/* Variables and functions */
 int MAXBEHIND ; 
 int /*<<< orphan*/  TBehind ; 
 int FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,char*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5 (lua_State *L) {
  TTree *tree;
  TTree *tree1 = FUNC1(L, 1, NULL);
  int n = FUNC0(tree1);
  FUNC3(L, n >= 0, 1, "pattern may not have fixed length");
  FUNC3(L, !FUNC2(tree1), 1, "pattern have captures");
  FUNC3(L, n <= MAXBEHIND, 1, "pattern too long to look behind");
  tree = FUNC4(L, TBehind);
  tree->u.n = n;
  return 1;
}