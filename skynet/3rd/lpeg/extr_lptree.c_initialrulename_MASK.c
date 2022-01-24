#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {int key; } ;
typedef  int /*<<< orphan*/  TTree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4 (lua_State *L, TTree *grammar, int frule) {
  if (FUNC3(grammar)->key == 0) {  /* initial rule is not referenced? */
    int n = FUNC1(L, -1) + 1;  /* index for name */
    FUNC0(L, frule);  /* rule's name */
    FUNC2(L, -2, n);  /* ktable was on the top of the stack */
    FUNC3(grammar)->key = n;
  }
}