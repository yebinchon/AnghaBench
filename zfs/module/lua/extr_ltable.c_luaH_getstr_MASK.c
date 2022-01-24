#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Table ;
struct TYPE_6__ {scalar_t__ tt; } ;
struct TYPE_7__ {TYPE_1__ tsv; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_2__ TString ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 scalar_t__ LUA_TSHRSTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  const* luaO_nilobject ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

const TValue *FUNC8 (Table *t, TString *key) {
  Node *n = FUNC4(t, key);
  FUNC5(key->tsv.tt == LUA_TSHRSTR);
  do {  /* check whether `key' is somewhere in the chain */
    if (FUNC7(FUNC1(n)) && FUNC0(FUNC6(FUNC1(n)), key))
      return FUNC3(n);  /* that's it */
    else n = FUNC2(n);
  } while (n);
  return luaO_nilobject;
}