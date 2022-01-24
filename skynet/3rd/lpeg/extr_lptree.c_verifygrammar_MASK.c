#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_9__ {scalar_t__ tag; scalar_t__ key; } ;
typedef  TYPE_1__ TTree ;

/* Variables and functions */
 int MAXRULES ; 
 scalar_t__ TRule ; 
 scalar_t__ TTrue ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 TYPE_1__* FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8 (lua_State *L, TTree *grammar) {
  int passed[MAXRULES];
  TTree *rule;
  /* check left-recursive rules */
  for (rule = FUNC4(grammar); rule->tag == TRule; rule = FUNC5(rule)) {
    if (rule->key == 0) continue;  /* unused rule */
    FUNC7(L, FUNC4(rule), passed, 0, 0);
  }
  FUNC0(rule->tag == TTrue);
  /* check infinite loops inside rules */
  for (rule = FUNC4(grammar); rule->tag == TRule; rule = FUNC5(rule)) {
    if (rule->key == 0) continue;  /* unused rule */
    if (FUNC1(FUNC4(rule))) {
      FUNC3(L, -1, rule->key);  /* get rule's key */
      FUNC2(L, "empty loop in rule '%s'", FUNC6(L, -1));
    }
  }
  FUNC0(rule->tag == TTrue);
}