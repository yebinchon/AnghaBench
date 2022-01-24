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
struct TYPE_3__ {int /*<<< orphan*/  memerrmsg; int /*<<< orphan*/ ** strcache; } ;
typedef  TYPE_1__ global_State ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MEMERRMSG ; 
 int /*<<< orphan*/  MINSTRTABSIZE ; 
 int STRCACHE_M ; 
 int STRCACHE_N ; 
 scalar_t__ STRSEED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6 (lua_State *L) {
  global_State *g = FUNC0(L);
  int i, j;
  if (STRSEED == 0) {
    STRSEED = FUNC4(L);
  }
  FUNC3(L, MINSTRTABSIZE);  /* initial size of string table */
  /* pre-create memory-error message */
  g->memerrmsg = FUNC2(L, MEMERRMSG);
  FUNC1(L, FUNC5(g->memerrmsg));  /* it should never be collected */
  for (i = 0; i < STRCACHE_N; i++)  /* fill cache with valid strings */
    for (j = 0; j < STRCACHE_M; j++)
      g->strcache[i][j] = g->memerrmsg;
}