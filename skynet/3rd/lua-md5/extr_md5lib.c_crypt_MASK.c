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

/* Variables and functions */
 size_t BLOCKSIZE ; 
 int /*<<< orphan*/  MAXKEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,size_t,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,size_t,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,size_t) ; 

__attribute__((used)) static int FUNC8 (lua_State *L) {
  size_t lmsg;
  const char *msg = FUNC3(L, 1, &lmsg);
  size_t lseed;
  const char *seed;
  int lblock;
  char block[BLOCKSIZE+MAXKEY];
  FUNC0(L);
  seed = FUNC3(L, 3, &lseed);
  if (lseed > BLOCKSIZE)
    FUNC4(L, "seed too long (> %d)", BLOCKSIZE);
  /* put seed and seed length at the beginning of result */
  block[0] = (char)lseed;
  FUNC7(block+1, seed, lseed);
  FUNC6(L, block, lseed+1);  /* to concat with result */
  lblock = FUNC2(L, seed, lseed, block);
  FUNC1(L, msg, lmsg, block, lblock);
  FUNC5(L, 2);
  return 1;
}