#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {int key; } ;
typedef  TYPE_1__ TTree ;

/* Variables and functions */
 int /*<<< orphan*/  Carg ; 
 int SHRT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3 (lua_State *L) {
  int n = (int)FUNC1(L, 1);
  TTree *tree = FUNC2(L, Carg);
  tree->key = n;
  FUNC0(L, 0 < n && n <= SHRT_MAX, 1, "invalid argument index");
  return 1;
}