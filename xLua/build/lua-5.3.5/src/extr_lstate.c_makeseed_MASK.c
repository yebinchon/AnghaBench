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
typedef  unsigned int lua_State ;
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,unsigned int*) ; 
 unsigned int* luaO_nilobject ; 
 unsigned int FUNC1 (char*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned int lua_newstate ; 
 unsigned int FUNC3 () ; 

__attribute__((used)) static unsigned int FUNC4 (lua_State *L) {
  char buff[4 * sizeof(size_t)];
  unsigned int h = FUNC3();
  int p = 0;
  FUNC0(buff, p, L);  /* heap variable */
  FUNC0(buff, p, &h);  /* local variable */
  FUNC0(buff, p, luaO_nilobject);  /* global variable */
  FUNC0(buff, p, &lua_newstate);  /* public function */
  FUNC2(p == sizeof(buff));
  return FUNC1(buff, p, h);
}