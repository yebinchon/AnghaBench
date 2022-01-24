#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_9__ {scalar_t__ tag; int /*<<< orphan*/  key; } ;
struct TYPE_7__ {int ps; } ;
struct TYPE_8__ {int /*<<< orphan*/  key; TYPE_1__ u; int /*<<< orphan*/  tag; } ;
typedef  TYPE_2__ TTree ;

/* Variables and functions */
 int /*<<< orphan*/  TCall ; 
 scalar_t__ TRule ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 TYPE_3__* FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC8 (lua_State *L, int postable, TTree *g, TTree *t) {
  int n;
  FUNC4(L, -1, t->key);  /* get rule's name */
  FUNC2(L, postable);  /* query name in position table */
  n = FUNC5(L, -1);  /* get (absolute) position */
  FUNC3(L, 1);  /* remove position */
  if (n == 0) {  /* no position? */
    FUNC4(L, -1, t->key);  /* get rule's name again */
    FUNC1(L, "rule '%s' undefined in given grammar", FUNC7(L, -1));
  }
  t->tag = TCall;
  t->u.ps = n - (t - g);  /* position relative to node */
  FUNC0(FUNC6(t)->tag == TRule);
  FUNC6(t)->key = t->key;  /* fix rule's key */
}