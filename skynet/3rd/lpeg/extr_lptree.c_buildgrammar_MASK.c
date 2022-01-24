#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_12__ {int ps; } ;
struct TYPE_13__ {int cap; int /*<<< orphan*/  tag; TYPE_1__ u; scalar_t__ key; } ;
typedef  TYPE_2__ TTree ;

/* Variables and functions */
 int /*<<< orphan*/  TRule ; 
 int /*<<< orphan*/  TTrue ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 TYPE_2__* FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5 (lua_State *L, TTree *grammar, int frule, int n) {
  int i;
  TTree *nd = FUNC3(grammar);  /* auxiliary pointer to traverse the tree */
  for (i = 0; i < n; i++) {  /* add each rule into new tree */
    int ridx = frule + 2*i + 1;  /* index of i-th rule */
    int rulesize;
    TTree *rn = FUNC0(L, ridx, &rulesize);
    nd->tag = TRule;
    nd->key = 0;  /* will be fixed when rule is used */
    nd->cap = i;  /* rule number */
    nd->u.ps = rulesize + 1;  /* point to next rule */
    FUNC1(FUNC3(nd), rn, rulesize * sizeof(TTree));  /* copy rule */
    FUNC2(L, ridx, FUNC3(nd));  /* merge its ktable into new one */
    nd = FUNC4(nd);  /* move to next rule */
  }
  nd->tag = TTrue;  /* finish list of rules */
}