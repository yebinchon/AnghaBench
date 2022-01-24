#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_10__ {int n; } ;
struct TYPE_11__ {TYPE_1__ u; int /*<<< orphan*/  tag; } ;
typedef  TYPE_2__ TTree ;

/* Variables and functions */
 int MAXRULES ; 
 int /*<<< orphan*/  TGrammar ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static TTree *FUNC14 (lua_State *L, int arg) {
  int treesize;
  int frule = FUNC5(L) + 2;  /* position of first rule's key */
  int n = FUNC1(L, arg, &treesize);
  TTree *g = FUNC11(L, treesize);
  FUNC4(L, n <= MAXRULES, arg, "grammar has too many rules");
  g->tag = TGrammar;  g->u.n = n;
  FUNC8(L);  /* create 'ktable' */
  FUNC10(L, -2);
  FUNC0(L, g, frule, n);
  FUNC6(L, -1);  /* get 'ktable' for new tree */
  FUNC2(L, frule - 1, g, FUNC12(g));
  FUNC3(L, g, frule);
  FUNC13(L, g);
  FUNC9(L, 1);  /* remove 'ktable' */
  FUNC7(L, -(n * 2 + 2));  /* move new table to proper position */
  FUNC9(L, n * 2 + 1);  /* remove position table + rule pairs */
  return g;  /* new table at the top of the stack */
}