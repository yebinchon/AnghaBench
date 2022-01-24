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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,size_t,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,size_t*) ; 

__attribute__((used)) static int FUNC4 (lua_State *L) {
  size_t lcyphertext;
  const char *cyphertext = FUNC3(L, 1, &lcyphertext);
  size_t lseed = cyphertext[0];
  const char *seed = cyphertext+1;
  int lblock;
  char block[BLOCKSIZE+MAXKEY];
  FUNC2(L, lcyphertext >= lseed+1 && lseed <= BLOCKSIZE, 1,
                 "invalid cyphered string");
  cyphertext += lseed+1;
  lcyphertext -= lseed+1;
  lblock = FUNC1(L, seed, lseed, block);
  FUNC0(L, cyphertext, lcyphertext, block, lblock);
  return 1;
}