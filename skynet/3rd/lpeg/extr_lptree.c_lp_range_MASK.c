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
typedef  int byte ;
typedef  int /*<<< orphan*/  TTree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6 (lua_State *L) {
  int arg;
  int top = FUNC2(L);
  TTree *tree = FUNC3(L);
  for (arg = 1; arg <= top; arg++) {
    int c;
    size_t l;
    const char *r = FUNC1(L, arg, &l);
    FUNC0(L, l == 2, arg, "range must have two characters");
    for (c = (byte)r[0]; c <= (byte)r[1]; c++)
      FUNC4(FUNC5(tree), c);
  }
  return 1;
}