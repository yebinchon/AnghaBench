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

/* Variables and functions */
 int BLOCKSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static void FUNC5 (lua_State *L, const char *msg, size_t lmsg,
                                      char *block, int lblock) {
  luaL_Buffer b;
  FUNC1(L, &b);
  while (lmsg > 0) {
    char code[BLOCKSIZE];
    int i;
    FUNC3(block, lblock, code);
    for (i=0; i<BLOCKSIZE && lmsg > 0; i++, lmsg--)
      code[i] ^= *msg++;
    FUNC0(&b, code, i); 
    FUNC4(block, code, i); /* update seed */
  }
  FUNC2(&b);
}