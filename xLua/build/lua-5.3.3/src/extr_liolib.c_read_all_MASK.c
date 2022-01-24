#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  luaL_Buffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t LUAL_BUFFERSIZE ; 
 size_t FUNC0 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5 (lua_State *L, FILE *f) {
  size_t nr;
  luaL_Buffer b;
  FUNC2(L, &b);
  do {  /* read file in chunks of LUAL_BUFFERSIZE bytes */
    char *p = FUNC3(&b);
    nr = FUNC0(p, sizeof(char), LUAL_BUFFERSIZE, f);
    FUNC1(&b, nr);
  } while (nr == LUAL_BUFFERSIZE);
  FUNC4(&b);  /* close buffer */
}