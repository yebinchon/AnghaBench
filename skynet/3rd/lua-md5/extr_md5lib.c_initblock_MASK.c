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
 int BLOCKSIZE ; 
 size_t MAXKEY ; 
 char* FUNC0 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4 (lua_State *L, const char *seed, int lseed, char *block) {
  size_t lkey;
  const char *key = FUNC0(L, 2, &lkey);
  if (lkey > MAXKEY)
    FUNC1(L, "key too long (> %d)", MAXKEY);
  FUNC3(block, 0, BLOCKSIZE);
  FUNC2(block, seed, lseed);
  FUNC2(block+BLOCKSIZE, key, lkey);
  return (int)lkey+BLOCKSIZE;
}